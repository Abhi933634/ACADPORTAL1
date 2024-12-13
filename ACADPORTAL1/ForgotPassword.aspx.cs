using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Drawing;




namespace ACADPORTAL1
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        public static int myRandom;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string selectuser = "select Name from Register Where Email='" + email.Text.ToString() + "' ";
            SqlCommand selcmd = new SqlCommand(selectuser, con);
            SqlDataReader read = selcmd.ExecuteReader();
            if (read.Read())
            {
                con.Close();
                Random random = new Random();
                myRandom = random.Next(1000, 9999);
                string login_otp = myRandom.ToString();
                con.Open();
                string updateAcc = "update FrgtPassword set login_otp='" + login_otp + "' where email='" + email.Text.ToString() + "' ";
                SqlCommand cmdUpdate = new SqlCommand(updateAcc, con);
                cmdUpdate.ExecuteNonQuery();
                con.Close();
                MailMessage mail = new MailMessage();
                mail.To.Add(email.Text.ToString());
                mail.From = new MailAddress("ashucomp87@gmail.com");
                mail.Subject = "Login otp";
                string emailBody = "";
                emailBody += "<h1>Welcome to acadportal</h1>";
                emailBody += "<p> login otp:" + login_otp + "</p>";
                emailBody += "Login eith the otp.<br>";
                emailBody += "Thank you...";
                mail.Body = emailBody;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;// 22 465
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new NetworkCredential("abhishek9336340817@gmail.com", "inrltiozovxkyqln");
                smtp.Send(mail);
            }
            else
            {
                con.Close();

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Email = email.Text;
            int otp = Convert.ToInt32(login_otp.Text);
            if (ForgotPassword.myRandom == otp && DropDownList1.SelectedIndex == 1)
            {
                string cs = "Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False";
                SqlConnection con = new SqlConnection(cs);

                //  string Password = TextBox2.Text;
                con.Open();
                string qry1 = "select Email,Password,MobileNo,Enroll,Name from Register where Email=@Email";
                SqlCommand cmd = new SqlCommand(qry1, con);

                cmd.Parameters.AddWithValue("@Email", Email);
                //cmd.Parameters.AddWithValue("@Password", Password);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows == true)
                {
                    while (sdr.Read())
                    {
                        Session["Name"] = sdr.GetString(4);
                    //    Session["Mobile"] = Convert.ToUInt32(sdr.GetSqlString(2));
                        Session["Enroll"] = sdr.GetString(3);
                        Session["Email"] = sdr.GetString(0);
                        // Session["UserName"] = TextBox1.Text;
                    }
                    Response.Redirect("Home1teacher.aspx");
                    MessageBox.Show("verified", "correct", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                }
                else if (ForgotPassword.myRandom == otp && DropDownList1.SelectedIndex == 2)
                {

                    // string Password = TextBox2.Text;
                    con.Open();
                    string qry2 = "select Email,Password,MobileNo,Enroll,Name from Register where Email=@Email and ";
                    SqlCommand cmd1 = new SqlCommand(qry2, con);

                    cmd1.Parameters.AddWithValue("@Email", Email);
                    // cmd1.Parameters.AddWithValue("@Password", Password);
                    SqlDataReader sdr1 = cmd.ExecuteReader();
                    if (sdr1.HasRows == true)
                    {
                        while (sdr1.Read())
                        {
                            Session["Name"] = sdr1.GetString(4);
                       //     Session["Mobile"] = Convert.ToUInt32(sdr1.GetSqlString(2));
                            Session["Enroll"] = sdr1.GetString(3);
                            Session["Email"] = sdr1.GetString(0);
                            // Session["UserName"] = TextBox1.Text;
                        }
                        Response.Redirect("Student_Home.aspx");
                        MessageBox.Show("verified", "correct", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else
                    {
                        MessageBox.Show("unverified", "Incorrect otp", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }
    }
}