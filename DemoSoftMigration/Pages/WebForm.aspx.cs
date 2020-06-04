using System;
using System.Data;
using System.Data.SqlClient;

namespace DemoSoftMigration.Pages
{
    public partial class WebForm : System.Web.UI.Page
    {
        SqlConnection ConnectionString;
        SqlCommand Command;
        string SQLMessageResult;
        string SQLHeaderResult;

        protected void Page_Load(object sender, EventArgs e)
        {
            LanguageHiddenField.Value = "English";
            //This line is used in item menu
            GridViewFeaturesHelper.SetupGlobalGridViewBehavior(ASPxGridViewData);

            #region Datagrid population
            DataSet UserInfoFromDB = FillTableInfo();
            ASPxGridViewData.AutoGenerateColumns = true;
            ASPxGridViewData.DataSource = UserInfoFromDB.Tables[0];
            ASPxGridViewData.DataBind();
            #endregion
        }


        protected void AddButton_Click(object sender, EventArgs e)
        {
            DatabaseActions(SelectedAction: "Add", LanguageHiddenField.Value.ToString());
        }

        protected void ModifyButton_Click(object sender, EventArgs e)
        {
            DatabaseActions(SelectedAction: "Modify", LanguageHiddenField.Value.ToString());
        }

        protected void InspectButton_Click(object sender, EventArgs e)
        {
            DatabaseActions(SelectedAction: "Inspect", LanguageHiddenField.Value.ToString());
        }

        protected void RemoveButton_Click(object sender, EventArgs e)
        {
            DatabaseActions(SelectedAction: "Delete", LanguageHiddenField.Value.ToString());
        }

        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            DatabaseActions(SelectedAction: "Refresh", LanguageHiddenField.Value.ToString());
        }

        protected void HistoryButton_Click(object sender, EventArgs e)
        {
            DatabaseActions(SelectedAction: "History", LanguageHiddenField.Value.ToString());
        }

        protected void ExportCombobox_SelectedIndexChanged(object sender, EventArgs e)
        {
            ExportTo(ExportCombobox.Text);
        }

        #region Get selected row data
        private string GetSelectedRowOrderID()
        {
            var OrderID = ASPxGridViewData.GetSelectedFieldValues("OrderID");
            try
            {
                if (OrderID[0].ToString() == "")
                {
                    // it will create out of bound exception if there is no selected row, it will be modified in patch
                }
            }
            catch (Exception Error)
            {
                // if user has not selected any entry instead of error he will encounter a messagebox informing him
                if (LanguageHiddenField.Value.ToString() == "English")
                {
                    ClientScript.RegisterStartupScript(GetType(), "No entry selected!", "alert('No entry has picked!');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "Δεν βρέθηκε επιλεγμένη εγγραφή!", "alert('Δεν έχετε επιλέξει κάποια εγγραφή!');", true);
                }
            }
            return OrderID.ToString();
        }
        #endregion

        #region Database actions
        private void DatabaseActions(string SelectedAction, string Language)
        {
            long OrderIdvar;
            ConnectionString = CreateConnectionstring();
            switch (SelectedAction)
            {
                case "Add":
                    {
                        Session["Language"] = LanguageHiddenField.Value.ToString();
                        Session["Type"] = "Add";
                        Server.Transfer("DataActionPage.aspx");
                        break;
                    }
                case "Modify":
                    {
                        PassVariableToPage("Modify");
                        break;
                    }
                case "Inspect":
                    {
                        PassVariableToPage("Inspect");
                        break;
                    }
                case "Delete":
                    {
                        OrderIdvar = GetOrderId();
                        if (OrderIdvar == -1)
                        {
                            NoEntrySelected();
                        }
                        else
                        {
                            RemoveElement(Language, OrderID: OrderIdvar);
                        }
                        break;
                    }
                case "Refresh":
                    {
                        FillTableInfo();
                        break;
                    }
                case "History":
                    {
                        OrderIdvar = GetOrderId();
                        if (OrderIdvar == -1)
                        {
                            NoEntrySelected();
                        }
                        else
                        {
                            Session["Language"] = LanguageHiddenField.Value.ToString();
                            Session["OrderID"] = OrderIdvar.ToString();
                            Server.Transfer("History.aspx");
                        }
                        break;
                    }
            }
        }
        #endregion

        #region Passing variables to child page
        private void PassVariableToPage(string SelectedType)
        {
            var SelectedLanguage = LanguageHiddenField.Value.ToString();
            var OrderID = ASPxGridViewData.GetSelectedFieldValues("OrderID");
            var CustomerID = ASPxGridViewData.GetSelectedFieldValues("CustomerID");
            var EmployeeID = ASPxGridViewData.GetSelectedFieldValues("EmployeeID");
            var OrderDate = ASPxGridViewData.GetSelectedFieldValues("OrderDate");
            var RequiredDate = ASPxGridViewData.GetSelectedFieldValues("RequiredDate");
            var ShippedDate = ASPxGridViewData.GetSelectedFieldValues("ShippedDate");
            var ShipVia = ASPxGridViewData.GetSelectedFieldValues("ShipVia");
            var Freight = ASPxGridViewData.GetSelectedFieldValues("Freight");
            var ShipName = ASPxGridViewData.GetSelectedFieldValues("ShipName");
            var ShipAddress = ASPxGridViewData.GetSelectedFieldValues("ShipAddress");
            var ShipCity = ASPxGridViewData.GetSelectedFieldValues("ShipCity");
            var ShipRegion = ASPxGridViewData.GetSelectedFieldValues("ShipRegion");
            var ShipPostalCode = ASPxGridViewData.GetSelectedFieldValues("ShipPostalCode");
            var ShipCountry = ASPxGridViewData.GetSelectedFieldValues("ShipCountry");


            try
            {
                if (OrderID[0].ToString() == "")
                {
                    // it will create out of bound exception if there is no selected row, it will be modified in patch
                }

                if (SelectedType == "Modify")
                {
                    
                    Session["Type"] = "Modify";
                }
                else
                {
                    Session["Type"] = "Inspect";
                }

                Session["Language"] = SelectedLanguage;
                Session["OrderID"] = OrderID[0].ToString();
                Session["CustomerID"] = CustomerID[0].ToString();
                Session["EmployeeID"] = EmployeeID[0].ToString();
                Session["OrderDate"] = OrderDate[0].ToString();
                Session["RequiredDate"] = RequiredDate[0].ToString();
                Session["ShippedDate"] = ShippedDate[0].ToString();
                Session["ShipVia"] = ShipVia[0].ToString();
                Session["Freight"] = Freight[0].ToString();
                Session["ShipName"] = ShipName[0].ToString();
                Session["ShipAddress"] = ShipAddress[0].ToString();
                Session["ShipCity"] = ShipCity[0].ToString();
                Session["ShipRegion"] = ShipRegion[0].ToString();
                Session["ShipPostalCode"] = ShipPostalCode[0].ToString();
                Session["ShipCountry"] = ShipCountry[0].ToString();
                Server.Transfer("DataActionPage.aspx");
            }
            catch (Exception Error)
            {
                // if user has not selected any entry instead of error he will encounter a messagebox informing him
                if (LanguageHiddenField.Value.ToString() == "English")
                {
                    ClientScript.RegisterStartupScript(GetType(), "No entry selected!", "alert('No entry has picked!');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "Δεν βρέθηκε επιλεγμένη εγγραφή!", "alert('Δεν έχετε επιλέξει κάποια εγγραφή!');", true);
                }
            }
        }
        #endregion

        #region Get OrderID
        private long GetOrderId()
        {
            long OrderId = -1;
            var OrderID = ASPxGridViewData.GetSelectedFieldValues("OrderID");
            try
            {
                if (OrderID[0].ToString() == "")
                {
                    // it will create out of bound exception if there is no selected row, it will be modified in patch
                }
                OrderId = Convert.ToInt64(OrderID[0]);
            }
            catch (Exception Error)
            {
                NoEntrySelected();
            }
            return OrderId;
        }
        #endregion

        #region Export Data
        private void ExportTo(string ExportType)
        {
            switch (ExportType)
            {
                case "PDF":
                    {
                        ASPxGridViewExporterData.WritePdfToResponse("Orders exported" + DateTime.Now.ToString("dd-MM-yyyy"));
                        break;
                    }
                case "XLS (Data Aware)":
                    {
                        ASPxGridViewExporterData.WriteXlsToResponse("Orders exported" + DateTime.Now.ToString("dd-MM-yyyy"));
                        break;
                    }
                case "XLSX (Data Aware)":
                    {
                        ASPxGridViewExporterData.WriteXlsxToResponse("Orders exported" + DateTime.Now.ToString("dd-MM-yyyy"));
                        break;
                    }
                case "RTF":
                    {
                        ASPxGridViewExporterData.WriteRtfToResponse("Orders exported" + DateTime.Now.ToString("dd-MM-yyyy"));
                        break;
                    }
                case "CSV":
                    {
                        ASPxGridViewExporterData.WriteCsvToResponse("Orders exported" + DateTime.Now.ToString("dd-MM-yyyy"));
                        break;
                    }
                case "DOCX":
                    {
                        ASPxGridViewExporterData.WriteDocxToResponse("Orders exported" + DateTime.Now.ToString("dd-MM-yyyy"));
                        break;
                    }
                default: { break; }
            }
        }
        #endregion

        #region No entry selected messange
        private void NoEntrySelected()
        {
            if (LanguageHiddenField.Value.ToString() == "English")
            {
                ClientScript.RegisterStartupScript(GetType(), "No entry selected!", "alert('No entry has picked!');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "Δεν βρέθηκε επιλεγμένη εγγραφή!", "alert('Δεν έχετε επιλέξει κάποια εγγραφή!');", true);
            }
        }
        #endregion

        #region SQL Commands

        #region Create of datasource strings
        private SqlConnection CreateConnectionstring()
        {
            SqlConnectionStringBuilder StringBuilder = new SqlConnectionStringBuilder();
            StringBuilder["Data Source"] = @"(LocalDB)\MSSQLLocalDB";
            StringBuilder["Initial Catalog"] = "Northwind";
            StringBuilder["Integrated Security"] = true;
            StringBuilder["Connection timeout"] = 30;
            SqlConnection Convertion = new SqlConnection(StringBuilder.ToString());
            return Convertion;
        }
        #endregion

        #region Fill table
        private DataSet FillTableInfo()
        {
            var Query = "SELECT * FROM [dbo].[orders] ;";
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Query, CreateConnectionstring());
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(DataAdapter);
            DataSet DataSetVariable = new DataSet();
            DataAdapter.Fill(DataSetVariable);
            return DataSetVariable;
        }
        #endregion

        #region Remove selected entry

        private void RemoveElement(string Language, long OrderID)
        {
            string Query = @"ALTER TABLE [dbo].[Orders] NOCHECK CONSTRAINT ALL;
            ALTER TABLE [dbo].[Order Details] NOCHECK CONSTRAINT ALL;
            DELETE FROM [dbo].[Orders] WHERE ([OrderID]=OrderID);
            DELETE FROM [dbo].[Order Details] WHERE ([OrderID]=OrderID);
            DELETE FROM [dbo].[History] WHERE ([OrderID]=OrderID);
            ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT all;
            ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT all;";

            using (Command = new SqlCommand(Query, ConnectionString))
            {
                Command.Parameters.AddWithValue("@OrderID", OrderID);
                SqlExecution(Language, ConnectionString, Command);
            }
        }
        #endregion

        #region Execute User Commands
        private void SqlExecution(string Language, SqlConnection ConnectionString, SqlCommand Command)
        {
            try
            {
                ConnectionString.Open();
                Command.ExecuteNonQuery();
                Command.Dispose();

                if (Language == "Greek")
                {
                    SQLMessageResult = "Η διαδικασία ολοκληρώθηκε επιτυχώς";
                    SQLHeaderResult = "Επιτυχία!";
                }
                else
                {
                    SQLMessageResult = "The function has completed!";
                    SQLHeaderResult = "Successful!";
                }
            }
            catch (Exception Error)
            {
                if (Language == "Greek")
                {
                    SQLMessageResult = $"Αντιμετωπίστηκε σφάλμα κατά την εκτέλεση της διαδικασίας! \n Κωδικός σφάλματος:{Error.HResult}";
                    SQLHeaderResult = "Βρέθηκε σφάλμα!";
                }
                else
                {
                    SQLMessageResult = $"An error has encountered durning the operation! \n Error Code:{Error.HResult}";
                    SQLHeaderResult = "Error encountered!";
                }
            }
            finally
            {
                if (ConnectionString.State == ConnectionState.Open)
                {
                    ConnectionString.Close();
                }
                ClientScript.RegisterStartupScript(GetType(), SQLHeaderResult, "alert('" + SQLMessageResult + "');", true);
            }
        }

        private class PrintableComponentLink
        {
        }


        #endregion

        #endregion

        protected void RedirectToTerms_Click(object sender, EventArgs e)
        {
            var SelectedLanguage = LanguageHiddenField.Value.ToString();
            Session["Language"] = SelectedLanguage;
            Response.Redirect("Terms.aspx");
        }

        protected void RedirectToPrivacy_Click(object sender, EventArgs e)
        {
            var SelectedLanguage = LanguageHiddenField.Value.ToString();
            Session["Language"] = SelectedLanguage;
            Response.Redirect("Privacy.aspx");
        }
    }
}
