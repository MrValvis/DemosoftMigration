using System;

namespace DemoSoftMigration.Pages
{
    public partial class PrivacyPolicyGRRebuild : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RedirectToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormGR.aspx");
        }

        protected void RedirectToTerms_Click(object sender, EventArgs e)
        {
            Response.Redirect("TermsGr.aspx");
        }

        protected void ChangeLanguageToEnglish_Click(object sender, EventArgs e)
        {
            Response.Redirect("Privacy.aspx");
        }
    }
}