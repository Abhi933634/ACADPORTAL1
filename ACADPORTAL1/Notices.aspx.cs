using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.AxHost;
using System.Windows.Forms;
using System.Xml.Linq;

namespace ACADPORTAL1
{
    public partial class Notices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = TextBox1.Text;
            string notice = TextBox2.Text;
            try
            {
                SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True");
                String query = "insert into Notification values (@Date,@Notice) ";

                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@Notice", notice);
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    MessageBox.Show("New notice announced successfully!", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Response.Redirect("Notices.aspx");
                }
                else
                {
                    Response.Write("Fail to insert ");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                //   MessageBox.Show(ex.Message);
            }
        }


    }
}
