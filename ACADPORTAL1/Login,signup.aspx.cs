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

        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
 
           
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

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox1.Text == " ")
            {
                MessageBox.Show("Please fill up all fields");
            }

            if (TextBox2.Text == "" || TextBox2.Text == " ")
            {
                MessageBox.Show("Please fill up all fields");
            }

            SqlCommand cmd= con.CreateCommand();
            cmd.CommandType= CommandType.Text;
            cmd.CommandText = "insert into login values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";




        }

       
    }
}