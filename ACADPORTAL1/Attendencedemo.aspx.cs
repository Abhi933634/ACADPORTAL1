using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACADPORTAL1
{
    public partial class Attendencedemo : Page
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
            string connectionString = "Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True;Encrypt=False";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT StudentID, Name FROM Students", connection);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
               // GridView3.DataSource = dt;
                GridView3.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                foreach (GridViewRow row in GridView3.Rows)
                {
                    int studentID = int.Parse((row.FindControl("StudentID") as Label).Text);
                    string status = (row.FindControl("ddlStatus") as DropDownList).SelectedValue;
                    SqlCommand cmd = new SqlCommand("INSERT INTO Attendance (StudentID, Date, Status) VALUES (@StudentID, @Date, @Status)", connection);
                    cmd.Parameters.AddWithValue("@StudentID", studentID);
                    cmd.Parameters.AddWithValue("@Date", DateTime.Now);
                    cmd.Parameters.AddWithValue("@Status", status);
                    cmd.ExecuteNonQuery();
                }
                connection.Close();
            }
        }
    }
}
