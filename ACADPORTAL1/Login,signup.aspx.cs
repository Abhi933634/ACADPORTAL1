using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" && TextBox2.Text == "")
            {
                MessageBox.Show("Please fill up all fields");
            }

            try
            {
                string username, password;
               
                SqlConnection SqlConnection = new SqlConnection();

                SqlCommand; cmd = new SqlCommand("select * from login where username = @username and password = @password");
                cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    MessageBox.Show(" User is successfully logged in");
                }
                else
                {
                    MessageBox.Show("Login unsuccessful");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("" + ex);
            }

            if (TextBox2.Text == "")
            {
                MessageBox.Show("Please fill up password");
            }



        }

       
    }
}