using System;

namespace DemoSoftMigration.Pages
{
    public partial class TermsAndPrivacy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RedirectToPrivacy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Privacy.aspx");
        }

        protected void RedirectToHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm.aspx");
        }

        protected void ChangeLanguageToGreek_Click(object sender, EventArgs e)
        {
            Response.Redirect("TermsGR.aspx");
        }
    }
}