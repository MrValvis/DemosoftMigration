using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using DevExpress.Export;
using DevExpress.Web;
using DevExpress.XtraPrinting;


namespace DemoSoftMigration.Pages
{
    public partial class WebForm : System.Web.UI.Page
    {
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
        #endregion
    }

}