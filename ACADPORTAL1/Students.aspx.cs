﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACADPORTAL1
{
    public partial class GridViewTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void home(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}