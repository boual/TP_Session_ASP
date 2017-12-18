using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication24
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //S'il ne s'agit pas d'un postback
            if(!IsPostBack)
            {
                //Si le cookie Date contient une valeur
                if(Request.Cookies["Date"] != null)
                {
                    //On assigne la date au Calendrier
                    Calendrier_1.SelectedDate = Convert.ToDateTime(Request.Cookies["Date"].Value);

                    //On affiche les bonnes informations à l'utilisateur
                    LB_Info_Calendrier.Visible = false;
                    LB_Date_Choisi.Visible = true;
                }
            }
        }

        protected void BT_Enregistrer_Date_Click(object sender, EventArgs e)
        {
            //On écrit la date sélectionné dans le cookie Date
            Response.Cookies["Date"].Value = Calendrier_1.SelectedDate.ToString();

            //On met la date d'expiration du cookie la plus loin possible
            Response.Cookies["Date"].Expires = DateTime.MaxValue;

            //On affiche les bonnes informations à l'utilisateur
            LB_Info_Calendrier.Visible = false;
            LB_Date_Choisi.Visible = true;
        }
    }
}