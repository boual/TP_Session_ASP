using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication24
{
    public partial class NestedMasterPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_Krakow_Click(object sender, EventArgs e)
        {
            //On redirige l'utilisateur vers la page de Krakow
            Response.Redirect("~/PageKrakow.aspx");
        }

        protected void BT_Warsaw_Click(object sender, EventArgs e)
        {
            //On redirige l'utilisateur vers la page de Varsovie
            Response.Redirect("~/PageWarsaw.aspx");
        }

        protected void BT_Poznan_Click(object sender, EventArgs e)
        {
            //On redirige l'utilisateur vers la page de Poznan
            Response.Redirect("~/PagePoznan.aspx");
        }
    }
}