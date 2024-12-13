using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using static System.Windows.Forms.AxHost;
using System.Windows.Forms;
using System.Xml.Linq;
using System.Runtime.InteropServices.ComTypes;

namespace ACADPORTAL1
{
    public partial class TimeTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void admin(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
    }
