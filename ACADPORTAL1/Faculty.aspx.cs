using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;
using System.Xml.Linq;
using System.Reflection.Emit;
using Microsoft.Win32;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Diagnostics.Eventing.Reader;

namespace ACADPORTAL1
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
            TextBox gender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox mobile = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox email = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4");
            TextBox department = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5");

            if (name != null && gender != null && mobile != null && email != null && department != null)
            {
                SqlDataSource1.UpdateParameters["Name"].DefaultValue = name.Text;
                SqlDataSource1.UpdateParameters["Gender"].DefaultValue = gender.Text;
                SqlDataSource1.UpdateParameters["Mobile"].DefaultValue = mobile.Text;
                SqlDataSource1.UpdateParameters["Email"].DefaultValue = email.Text;
                SqlDataSource1.UpdateParameters["Department"].DefaultValue = department.Text;
                SqlDataSource1.UpdateParameters["id"].DefaultValue = GridView1.DataKeys[e.RowIndex].Value.ToString();

                SqlDataSource1.Update();
                GridView1.EditIndex = -1;
                BindGrid();
            }
            else
            {
                // Handle the case where controls are not found
                // e.g., log an error, throw an exception, show a message
                // Label1.Text = "One or more text boxes could not be found.";
               // Response.Write("Successfully updated");
              
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlDataSource1.DeleteParameters["id"].DefaultValue = GridView1.DataKeys[e.RowIndex].Value.ToString();

            SqlDataSource1.Delete();
            BindGrid();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = txtName.Text;
            SqlDataSource1.InsertParameters["Gender"].DefaultValue = txtGender.Text;
            SqlDataSource1.InsertParameters["Mobile"].DefaultValue = txtMobile.Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = txtEmail.Text;
            SqlDataSource1.InsertParameters["Department"].DefaultValue= txtDepartment.Text;
            SqlDataSource1.Insert();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}