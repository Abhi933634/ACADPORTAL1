using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using System.Xml.Linq;
using System.Reflection.Emit;

namespace ACADPORTAL1
{
    public partial class Login_signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }


       

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False";
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string username = TextBox1.Text;
                string pass = TextBox2.Text;
                con.Open();
                string qry = "SELECT * FROM Signup WHERE Name='" + username + "' AND password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows == true)
                {
                    Response.Write("Sign in successful");
                    Response.Redirect("signups.aspx");

                }
                else
                {
                    Response.Write("Details incorrect, Please try again");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }

        }
    }
    
}