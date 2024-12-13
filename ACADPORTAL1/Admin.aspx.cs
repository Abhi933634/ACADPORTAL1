using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACADPORTAL1
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
        protected void click(object sender, EventArgs e) 
        {
            Response.Redirect("Notices.aspx");
        }
        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}