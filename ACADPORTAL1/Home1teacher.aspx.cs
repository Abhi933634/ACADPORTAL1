using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACADPORTAL1
{
    public partial class Home1teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                namelabel.Text = Session["UserName"].ToString();
            }
            if (Session["Name"] != null)
            {
                name.Text = Session["Name"].ToString();
            }
            if (Session["Mobile"] != null)
            {
                mobile.Text = Session["Mobile"].ToString();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

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
        protected void btnTimetable_Click(object sender, EventArgs e)
        {
            // Redirect to the Timetable page
            Response.Redirect("ttall.aspx");
        }
        protected void btnResult_Click(object sender, EventArgs e)
        {
            //Redirect to the Result page
            Response.Redirect("Result.aspx");
        }
        protected void btnAttendance_Click(object sender, EventArgs e)
        {
            // Redirect to the Attendance page
            Response.Redirect("Attendence.aspx");
        }
        protected void btnNotes_Click(object sender, EventArgs e)
        {
            // Redirect to the Notes page
            Response.Redirect("Notes.aspx");
        }

    }



}
