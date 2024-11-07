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
using Microsoft.Win32;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Diagnostics.Eventing.Reader;

namespace ACADPORTAL1
{
    public partial class Login_signup : System.Web.UI.Page
    {
        public object Password { get; private set; }

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
            string ddl1 = DropDownList1.Text;
            if (ddl1 == "Admin")
            {
                try
                {
                    string Login = TextBox1.Text;
                    string Password = TextBox2.Text;
                    con.Open();
                    string qry = "select Login,Password from Admin where Login=@Login and Password=@Password";
                    SqlCommand cmd = new SqlCommand(qry, con);

                    cmd.Parameters.AddWithValue("@Login", Login);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows == true)
                    {
                        Response.Redirect("Admin.aspx");

                    }
                    else
                    {
                        MessageBox.Show("Error", "Incorrect", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            else if(ddl1 == "Student")
            {
                try
                {
                    string Email = TextBox1.Text;
                    string Password = TextBox2.Text;
                    con.Open();
                    string qry = "select Email,Password from Register where Email=@Email and Password=@Password";
                    SqlCommand cmd = new SqlCommand(qry, con);

                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows == true)
                    {
                        Response.Redirect("Student_Home.aspx");

                    }
                    else
                    {
                        MessageBox.Show("Error", "Incorrect", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            else if(ddl1 == "Teacher")
            {
                try
                {
                    string Email = TextBox1.Text;
                    string Password = TextBox2.Text;
                    con.Open();
                    string qry = "select Email,Password from Faculty where Email=@Email and Password=@Email";
                    SqlCommand cmd = new SqlCommand(qry, con);

                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows == true)
                    {
                        Response.Redirect("Home1teacher.aspx");

                    }
                    else
                    {
                        MessageBox.Show("Error", "Incorrect", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            else
            {

            }
        }
        protected void TextBox2_TextChanged2(object sender, EventArgs e)
        {

        }
        
    }
    
}