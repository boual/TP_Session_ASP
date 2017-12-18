using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication24
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //S'il ne s'agit pas d'un postback
            if(!IsPostBack)
            {
                //On créer une variable pour tenir le compte
                int compte = 0;

                //Pour chaque page dans le GridView
                for (int i = 0; i < GV_Ville.PageCount; i++)
                {
                    //Pour chaque rangée dans la page
                    for (int x = 0; x < GV_Ville.Rows.Count; x++)
                    {
                        //On incrémente le compteur
                        compte = compte + 1;
                    }
                }
                //On assigne le compte en texte au TextBox d'ID de Ville
                TB_ID_Vile.Text = compte.ToString();
            }

        }

        protected void BT_ajout_Click(object sender, EventArgs e)
        {
            //On créer une connection à la base de donnée
            using (SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\BD_Ville_Pologne.mdf;Integrated Security=True"))
            {
                //On ouvre la connection
                connection.Open();

                //On donne le code SQL à la commande
                SqlCommand commande = new SqlCommand("INSERT into [Ville] (ID_Ville, Ville) VALUES (@ID_Ville, @Ville)");

                //On assigne la connection à la commande
                commande.Connection = connection;

                //On ajoute le paramètre ID_Ville
                commande.Parameters.AddWithValue("@ID_Ville", TB_ID_Vile.Text);

                //On ajoute le paramètre Ville
                commande.Parameters.AddWithValue("@Ville", TB_Nom_Ville.Text);

                //On exécute la commande
                commande.ExecuteNonQuery();

                //On ferme la connection
                connection.Close();

                //On dispose de la connection
                connection.Dispose();
            }

        }
    }
}