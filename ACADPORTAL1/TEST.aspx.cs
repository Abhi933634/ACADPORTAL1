using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Text;



namespace ACADPORTAL1
{
    public partial class TEST : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //MailMessage o = new MailMessage("abhishek9336340817@gmail.com", "abhishek9336340817@gmail.com", "Herlo", "hi");
            //NetworkCredential netCred = new NetworkCredential("abhishek9336340817@gmail.com", "Abhi@9728");
            //SmtpClient smtpobj = new SmtpClient("smtp.live.com", 80);
            //smtpobj.EnableSsl = true;
            //smtpobj.Credentials = netCred;
            //smtpobj.Send(o);
            //LoginWithOtp(smtpobj);
            //ConfirmLoginWithOtp( smtpobj);
            //otp
            string to = "ashucomp87@gmail.com"; //To address    
            string from = "abhishek9336340817@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = "In this article you will learn how to send a email using Asp.Net & C#";
            message.Subject = "Sending Email Using Asp.Net & C#";
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("abhishek9336340817@gmail.com", "Abhi@9728");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}

