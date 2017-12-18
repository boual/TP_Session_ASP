using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication24
{
    public partial class PageLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Si le cookie Login contient une valeur
            if (Request.Cookies["Login"] != null)
            {
                //On redirige l'utilisateur vers la page d'accueil
                Response.Redirect("~/PageAccueil.aspx");
            }
        }

        protected void BT_Login_Click(object sender, EventArgs e)
        {
            //On stock le nom d'utilisateur entré par l'utilisateur
            Response.Cookies["Login"]["Username"] = TB_Username.Text;

            //On stock le mot de passe entré par l'utilisateur
            Response.Cookies["Login"]["Password"] = TB_Password.Text;

            //On assigne la date d'expiration du cookie le plus loin possible
            Response.Cookies["Login"].Expires = DateTime.MaxValue;

            //On apelle la fonction Login avec le nom d'utilisateur et le mot de passe
            Login(Response.Cookies["Login"]["USername"], Response.Cookies["Login"]["Password"]);
        }

        protected void Login(string Username, string Password)
        {
            //Si le nom d'utilisateur est Boual
            if(Username == "Boual")
            {
                //Si le mot de passe est Boual123
                if(Password == "Boual123")
                {
                    //On redirige l'utilisateur vers la page d'accueil
                    Response.Redirect("~/PageAccueil.aspx");
                }
            }
      
        }
    }
}