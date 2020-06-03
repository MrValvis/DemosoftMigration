using System;

namespace DemoSoftMigration.Pages
{
    public partial class TermsAndPrivacy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Language = Session["Language"].ToString();
            LanguageHiddenField.Value = Language;
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm.aspx");
        }
    }
}