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
    public partial class ConfirmLoginWithOtp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string selectuser = "select Name,Email from signup where Email='" +Email.Text.ToString()+"' and login_otp='"+login_otp.Text.ToString()+"'  ";
                SqlCommand selCmd=new SqlCommand(selectuser,con);
            SqlDataReader read = selCmd.ExecuteReader();
            if (read.Read())
            {
                /*Session["Name"] = read.GetValue(0).ToString();
                Session["Email"] = read.GetValue(1).ToString();*/
                con.Close();
                Response.Redirect("Home1teacher.aspx");

            }
            else
            {
                //lblErrorMsg.Text = "login otp is not correct";
                //lblErrorMsg.ForeColor=System.Drawing.Color.Red;
                con.Close();
            }
        }
    }
}