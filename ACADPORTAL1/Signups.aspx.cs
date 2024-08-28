using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace ACADPORTAL1
{
    public partial class Signups : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False");


        protected void Page_Load(object sender, EventArgs e)
        {
            string Name, Fname,Mname, Gender, DateOfBirth, Emai, Username, Password, Address, City, State, Pincode, Course;
            long  MobileNo;
            Name = TextBox1.Text;
            Fname = TextBox2.Text;
            Mname = TextBox3.Text;
            Gender = TextBox3.Text;
            DateOfBirth = TextBox1.Text;
            //MobileNo = Convert.ToInt32(txtmobile.Text);
            Emai = TextBox4.Text;
            Username = TextBox1.Text;
            Password = TextBox1.Text;
            Address = TextBox1.Text;
            City = TextBox1.Text;
            State = TextBox1.Text;
            Pincode = TextBox1.Text;
            Course = TextBox1.Text;
            String query = "insert into Signup values(@Name,@Father'sName, @Gender, @DateOfBirth, @MobileNo, @Email, @Username, @Password, @Address, @City, @State, @Pincode, @Course)";
            SqlCommand cmd = new SqlCommand(query, con);
            //cmd.Parameters.AddWithValue("Name",);
            //cmd.Parameters.AddWithValue("Father'sName",);
            //cmd.Parameters.AddWithValue("Gender",);
            //cmd.Parameters.AddWithValue("DateOfBirth",);
            //cmd.Parameters.AddWithValue("MobileNo",);
            //cmd.Parameters.AddWithValue("Email",);
            //cmd.Parameters.AddWithValue("Username",);
            //cmd.Parameters.AddWithValue("Password",);
            //cmd.Parameters.AddWithValue("Address",);
            //cmd.Parameters.AddWithValue("City",);
            //cmd.Parameters.AddWithValue("State",);
            //cmd.Parameters.AddWithValue("Pincode",);
            //cmd.Parameters.AddWithValue("Course",);
            con.Open();
           // cmd.ExecuteNonQuery();




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}