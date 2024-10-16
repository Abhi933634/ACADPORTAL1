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




namespace ACADPORTAL1
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string selectuser = "select Name from Register Where Email='" + email.Text.ToString() + "' ";
            SqlCommand selcmd=new SqlCommand(selectuser, con);
            SqlDataReader read=selcmd.ExecuteReader();
            if (read.Read())
            {
                con.Close();
                Random random= new Random();
                int myRandom = random.Next(10000000, 99999999);
                string login_otp =myRandom.ToString();
                con.Open();
                string updateAcc = "update FrgtPassword set login_otp='" + login_otp + "' where email='"+email.Text.ToString()+"' ";
                SqlCommand cmdUpdate =new SqlCommand(updateAcc,con);
                cmdUpdate.ExecuteNonQuery();
                con.Close();
                MailMessage mail= new MailMessage();
                mail.To.Add(email.Text.ToString());
                mail.From = new MailAddress("abhishek93363430817@gmail.com");
                mail.Subject = "Login otp";
                string emailBody = "";
                emailBody += "<h1> Hello user...</h1>";
                emailBody += "<p> login otp:" + login_otp + "</p>";
                emailBody += "click below link for reset your password.<br>";
                emailBody +=  "<p><a href='"+ "https://localhost:44398/ConfirmLoginWithOtp.aspx"+"' >click here login otp page</a></p>" ;
                 emailBody += "Thank you...";
                mail.Body = emailBody;
                mail.IsBodyHtml = true;
                SmtpClient smtp =new SmtpClient();
                smtp.Port = 587;// 22 465
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new NetworkCredential("abhishek9336340817@gmail.com", "inrltiozovxkyqln");////
                smtp.Send(mail);

               // lblErrorMsg.Text = "Login Otp sent succesfully.";
               // lblErrorMsg.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
              // lblErrorMsg.Text = "your email is not associated with us.";
               //lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close() ;

            }


        }
    }
}