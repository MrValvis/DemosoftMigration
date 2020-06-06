using System;
using System.Data;
using System.Data.SqlClient;

namespace DemoSoftMigration.Pages
{
    public partial class DataActionsGR : System.Web.UI.Page
    {
        string SelectedType;
        string SQLMessageResult;
        string SQLHeaderResult;
        private SqlCommand Command;
        private SqlConnection ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            #region Variable declaration and initialization

            OrderDateTextbox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            RequiredDateTextbox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            ShippedDateTextbox.Text = DateTime.Now.ToString("yyyy-MM-dd");

            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + SelectedType + "');", true);
            var OrderID = "";
            var CustomerID = "";
            var EmployeeID = "";
            var OrderDate = DateTime.Now;
            var RequiredDate = DateTime.Now;
            var ShippedDate = DateTime.Now;
            var ShipVia = "";
            var Freight = "";
            var ShipName = "";
            var ShipAddress = "";
            var ShipCity = "";
            var ShipRegion = "";
            var ShipPostalCode = "";
            var ShipCountry = "";

            #endregion

            if ((SelectedType == "Modify") || (SelectedType == "Inspect"))
            {
                OrderID = Session["OrderID"].ToString();
                CustomerID = Session["CustomerID"].ToString();
                EmployeeID = Session["EmployeeID"].ToString();
                OrderDate = Convert.ToDateTime(Session["OrderDate"]);
                RequiredDate = Convert.ToDateTime(Session["RequiredDate"].ToString());
                ShippedDate = Convert.ToDateTime(Session["ShippedDate"].ToString());
                ShipVia = Session["ShipVia"].ToString();
                Freight = Session["Freight"].ToString();
                ShipName = Session["ShipName"].ToString();
                ShipAddress = Session["ShipAddress"].ToString();
                ShipCity = Session["ShipCity"].ToString();
                ShipRegion = Session["ShipRegion"].ToString();
                ShipPostalCode = Session["ShipPostalCode"].ToString();
                ShipCountry = Session["ShipCountry"].ToString();

                if (SelectedType == "Modify")
                {
                    OrderIdTextbox.Text = OrderID.ToString();
                    OrderIdTextbox.ReadOnly = true;
                    CustomerIdTextbox.Text = CustomerID.ToString();
                    EmployeeIdTextbox.Text = EmployeeID.ToString();
                    OrderDateTextbox.Text = OrderDate.ToString("yyyy-MM-dd");
                    RequiredDateTextbox.Text = RequiredDate.ToString("yyyy-MM-dd");
                    ShippedDateTextbox.Text = ShippedDate.ToString("yyyy-MM-dd");
                    ShipviaTextbox.Text = ShipVia.ToString();
                    FreightTextbox.Text = Freight.ToString();
                    ShipNameTextbox.Text = ShipName.ToString();
                    ShipAddressTextbox.Text = ShipAddress.ToString();
                    ShipCityTextbox.Text = ShipCity.ToString();
                    ShipRegionTextbox.Text = ShipRegion.ToString();
                    ShipPostalTextbox.Text = ShipPostalCode.ToString();
                    ShipCountryTextbox.Text = ShipCountry.ToString();
                }
                else
                {
                    OrderIdTextbox.Text = OrderID.ToString();
                    OrderIdTextbox.ReadOnly = true;
                    CustomerIdTextbox.Text = CustomerID.ToString();
                    CustomerIdTextbox.ReadOnly = true;
                    EmployeeIdTextbox.Text = EmployeeID.ToString();
                    EmployeeIdTextbox.ReadOnly = true;
                    OrderDateTextbox.Text = OrderDate.ToString("yyyy-MM-dd");
                    OrderDateTextbox.ReadOnly = true;
                    RequiredDateTextbox.Text = RequiredDate.ToString("yyyy-MM-dd");
                    RequiredDateTextbox.ReadOnly = true;
                    ShippedDateTextbox.Text = ShippedDate.ToString("yyyy-MM-dd");
                    ShippedDateTextbox.ReadOnly = true;
                    ShipviaTextbox.Text = ShipVia.ToString();
                    ShipviaTextbox.ReadOnly = true;
                    FreightTextbox.Text = Freight.ToString();
                    FreightTextbox.ReadOnly = true;
                    ShipNameTextbox.Text = ShipName.ToString();
                    ShipNameTextbox.ReadOnly = true;
                    ShipAddressTextbox.Text = ShipAddress.ToString();
                    ShipAddressTextbox.ReadOnly = true;
                    ShipCityTextbox.Text = ShipCity.ToString();
                    ShipCityTextbox.ReadOnly = true;
                    ShipRegionTextbox.Text = ShipRegion.ToString();
                    ShipRegionTextbox.ReadOnly = true;
                    ShipPostalTextbox.Text = ShipPostalCode.ToString();
                    ShipPostalTextbox.ReadOnly = true;
                    ShipCountryTextbox.Text = ShipCountry.ToString();
                    ShipCountryTextbox.ReadOnly = true;
                }
            }

        }


        protected void OkButton_Click(object sender, EventArgs e)
        {
            #region Converting textbox data to fit for the database
            string CustomerId = CustomerIdTextbox.Text;
            long OrderId;
            long EmployId = EmployeeIdTextbox.Text == "" ? 0 : Convert.ToInt64(EmployeeIdTextbox.Text);
            DateTime OrdareDate = Convert.ToDateTime(OrderDateTextbox.Text);
            DateTime RequiredDate = Convert.ToDateTime(RequiredDateTextbox.Text);
            DateTime ShippedDate = Convert.ToDateTime(ShippedDateTextbox.Text);
            int ShipVia = ShipviaTextbox.Text == "" ? 0 : Convert.ToInt32(ShipviaTextbox.Text);
            decimal Freight = FreightTextbox.Text == "" ? 0 : Convert.ToDecimal(FreightTextbox.Text);
            string ShipName = ShipNameTextbox.Text;
            string ShipAddress = ShipAddressTextbox.Text;
            string ShipCity = ShipCityTextbox.Text;
            string ShipRegion = ShipRegionTextbox.Text;
            long ShipPostalCode = ShipPostalTextbox.Text == "" ? 0 : Convert.ToInt64(ShipPostalTextbox.Text);
            string ShipCountry = ShipCountryTextbox.Text;
            #endregion

            switch (SelectedType)
            {
                case "Add":
                    {
                        try
                        {
                            AddNewElement(CustomerId, EmployId, OrdareDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry);
                            Response.Redirect("WebForm.aspx");
                        }
                        catch (Exception Error)
                        {
                            ErrorMessage();
                        }
                        break;
                    }
                case "Modify":
                    {
                        try
                        {
                            OrderId = Convert.ToInt64(OrderIdTextbox.Text);
                            ModifyElement(OrderId, CustomerId, EmployId, OrdareDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry);
                            Response.Redirect("WebForm.aspx");
                        }
                        catch (Exception Error)
                        {
                            ErrorMessage();
                        }
                        break;
                    }
                case "Inspect":
                    {
                        Response.Redirect("WebForm.aspx");
                        break;
                    }
            }


            //if (Page.IsValid) { 
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('IsValid');", true);
            //}
            //else { ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Is NOT Valid');", true); }
        }

        protected void RedirectToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormGR.aspx");
        }

        protected void ChangeLanguageToEnglish_Click(object sender, EventArgs e)
        {
            Response.Redirect("DataActionPage.aspx");
        }


        #region No entry selected messange
        private void ErrorMessage()
        {
            ClientScript.RegisterStartupScript(GetType(), "Πρόβλημα κατά την εγγραφή δεδομένων στην βάση δεδομένων", "alert('Οοουπς κάτι δεν πήγε καλά κατά την εγγραφή των δεδομένων στην βάση δεδομένων!');", true);

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

        #region Queries
        #region Add new entry
        public void AddNewElement(string CustomerID, long EmployeeID, DateTime OrderDate, DateTime RequiredDate, DateTime ShippedDate, int ShipVia, decimal Freight, string ShipName, string ShipAddress, string ShipCity, string ShipRegion, long ShipPostalCode, string ShipCountry)
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

                SqlExecution(ConnectionString, Command);
            }
        }
        #endregion

        #region Modify selected entry
        public void ModifyElement(long OrderID, string CustomerID, long EmployeeID, DateTime OrderDate, DateTime RequiredDate, DateTime ShippedDate, int ShipVia, decimal Freight, string ShipName, string ShipAddress, string ShipCity, string ShipRegion, long ShipPostalCode, string ShipCountry)
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

                SqlExecution(ConnectionString, Command);
            }
        }
        #endregion
        #endregion

        #region Execute User Commands
        private void SqlExecution(SqlConnection ConnectionString, SqlCommand Command)
        {
            try
            {
                ConnectionString.Open();
                Command.ExecuteNonQuery();
                Command.Dispose();

                SQLMessageResult = "Η διαδικασία ολοκληρώθηκε επιτυχώς";
                SQLHeaderResult = "Επιτυχία!";

            }
            catch (Exception Error)
            {
                SQLMessageResult = $"Αντιμετωπίστηκε σφάλμα κατά την εκτέλεση της διαδικασίας! \n Κωδικός σφάλματος:{Error.HResult}";
                SQLHeaderResult = "Βρέθηκε σφάλμα!";
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
        #endregion

        #endregion
    }
}