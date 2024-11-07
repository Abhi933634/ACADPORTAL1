using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACADPORTAL1
{
    public partial class Student_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Email"] != null)
            //{
            //    //lblUserID.Text = Session["UserID"].ToString();
            //    //Labelname.Text = Session["Username"].ToString();
            //    //lblFullName.Text = Session["FullName"].ToString();
            //    //lblEmail.Text = Session["Email"].ToString();
            //    //Labelname


            //}
            //else
            //{ // Redirect to login page if session is null
            //    Response. Redirect("Login.aspx");
            //}
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Faculty.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Students.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("TimeTable.aspx");
        }

        protected void btnInformation_Click(object sender, EventArgs e)
        {
            // Redirect to the Information page
            Response.Redirect("Information.aspx");
        }
        protected void btnTimetable_Click(object sender, EventArgs e) {
            // Redirect to the Timetable page
            Response.Redirect("Timetable.aspx");
        }
        protected void btnResult_Click(object sender, EventArgs e)
        {
            //Redirect to the Result page
            Response.Redirect("Result.aspx");
        } protected void btnAttendance_Click(object sender, EventArgs e) {
            // Redirect to the Attendance page
            Response.Redirect("Attendance.aspx");
        }
        protected void btnNotes_Click(object sender, EventArgs e) {
            // Redirect to the Notes page
            Response.Redirect("Notes.aspx"); }
    }
}
