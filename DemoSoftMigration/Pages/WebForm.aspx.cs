using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using DevExpress.Export;
using DevExpress.Web;

namespace DemoSoftMigration.Pages
{
    public partial class WebForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet UserInfoFromDB = FillTableInfo();
            ASPxGridViewData.AutoGenerateColumns = true;
            ASPxGridViewData.DataSource = UserInfoFromDB.Tables[0];
            ASPxGridViewData.DataBind();
        }

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



        public DataSet FillTableInfo(){
            var Query = "SELECT * FROM [dbo].[orders] ;";
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Query, CreateConnectionstring());
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(DataAdapter);
            DataSet DataSetVariable = new DataSet();
            DataAdapter.Fill(DataSetVariable);
            return DataSetVariable;
        }
        #endregion
    }

}