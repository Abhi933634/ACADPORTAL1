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


            //string checkUser = "SELECT * FROM lgn_table where Unname = @uname and password = @pwd";
            string query =" SELECT* FROM lgn_table where Unname = 'abc' and password = '23'";

            SqlCommand cmd = new SqlCommand(query, con);
            //cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
            con.Open();
            int r = cmd.ExecuteNonQuery();

            if (r > 0)
            {
                Response.Write("Sign in successful");
                Response.Redirect("Signups.aspx");
            }
            else
            {
                Response.Write("Details incorrect, Please try again");
            }
            con.Close();
        }
    }
}