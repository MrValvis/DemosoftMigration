using System;
using System.Data;
using System.Data.SqlClient;

namespace DemoSoftMigration.Pages
{
    public partial class HistorysGR : System.Web.UI.Page
    {
        long OrderID;
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderID = Convert.ToInt64(Session["OrderID"]);

            //This line is used in item menu
            GridViewFeaturesHelper.SetupGlobalGridViewBehavior(ASPxGridViewData);

            #region Datagrid population
            DataSet UserInfoFromDB = FillTableInfo();
            ASPxGridViewData.AutoGenerateColumns = true;
            ASPxGridViewData.DataSource = UserInfoFromDB.Tables[0];
            ASPxGridViewData.DataBind();
            #endregion
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

        public DataSet FillTableInfo()
        {
            SqlConnection ConnectionString = CreateConnectionstring();
            string Query = $"SELECT * FROM [dbo].[History] where [ORDERID]={OrderID};";
            SqlDataAdapter DataAdapter = new SqlDataAdapter(Query, CreateConnectionstring());
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(DataAdapter);
            DataSet DataSetVariable = new DataSet();
            DataAdapter.Fill(DataSetVariable);
            return DataSetVariable;
        }
        #endregion

        protected void RedirectToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormGR.aspx");
        }

        protected void ChangeLanguageToEnglish_Click(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }

    }
}