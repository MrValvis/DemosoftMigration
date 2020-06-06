using System;

namespace DemoSoftMigration.Pages
{
    public partial class TermsGRs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RedirectToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormGR.aspx");
        }

        protected void RedirectToPrivacy_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrivacyGR.aspx");
        }

        protected void ChangeLanguageToEnglish_Click(object sender, EventArgs e)
        {
            Response.Redirect("Terms.aspx");
        }
    }
}
