using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Configuration;
namespace ACADPORTAL1
{
    public partial class Attendence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //        DropDownList1 comboBox = new DropDownList1();
        //        comboBox.Items.Add("Item 1");
        //comboBox.Items.Add("Item 2");
        //comboBox.Items.Add("Item 3");
        //this.Controls.Add(comboBox);

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 2 && DropDownList2.SelectedIndex == 2)
            {
               // GridView1.AccessKey("");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            {
                DateTime now = DateTime.Now; string t = DateTime.Now.ToString("M-d-yyyy");
               // Response.Write(t); Response.Write(now.ToString());
                using (SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True"))
                {
                    con.Open(); foreach (GridViewRow gr in GridView1.Rows)
                    {
                        RadioButtonList radioButtonList1 = gr.FindControl("RadioButtonList1") as RadioButtonList;
                        if (radioButtonList1 != null)
                        {
                            gr.Cells[3].Text = radioButtonList1.SelectedValue;
                            String query = "insert into Attendence (Name, Enroll, Date_, Attendence) values (@Name, @Enroll, @Date_, @Attendence)";
                            using (SqlCommand cmd = new SqlCommand(query, con))
                            {
                                cmd.Parameters.AddWithValue("@Name", gr.Cells[0].Text);
                                cmd.Parameters.AddWithValue("@Enroll", gr.Cells[1].Text);
                                cmd.Parameters.AddWithValue("@Date_", t);
                                cmd.Parameters.AddWithValue("@Attendence", gr.Cells[3].Text);
                                cmd.ExecuteNonQuery();
                                MessageBox.Show("saved", "attendence saved successfully", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                            }
                        }
                        else
                        { // Handle the case where the RadioButtonList is not found
                            Response.Write("RadioButtonList1 not found in row.");
                        }
                    }
                }
                { // Handle the case where the RadioButtonList is not found Response.Write("RadioButtonList1 not found in row."); } }
                  //DateTime now = DateTime.Now;
                  //string t = DateTime.Now.ToString("M-d-yyyy");
                  //Response.Write(t);
                  //Response.Write(now.ToString());
                  ////foreach (GridViewRow row in GridView1.Rows)
                  ////{

                    ////}
                    //SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True");

                    //// String query1 = "insert into Register values (@Name,@FatherName ,@MotherName ,@DateOfBirth ,@Gender, @Department,@MobileNo ,@Email ,@PermanenetAddress ,@State,@City ,@Pincode ,@Password,@Enroll) ";
                    //foreach (GridViewRow gr in GridView1.Rows)
                    //{
                    //    RadioButtonList RadioButtonList1 = gr.FindControl("RadioButton1 nList1")
                    //                                          as RadioButtonList;
                    //    gr.Cells[3].Text = RadioButtonList1.SelectedValue;
                    //    String query = "insert into Attendence values (@Name,@Enroll,@Date_,@Attendence) ";
                    //    SqlCommand cmd = new SqlCommand(query, con);
                    //    cmd.ExecuteNonQuery();

                    //    cmd.Parameters.AddWithValue("@Name", gr.Cells[0].Text);
                    //    cmd.Parameters.AddWithValue("@Enroll", gr.Cells[1].Text);
                    //    cmd.Parameters.AddWithValue("@Date_", t);

                    //    cmd.Parameters.AddWithValue("@Attendence", gr.Cells[3].Text);
                    //    con.Open();
                }
            }
        }
    }
}