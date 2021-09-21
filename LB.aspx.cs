using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication4
{
    public partial class LB : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
     
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["apcocpc16\sa.Smartmonitoring.dbo"].ConnectionString;
            SqlConnection con = new SqlConnection("connectionStr");
            SqlCommand comm = new SqlCommand("SELECT SUM(Target_given) as Targetsum FROM [Smartmonitoring].[dbo].[SO] where [Scheme] like ('SB') Or [Scheme] like ('RD') OR [Scheme] like ('MIS') OR [Scheme] like ('SCSS') OR [Scheme] like ('SSA') OR [Scheme] like ('PPF') OR [Scheme] like ('TD') union ALL SELECT sum(Targetgiven)as Targetsum FROM [Smartmonitoring].[dbo].[BO]) Targetgiven");
            con.Open();
            SqlDataReader sdr = comm.ExecuteReader();
            TextBox1.Text = sdr["Targetsum"].ToString();
            con.Close();
        }
}
}