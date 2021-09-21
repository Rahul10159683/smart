using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            HttpCookie Cookie = new HttpCookie("Username");
            Cookie.Value = TextBox1.Text;
            Cookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(Cookie);
            SqlConnection con = new SqlConnection(@"Data Source=10.167.78.246, 1433;Initial Catalog=CPC;Persist Security Info=True;User ID=sa;Password=password@123");
            con.Open();
            string query = "Select count(*) from DOPASSWORD where Username = '" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(query, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkPasswordquery = "select Password from DOPASSWORD where Username = '" + TextBox1.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkPasswordquery, con);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    if (TextBox1.Text == "vskpro" || TextBox1.Text == "vjaro" || TextBox1.Text == "kurro" || TextBox1.Text == "VSKPRO" || TextBox1.Text == "VJARO" || TextBox1.Text == "KURRO")
                    {
                        Response.Redirect("RO.aspx");
                    }
                    else if (TextBox1.Text == "apco" || TextBox1.Text == "APCO")
                    {
                        Response.Redirect("CO.aspx");
                    }
                    else

                        Response.Redirect("ALL.aspx");
                }
                else
                    if (password != TextBox2.Text)
                {
                    Response.Write("<script>alert('Password is incorrect')</script>");
                }
            }

            else
            {
                Response.Write("<script>alert('Please enter the correct User Name')</script>");
            }
        }
    }
}