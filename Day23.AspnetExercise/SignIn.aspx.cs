using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Day23.AspnetExercise
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private SqlConnection con = null;
        private SqlCommand cmd = null;
        private SqlDataReader reader = null;
        string firstname;
        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            using(con=new SqlConnection(ConfigurationManager.ConnectionStrings["HR"].ConnectionString))
            {
                using (cmd = new SqlCommand("select FirstName from Registration where UserId=@UserId", con))
                {
                    cmd.Parameters.AddWithValue("@UserId", TxtUserId.Text);
                    con.Open();
                    reader = cmd.ExecuteReader();
                    reader.Read();
                    firstname = reader["FirstName"].ToString();
                    reader.Close();
                    cmd.Dispose();
                    con.Close();
                    //Session["firstname"];

                    if (TxtUserId.Text == "@UserId")
                    {
                        Session["UserId"] = firstname;
                        Response.Redirect("Home Page.aspx");
                    }

                }
            }

        }
    }
}