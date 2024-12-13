using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Xml;

namespace ACADPORTAL1
{
    public partial class Student_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                Labelname.Text = Session["Name"].ToString();
            }
            if (Session["Mobile"] != null)
            {
                Labelmobile.Text = Session["Mobile"].ToString();
            }
            if (Session["Email"] != null)
            {
                Labelemail.Text = Session["Email"].ToString();
            }
            if (Session["Enroll"] != null)
            {
                LabelEnroll.Text = Session["Enroll"].ToString();
            }
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
