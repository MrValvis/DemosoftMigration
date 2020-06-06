using System;

namespace DemoSoftMigration.Pages
{
    public partial class Privacy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RedirectToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm.aspx");
        }

        protected void ChangeLanguageToGreek_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrivacyGR.aspx");
        }

        protected void RedirectToTerms_Click(object sender, EventArgs e)
        {
            Response.Redirect("Terms.aspx");
        }


    }
}