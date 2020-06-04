using System;

namespace DemoSoftMigration.Pages
{
    public partial class Privacy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Language = Session["Language"].ToString();
            LanguageHiddenField.Value = Language;
        }

        protected void RedirectToTerms_Click(object sender, EventArgs e)
        {
            var SelectedLanguage = LanguageHiddenField.Value.ToString();
            Session["Language"] = SelectedLanguage;
            Response.Redirect("Terms.aspx");
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm.aspx");
        } 
    }
}