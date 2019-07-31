using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data.SqlClient;

namespace appliedproject
{
    public partial class login : System.Web.UI.Page
    {
        public string strcon = "server=localhost;user id=root;database=doctorconnect;password=lovekiran";
        string str;
        MySqlCommand com;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(strcon);
            con.Open();

            str = "select * from register where email_address=@email_address and password=@password";

            str = "select count(*) from register where email_address=@email_address and password =@password";

            com = new MySqlCommand(str, con);
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@email_address", TextBox1.Text);
            com.Parameters.AddWithValue("@password", TextBox2.Text);

            int count = Convert.ToInt32(com.ExecuteScalar());
           
            if (count == 1)

         {
                Session["email_address"] = TextBox1.Text;
                Session["password"] = TextBox2.Text;

                Response.Redirect("user_dashboard.aspx");
         }
         
            else
            {

                Label1.Text = "Bad Username or Password";

            }
            con.Close();

        }
    }
}
      
