using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using static System.Windows.Forms.AxHost;
using System.Windows.Forms;
using System.Xml.Linq;
using System.Runtime.InteropServices.ComTypes;

namespace ACADPORTAL1
{
    public partial class TimeTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int i=1;
            string[] tym = new string[10];
            string[] txt = new string[46];
           // for (i = 1; i < 7; i++)
            //{
                txt[i] = i.ToString();
            
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True");
                    String query = "insert into TimeTable values (@Time,@Monday,@Tuesday ,@Wednesday ,@Thrusday ,@Friday) ";

                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                   // cmd.Parameters.AddWithValue("@Time", Text1.Text);
                    cmd.Parameters.AddWithValue("@Monday", txt[i]);
                    cmd.Parameters.AddWithValue("@Tuesday", txt[i]);
                    cmd.Parameters.AddWithValue("@Wednesday", txt[i]);
                    cmd.Parameters.AddWithValue("@Thrusday", txt[i]);
                    cmd.Parameters.AddWithValue("@Friday", txt[i]);


                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Write("one record inserted");
                    }
                    else
                    {
                        Response.Write("Fail to insert ");
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
    }
//}