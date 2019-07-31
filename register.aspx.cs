using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace appliedproject
{
    public partial class register : System.Web.UI.Page
    {
        public string cnstring = "server=localhost;user id=root;database=doctorconnect;password=lovekiran";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cnstring);
            conn.Open();

            if (conn.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into register(first_name,last_name,email_address,password,age_month,age_day,age_year,gender,expertise)values " +
                "('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "')";

                MySqlCommand cmd = new MySqlCommand(a, conn);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('You are Registered Successfully ! Now you are redirect to Login Page')</script>");
                Server.Transfer("login.aspx");
            }

            else

            {
                Response.Write("Cannot Connect to Database");
                conn.Close();
            }
        }

    }
}