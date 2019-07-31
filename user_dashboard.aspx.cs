using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace appliedproject
{
    public partial class user_dashboard : System.Web.UI.Page
    {
        public string cnstring = "server=localhost;user id=root;database=doctorconnect;password=lovekiran";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email_address"] == null)
                Response.Redirect("login.aspx");
            else
            {
                String email_address = Session["email_address"].ToString();
                String password = Session["password"].ToString();

                Label1.Text = "Welcome , Your Email Address is " + email_address + ". and Password is " + password + ".";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["email_address"] = null;
            Session["password"] = null;   

           // Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}