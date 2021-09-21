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
    public partial class RO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
           Label5.Text = AppendLabel();
           Label6.Text = AppLabel();
        }

        public string AppendLabel()
        {
            string retString = "";
            string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            DataSet Ds = new DataSet();
            try
            {
                using (var connectDB = new SqlConnection(connectionStr))
                using (var commandDB = new SqlCommand("usp_GetPersonName", connectDB))
                using (var dataAdapter = new SqlDataAdapter(commandDB))
                {
                    commandDB.CommandType = CommandType.StoredProcedure;
                    dataAdapter.Fill(Ds);

                    if (Ds.Tables.Count > 0)
                    {
                        if (Ds.Tables[0].Rows.Count > 0)
                        {
                            for (int i = 0; i < Ds.Tables[0].Rows.Count; i++)
                            {
                                string sOffice = "";
                                if (Ds.Tables[0].Rows[i]["office"] != null)
                                    sOffice = (i + 1).ToString() + "." + Ds.Tables[0].Rows[i]["office"].ToString();
                                retString = retString == "" ? sOffice : retString + "   " + sOffice;
                            }
                        }
                        else
                            retString = "";
                    }
                    else
                        retString = "";
                    connectDB.Close();
                }
            }
            catch (Exception ex)
            {
                retString = "";
            }
            return retString;
        }

        public string AppLabel()
        {
            string retString = "";
            string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            DataSet Ds = new DataSet();
            try
            {
                using (var connectDB = new SqlConnection(connectionStr))
                using (var commandDB = new SqlCommand("StoredProcedure2", connectDB))
                using (var dataAdapter = new SqlDataAdapter(commandDB))
                {
                    commandDB.CommandType = CommandType.StoredProcedure;
                    dataAdapter.Fill(Ds);      
           
                    connectDB.Close();
                }
            }
            catch (Exception ex)
            {
                retString = "";
            }
            return retString;
        }
        }




    }
}