using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication24
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_Accueil_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PageLogin.aspx");
        }

        protected void BT_Ville_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PageAffichageVille.aspx");
        }

        protected void BT_Photo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PagePoznan.aspx");
        }

        protected void BT_Date_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PageFestival.aspx");
        }
    }
}