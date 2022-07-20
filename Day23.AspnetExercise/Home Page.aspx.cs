﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day23.AspnetExercise
{
    public partial class Home_Page : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                LblWelcome.Text = $"Welcome, {Session["UserId"]}";
            }
        }
    }
}