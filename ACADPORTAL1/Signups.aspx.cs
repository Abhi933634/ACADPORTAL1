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
            string Name, Fname, Mname, Gender, Dept, Eml, Add, State, City, Pincode, Pass, ConfPass, login_otp=null;
            long MobileNo;
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
            ConfPass = TextBox10.Text;
            try
            {
                con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False");
                String query = "insert into Signup(Name, Father'sName, Mother'sName, Date of birth,Gender,Department,MobileNo,Email,PermanenetAddress,State,City,Pincode,Password,ConfirmPassword) values(@Name,@FatherName, @MotherName, @DateOfBirth ,@Gender, @Department,  @MobileNo, @Email, @Address, @State, @City, @Pincode, @Password, @ConfirmPassword,@login_otp)";
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
                cmd.Parameters.AddWithValue("@ConfirmPassword", ConfPass);
                cmd.Parameters.AddWithValue("loginotp", login_otp);
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    Response.Write("one row inserted");
                }
                else
                {
                    Response.Write("Fail");
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