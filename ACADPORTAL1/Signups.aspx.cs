using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;

namespace ACADPORTAL1
{
    public partial class Signups : System.Web.UI.Page
    {
        SqlConnection con = null;


        protected void Page_Load(object sender, EventArgs e)
        {

          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name, Fname, Mname, Gender, Dept, Eml, Add, State, City, Pincode, Pass;
            long MobileNo;
            int id;
            Name = TextBox1.Text;
            Fname = TextBox2.Text;
            Mname = TextBox3.Text;
            string DOB =(DropDownList2.SelectedValue + DropDownList3.SelectedValue + DropDownList4.SelectedValue);
           
            if (Male.Checked == true)
            {
                Gender = Male.Text;
            }
            else if (Female.Checked == true) 
            {
                Gender = Female.Text;
            }
            else
            {
                Gender=Other.Text;
            }


            Dept = DropDownList1.Text;
            MobileNo = Convert.ToInt64(txtmobile.Text);
            Eml = TextBox4.Text;
            Add = TextBox5.Text;
            State = TextBox6.Text;
            City = TextBox7.Text;
            Pincode = TextBox8.Text;
            Pass = TextBox9.Text;

            
            try
            {
                con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=AcadPortal;Integrated Security=True");
                String query = "insert into Register (Name,FatherName ,MotherName ,Dob ,Gender, Department,MobileNo ,Email ,PrmAddress ,State,City ,Pincode ,Password) " +
                    "values(@Name,@FatherName,@MotherName,@DateOfBirth,@Gender,@Department,@MobileNo,@Email,@Address,@State,@City,@Pincode,@Password);";
               
                
                SqlCommand cmd = new SqlCommand(query, con);
               
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@FatherName", Fname);
                cmd.Parameters.AddWithValue("@MotherName", Mname);
                cmd.Parameters.AddWithValue("@DateOfBirth", DOB);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Department", Dept);
                cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
                cmd.Parameters.AddWithValue("@Email", Eml);
                cmd.Parameters.AddWithValue("@Address", Add);
                cmd.Parameters.AddWithValue("@State", State);
                cmd.Parameters.AddWithValue("@City", City);
                cmd.Parameters.AddWithValue("@Pincode", Pincode);
                cmd.Parameters.AddWithValue("@Password", Pass);
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    Response.Write("one record inserted");
                }
                else
                {
                    Response.Write("Fail to insert ");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
            }



        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}