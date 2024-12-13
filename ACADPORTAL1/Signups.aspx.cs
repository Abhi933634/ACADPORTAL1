using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using Microsoft.Win32;
using System.Web.Services.Description;
using System.Windows.Forms;

namespace ACADPORTAL1
{
    public partial class Signups : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name1, Fname, Mname, Gender, Dept, Eml, Add, State, City,  Pass;
            string MobileNo;
            Name1 = TextBox1.Text;
            Fname = TextBox2.Text;
            Mname = TextBox3.Text;
            Dept = DropDownList1.Text;
            MobileNo = txtmobile.Text;
            Eml = TextBox4.Text;
            Add = TextBox5.Text;
            State = TextBox6.Text;
            City = TextBox7.Text;
            Int64 Pincode = int.Parse(TextBox8.Text);
            Pass = TextBox9.Text;
            string Enroll = TextBox10.Text;
            string DOB = (DropDownList2.Text + DropDownList3.Text + DropDownList4.Text);
         
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
                    Gender = Other.Text;
                }

                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True");
                    String query1 = "insert into Register values (@Name,@FatherName ,@MotherName ,@DateOfBirth ,@Gender, @Department,@MobileNo ,@Email ,@PermanenetAddress ,@State,@City ,@Pincode ,@Password,@Enroll) ";
                    SqlCommand cmd = new SqlCommand(query1, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Name", Name1);
                    cmd.Parameters.AddWithValue("@FatherName", Fname);
                    cmd.Parameters.AddWithValue("@MotherName", Mname);
                    cmd.Parameters.AddWithValue("@DateOfBirth", DOB);
                    cmd.Parameters.AddWithValue("@Gender", Gender);
                    cmd.Parameters.AddWithValue("@Department", Dept);
                    cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
                    cmd.Parameters.AddWithValue("@Email", Eml);
                    cmd.Parameters.AddWithValue("@PermanenetAddress", Add);
                    cmd.Parameters.AddWithValue("@State", State);
                    cmd.Parameters.AddWithValue("@City", City);
                    cmd.Parameters.AddWithValue("@Pincode", Pincode);
                    cmd.Parameters.AddWithValue("@Password", Pass);
                    cmd.Parameters.AddWithValue("@Enroll", Enroll);
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        MessageBox.Show("Sign up Succesfully", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        Response.Write("Fail to insert ");
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                   // MessageBox.Show(ex.Message);
                }
            }   
         protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}