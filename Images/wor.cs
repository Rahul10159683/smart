using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNames.Text = AppendLabel();
        }

        public string AppendLabel()
        {
            string retString = "";
            string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
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
                                retString = retString == "" ? sOffice : retString + "," + sOffice;
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
            catch(Exception ex)
            {
                retString = "";
            }
            return retString;
        }
    }
}