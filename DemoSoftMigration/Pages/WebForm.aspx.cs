using System;
using System.Data;
using System.Data.SqlClient;
using DevExpress.Export;
using DevExpress.Web;
using DevExpress.XtraPrinting;


namespace DemoSoftMigration.Pages
{
    public partial class WebForm : System.Web.UI.Page
    {
        SqlConnection ConnectionString;
        SqlCommand Command;
        string SQLMessageResult;
        string SQLHeaderResult;
        string Language="English";

        //string Language = LanguageHiddenField.Value;


        protected void Page_Load(object sender, EventArgs e)
        {
            //This line is used in item menu
            GridViewFeaturesHelper.SetupGlobalGridViewBehavior(ASPxGridViewData);

            #region Datagrid population
            DataSet UserInfoFromDB = FillTableInfo();
            ASPxGridViewData.AutoGenerateColumns = true;
            ASPxGridViewData.DataSource = UserInfoFromDB.Tables[0];
            ASPxGridViewData.DataBind();
            #endregion
        }

        protected void Grid_ToolbarItemClick(object source, ASPxGridToolbarItemClickEventArgs e)
        {
            ASPxGridView grid = (ASPxGridView)source;
            switch (e.Item.Name)
            {
                case "CustomExportToXLS":
                    grid.ExportXlsToResponse(new XlsExportOptionsEx { ExportType = ExportType.WYSIWYG });
                    break;
                case "CustomExportToXLSX":
                    grid.ExportXlsxToResponse(new XlsxExportOptionsEx { ExportType = ExportType.WYSIWYG });
                    break;
                default:
                    break;
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void ModifyButton_Click(object sender, EventArgs e)
        {
            DatabaseActions(SelectedAction: "Modify",Language);
        }

        protected void InspectButton_Click(object sender, EventArgs e)
        {
            //DatabaseActions(type: "Inspect");
        }

        protected void RemoveButton_Click(object sender, EventArgs e)
        {
            GetSelectedRowData();
            //DatabaseActions(type: "Delete");
        }

        protected void RefreshButton_Click(object sender, EventArgs e)
        {
            GetSelectedRowData();
        }

        protected void HistoryButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("DataActionPage.aspx");
        }

        protected void ExportDropDown_TextChanged(object sender, EventArgs e)
        {
            //string ExportPath = @"C:\Users\CODEX\Desktop\ExportedData";
            //DialogResult Result;

            //if (LanguageChange.Text == "Greek")
            //{
            //    Result = MessageBox.Show($"Are you sure you want to export the data in : {ExportImageCombo.SelectedItem} format\nat the {ExportPath} ", "Export data type confirmation", MessageBoxButtons.YesNo);
            //}
            //else
            //{
            //    Result = MessageBox.Show($"Είσαστε σίγουροι οτι θέλετε να εξάγετε τα δεδομένα στην μορφή {ExportImageCombo.SelectedItem} \nστην τοποθεσία {ExportPath}", "Επιβεβαίωση τύπου εξαγωγής δεδομένων.", MessageBoxButtons.YesNo);
            //}

            //if (Result == DialogResult.Yes)
            //{
            //    switch (ExportImageCombo.Text)
            //    {
            //        case "PDF":
            //            {
            //                DatagridControl.ExportToPdf(ExportPath + ".PDF");
            //                break;
            //            }
            //        case "XLS (Data Aware)":
            //            {
            //                DatagridControl.ExportToXls(ExportPath + ".XLS");
            //                break;
            //            }
            //        case "XLS (WYSIWYG)":
            //            {
            //                DatagridControl.ExportToPdf(ExportPath + ".XLS");
            //                break;
            //            }
            //        case "XLSX (Data Aware)":
            //            {
            //                DatagridControl.ExportToXlsx(ExportPath + ".XLSX");
            //                break;
            //            }
            //        case "RTF":
            //            {
            //                DatagridControl.ExportToRtf(ExportPath + ".RTF");
            //                break;
            //            }
            //        case "CSV":
            //            {
            //                DatagridControl.ExportToCsv(ExportPath + ".CSV");
            //                break;
            //            }
            //        case "DOCX":
            //            {
            //                DatagridControl.ExportToDocx(ExportPath + ".DOCX");
            //                break;
            //            }
            //        case "IMG":
            //            {
            //                // Create a PrintingSystem component.
            //                PrintingSystem ps = new PrintingSystem();
            //                // Create a link that will print a control.
            //                PrintableComponentLink link = new PrintableComponentLink(ps);
            //                // Specify the control to be printed.
            //                link.Component = DatagridControl;
            //                // Generate a report.
            //                link.CreateDocument();
            //                // Export the report to a PDF file.
            //                link.PrintingSystem.ExportToPdf(ExportPath + ".PDF");
            //                break;
            //            }
            //        case "HTML":
            //            {
            //                DatagridControl.ExportToHtml(ExportPath + ".HTML");
            //                break;
            //            }
            //        case "MHT":
            //            {
            //                DatagridControl.ExportToMht(ExportPath + ".MHT");
            //                break;
            //            }
            //    }
            //}
        }

        #region Get selected row data
        private void GetSelectedRowData()
        {
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

            try {
                if (OrderID[0].ToString() == "") {
                    // it will create out of bound exception if there is no selected row, it will be modified in patch
                }
            ClientScript.RegisterStartupScript(GetType(), "testalert", "alert('" + 
                OrderID[0].ToString()+
                CustomerID[0].ToString() +
                EmployeeID[0].ToString()+
                OrderDate[0].ToString()+
                RequiredDate[0].ToString() +
                ShippedDate[0].ToString() +
                ShipVia[0].ToString() +
                Freight[0].ToString() +
                ShipName[0].ToString() +
                ShipAddress[0].ToString() +
                ShipCity[0].ToString() +
                ShipRegion[0].ToString() +
                ShipPostalCode[0].ToString() +
                ShipCountry[0].ToString()+
                "');", true);
            }
            catch(Exception Error)
            {
                // if user has not selected any entry instead of error he will encounter a messagebox informing him
                if (Language == "English") {
                    ClientScript.RegisterStartupScript(GetType(), "No entry selected!", "alert('No entry has picked!');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "Δεν βρέθηκε επιλεγμένη εγγραφή!", "alert('Δεν έχετε επιλέξει κάποια εγγραφή!');", true);
                }
            }
        }

        private string GetSelectedRowOrderID(){
            var OrderID= ASPxGridViewData.GetSelectedFieldValues("OrderID");
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
                if (Language == "English")
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

        #region
        private  void DatabaseActions(string SelectedAction,string Language)
        {
            switch(SelectedAction){
                case "Add": {
                        Server.Transfer("DataActionPage.aspx?SelectedAction=" + "Add");
                        break; }
                case "Modify": {
                        Server.Transfer("DataActionPage.aspx?SelectedAction=" + "Modify"); // add all the other variables
                        break; }
                case "Inspect": {
                        Server.Transfer("DataActionPage.aspx?SelectedAction=" + "Inspect"); // add all the other variables ALSO Readonly textfields
                        break; }
                case "Delete": {
                        GetSelectedRowOrderID();
                        //RemoveElement(Language,OrderID);
                        break; }
                case "Reload": {
                        break; }
                case "Histroy": {

                        break; }
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

        public DataSet FillTableInfo()
        {
            var Query = "SELECT * FROM [dbo].[orders] ;";
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Query, CreateConnectionstring());
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(DataAdapter);
            DataSet DataSetVariable = new DataSet();
            DataAdapter.Fill(DataSetVariable);
            return DataSetVariable;
        }
        #region Queries
        #region Add new entry
        public void AddNewElement(string Language, string CustomerID, long EmployeeID, DateTime OrderDate, DateTime RequiredDate, DateTime ShippedDate, int ShipVia, decimal Freight, string ShipName, string ShipAddress, string ShipCity, string ShipRegion, long ShipPostalCode, string ShipCountry)
        {

            ConnectionString = CreateConnectionstring();
            //NOCHECK CONSTRAINT is temporarly disabling the foreign key restriction to modify/add a new value to the table
            //CHECK CONSTRAINT is enabling the foreign key restriction of modification of data

            var Query = "ALTER TABLE[dbo].[Orders] NOCHECK CONSTRAINT all;" +

                "Insert into[dbo].[Orders] ([CustomerID], [EmployeeID],[OrderDate],[RequiredDate],[ShippedDate],[ShipVia],[Freight],[ShipName],[ShipAddress],[ShipCity],[ShipRegion],[ShipPostalCode],[ShipCountry]) values(@CustomerID,@EmployeeID,@OrderDate,@RequiredDate,@ShippedDate,@ShipVia,@Freight,@ShipName,@ShipAddress,@ShipCity,@ShipRegion, @ShipPostalCode, @ShipCountry);" +

                "ALTER TABLE[dbo].[Orders] CHECK CONSTRAINT all; " +
                "DECLARE @NewOrderID bigint;" +

                // if the table for modification history exists then just add the data
                "IF (OBJECT_ID('dbo.History', 'U')) IS NOT NULL " +
                        "BEGIN " +
                        // it could be easier if the where clause was based on the Date and time the add was made, but i will stay in the script of northwind without adding additional column
                        "SELECT @NewOrderID = [OrderID] FROM[dbo].[Orders]  WHERE( [CustomerID] = @CustomerID AND [EmployeeID] = @EmployeeID AND [OrderDate] = @OrderDate AND [RequiredDate] = @RequiredDate AND [ShippedDate] = @ShippedDate  AND [ShipVia] = @ShipVia AND [Freight] = @Freight AND [ShipAddress]=@ShipAddress AND [ShipCity] = @ShipCity AND [ShipRegion] = @ShipRegion AND [ShipPostalCode] = @ShipPostalCode AND [ShipCountry] = @ShipCountry );" +

                        "INSERT INTO [dbo].[History] ([DateModified],[Type],[OrderID],[CustomerID], [EmployeeID],[OrderDate],[RequiredDate],[ShippedDate],[ShipVia],[Freight],[ShipName],[ShipAddress],[ShipCity],[ShipRegion],[ShipPostalCode],[ShipCountry]) values(@DateModified,@Type,@NewOrderID,@CustomerID,@EmployeeID,@OrderDate,@RequiredDate,@ShippedDate,@ShipVia,@Freight,@ShipName,@ShipAddress,@ShipCity,@ShipRegion, @ShipPostalCode, @ShipCountry);" +
                        "END " +

                        // if the table for modification history DOES NOT exists then create it and add the data
                        "ELSE " +
                        "Begin " +
                        "SELECT @NewOrderID = [OrderID] FROM[dbo].[Orders]  WHERE( [CustomerID] = @CustomerID AND [EmployeeID] = @EmployeeID AND [OrderDate] = @OrderDate AND [RequiredDate] = @RequiredDate AND [ShippedDate] = @ShippedDate  AND [ShipVia] = @ShipVia AND [Freight] = @Freight AND [ShipAddress]=@ShipAddress AND [ShipCity] = @ShipCity AND [ShipRegion] = @ShipRegion AND [ShipPostalCode] = @ShipPostalCode AND [ShipCountry] = @ShipCountry );" +

                        "INSERT INTO [dbo].[History] ([DateModified],[Type],[OrderID],[CustomerID], [EmployeeID],[OrderDate],[RequiredDate],[ShippedDate],[ShipVia],[Freight],[ShipName],[ShipAddress],[ShipCity],[ShipRegion],[ShipPostalCode],[ShipCountry]) values(@DateModified,@Type,@NewOrderID,@CustomerID,@EmployeeID,@OrderDate,@RequiredDate,@ShippedDate,@ShipVia,@Freight,@ShipName,@ShipAddress,@ShipCity,@ShipRegion, @ShipPostalCode, @ShipCountry);" +

                        "CREATE TABLE [dbo].[History] ([DateModified] Datetime NOT NULL,[Type] NCHAR (15) NULL ,[OrderID] INT NOT NULL,[CustomerID] NCHAR (5) NULL,[EmployeeID] INT NULL,[OrderDate] DATETIME NULL,[RequiredDate] DATETIME NULL,[ShippedDate] DATETIME NULL,[ShipVia] INT NULL,[Freight]  MONEY DEFAULT ((0)) NULL,[ShipName] NVARCHAR (40) NULL,[ShipAddress] NVARCHAR(60) NULL,[ShipCity] NVARCHAR (15) NULL,[ShipRegion] NVARCHAR (15) NULL,[ShipPostalCode] NVARCHAR (10) NULL,[ShipCountry] NVARCHAR (15) NULL); " +
                        "END";

            using (Command = new SqlCommand(Query, ConnectionString))
            {
                Command.Parameters.AddWithValue("@DateModified", DateTime.Now);
                Command.Parameters.AddWithValue("@Type", "Original");
                Command.Parameters.AddWithValue("@CustomerID", CustomerID);
                Command.Parameters.AddWithValue("@EmployeeID", EmployeeID);
                Command.Parameters.AddWithValue("@OrderDate", OrderDate);
                Command.Parameters.AddWithValue("@RequiredDate", RequiredDate);
                Command.Parameters.AddWithValue("@ShippedDate", ShippedDate);
                Command.Parameters.AddWithValue("@ShipVia", ShipVia);
                Command.Parameters.AddWithValue("@Freight", Freight);
                Command.Parameters.AddWithValue("@ShipName", ShipName);
                Command.Parameters.AddWithValue("@ShipAddress", ShipAddress);
                Command.Parameters.AddWithValue("@ShipCity", ShipCity);
                Command.Parameters.AddWithValue("@ShipRegion", ShipRegion);
                Command.Parameters.AddWithValue("@ShipPostalCode", ShipPostalCode);
                Command.Parameters.AddWithValue("@ShipCountry", ShipCountry);

                SqlExecution(Language, ConnectionString, Command);
            }
        }
        #endregion

        #region Modify selected entry
        public void ModifyElement(string Language, long OrderID, string CustomerID, long EmployeeID, DateTime OrderDate, DateTime RequiredDate, DateTime ShippedDate, int ShipVia, decimal Freight, string ShipName, string ShipAddress, string ShipCity, string ShipRegion, long ShipPostalCode, string ShipCountry)
        {
            ConnectionString = CreateConnectionstring();

            string Query = @"ALTER TABLE [dbo].[Orders] NOCHECK CONSTRAINT all;

            UPDATE [dbo].[Orders] SET [CustomerID]=@CustomerID,[EmployeeID]=@EmployeeID,[OrderDate]=@OrderDate,[RequiredDate]=@RequiredDate,[ShippedDate]=@ShippedDate,[ShipVia]=@ShipVia,[Freight]=@Freight,[ShipName]=@ShipName,[ShipAddress]=@ShipName,[ShipCity]=@ShipCity,[ShipRegion]=@ShipRegion,[ShipPostalCode]=@ShipPostalCode,[ShipCountry]=@ShipCountry WHERE ([OrderID]=@OrderID);

            ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT all;

            IF (OBJECT_ID('dbo.History', 'U')) IS NOT NULL " +
                        "BEGIN " +

                        "INSERT INTO [dbo].[History] ([DateModified],[Type],[OrderID],[CustomerID], [EmployeeID],[OrderDate],[RequiredDate],[ShippedDate],[ShipVia],[Freight],[ShipName],[ShipAddress],[ShipCity],[ShipRegion],[ShipPostalCode],[ShipCountry]) values(@DateModified,@Type,@OrderID,@CustomerID,@EmployeeID,@OrderDate,@RequiredDate,@ShippedDate,@ShipVia,@Freight,@ShipName,@ShipAddress,@ShipCity,@ShipRegion, @ShipPostalCode, @ShipCountry);" +

                        "END " +
                        "ELSE " +
                        "Begin " +

                        "CREATE TABLE [dbo].[History] ([DateModified] Datetime NOT NULL,[Type] NCHAR (15) NULL ,[OrderID] INT NOT NULL,[CustomerID] NCHAR (5) NULL,[EmployeeID] INT NULL,[OrderDate] DATETIME NULL,[RequiredDate] DATETIME NULL,[ShippedDate] DATETIME NULL,[ShipVia] INT NULL,[Freight]  MONEY DEFAULT ((0)) NULL,[ShipName] NVARCHAR (40) NULL,[ShipAddress] NVARCHAR(60) NULL,[ShipCity] NVARCHAR (15) NULL,[ShipRegion] NVARCHAR (15) NULL,[ShipPostalCode] NVARCHAR (10) NULL,[ShipCountry] NVARCHAR (15) NULL); " +

                        "INSERT INTO[dbo].[History] ([DateModified],[Type],[OrderID],[CustomerID], [EmployeeID],[OrderDate],[RequiredDate],[ShippedDate],[ShipVia],[Freight],[ShipName],[ShipAddress],[ShipCity],[ShipRegion],[ShipPostalCode],[ShipCountry]) values(@DateModified, @Type, @OrderID, @CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry);" +
                        "END";

            using (Command = new SqlCommand(Query, ConnectionString))
            {
                Command.Parameters.AddWithValue("@DateModified", DateTime.Now);
                Command.Parameters.AddWithValue("@Type", "Modified");
                Command.Parameters.AddWithValue("@OrderID", OrderID);
                Command.Parameters.AddWithValue("@CustomerID", CustomerID);
                Command.Parameters.AddWithValue("@EmployeeID", EmployeeID);
                Command.Parameters.AddWithValue("@OrderDate", OrderDate);
                Command.Parameters.AddWithValue("@RequiredDate", RequiredDate);
                Command.Parameters.AddWithValue("@ShippedDate", ShippedDate);
                Command.Parameters.AddWithValue("@ShipVia", ShipVia);
                Command.Parameters.AddWithValue("@Freight", Freight);
                Command.Parameters.AddWithValue("@ShipName", ShipName);
                Command.Parameters.AddWithValue("@ShipAddress", ShipAddress);
                Command.Parameters.AddWithValue("@ShipCity", ShipCity);
                Command.Parameters.AddWithValue("@ShipRegion", ShipRegion);
                Command.Parameters.AddWithValue("@ShipPostalCode", ShipPostalCode);
                Command.Parameters.AddWithValue("@ShipCountry", ShipCountry);

                SqlExecution(Language, ConnectionString, Command);
            }
        }
        #endregion

        #region Remove selected entry
        public void RemoveElement(string Language, long OrderID)
        {
            ConnectionString = CreateConnectionstring();
            string Query = @"ALTER TABLE [dbo].[Orders] NOCHECK CONSTRAINT all;

            DELETE FROM [dbo].[Orders] WHERE ([OrderID]=@OrderID);

            DELETE FROM [dbo].[History] WHERE ([OrderID]=@OrderID);;

            ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT all;";

            using (Command = new SqlCommand(Query, ConnectionString))
            {
                Command.Parameters.AddWithValue("@OrderID", OrderID);
                SqlExecution(Language, ConnectionString, Command);
            }
        }
        #endregion

        #region populate Modification history of the selected entry
        public DataSet ModificationHistory(string Language, long OrderID)
        {
            ConnectionString = CreateConnectionstring();
            string Query = $"SELECT * FROM [dbo].[History] where [ORDERID]={OrderID};";
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Query, CreateConnectionstring());
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(DataAdapter);
            DataSet DataSetVariable = new DataSet();
            DataAdapter.Fill(DataSetVariable);
            return DataSetVariable;
        }
        #endregion
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
                ClientScript.RegisterStartupScript(GetType(), SQLHeaderResult, "alert('"+ SQLMessageResult + "');", true);
            }
        }
        #endregion
    }
    #endregion

    
}
