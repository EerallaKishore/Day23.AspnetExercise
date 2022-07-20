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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private SqlConnection con=null;
        private SqlCommand cmd=null;
        //private SqlDataAdapter adapter = null;
        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            using(con =new SqlConnection(ConfigurationManager.ConnectionStrings["HR"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_Addnewreg", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                   
                    cmd.Parameters.AddWithValue("@FirstName", TxtFirstName.Text);
                    cmd.Parameters.AddWithValue("@UserId", TxtUserId.Text);
                    cmd.Parameters.AddWithValue("@Password", TxtPassword.Text);
                    if(con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.ExecuteNonQuery();
                    
                }
            }
        }
    }
}