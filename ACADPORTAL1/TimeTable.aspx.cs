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

        protected void Button2_Click(object sender, EventArgs e)
        {
            int i=1;
           // string[] tym = new string[10];
            string[] txt = new string[46];
                txt[i] = i.ToString();
            int dd1 = int.Parse(DropDownList1.SelectedItem.ToString());
            if (dd1 == 1)
            {
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True");
                    String query = "insert into TimeTable1 values (@Time,@Monday,@Tuesday ,@Wednesday ,@Thrusday ,@Friday) ";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Time", time1.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Time", time2.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox10.Text);
                    cmd.Parameters.AddWithValue("@Time", time3.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox11.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox12.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox14.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox15.Text);
                    cmd.Parameters.AddWithValue("@Time", time4.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox16.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox17.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox18.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox19.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox20.Text);
                    cmd.Parameters.AddWithValue("@Time", time5.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox21.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox22.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox23.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox24.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox25.Text);
                    cmd.Parameters.AddWithValue("@Time", time6.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox26.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox27.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox28.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox29.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox30.Text);
                    cmd.Parameters.AddWithValue("@Time", time7.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox31.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox32.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox33.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox34.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox35.Text);
                    cmd.Parameters.AddWithValue("@Time", time8.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox36.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox37.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox38.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox39.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox40.Text);
                    cmd.Parameters.AddWithValue("@Time", time9.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox41.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox42.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox43.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox44.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox45.Text);
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Write("one record inserted");
                    }
                    else
                    {
                        Response.Write("Fail to insert ");
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            else if (dd1 == 2)
            {
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True");
                    String query = "insert into TimeTable2 values (@Time,@Monday,@Tuesday ,@Wednesday ,@Thrusday ,@Friday) ";

                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Time", time1.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Time", time2.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox10.Text);
                    cmd.Parameters.AddWithValue("@Time", time3.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox11.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox12.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox14.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox15.Text);
                    cmd.Parameters.AddWithValue("@Time", time4.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox16.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox17.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox18.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox19.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox20.Text);
                    cmd.Parameters.AddWithValue("@Time", time5.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox21.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox22.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox23.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox24.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox25.Text);
                    cmd.Parameters.AddWithValue("@Time", time6.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox26.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox27.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox28.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox29.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox30.Text);
                    cmd.Parameters.AddWithValue("@Time", time7.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox31.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox32.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox33.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox34.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox35.Text);
                    cmd.Parameters.AddWithValue("@Time", time8.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox36.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox37.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox38.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox39.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox40.Text);
                    cmd.Parameters.AddWithValue("@Time", time9.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox41.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox42.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox43.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox44.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox45.Text);
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Write("one record inserted");
                    }
                    else
                    {
                        Response.Write("Fail to insert ");
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            else if (dd1 == 3)
            {
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=LAPTOP-2HMQEB1H\\SQLEXPRESS;Initial Catalog=AcadPortal;Integrated Security=True");
                    String query = "insert into TimeTable3 values (@Time,@Monday,@Tuesday ,@Wednesday ,@Thrusday ,@Friday) ";

                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Time", time1.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Time", time2.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox9.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox10.Text);
                    cmd.Parameters.AddWithValue("@Time", time3.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox11.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox12.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox13.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox14.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox15.Text);
                    cmd.Parameters.AddWithValue("@Time", time4.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox16.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox17.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox18.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox19.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox20.Text);
                    cmd.Parameters.AddWithValue("@Time", time5.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox21.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox22.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox23.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox24.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox25.Text);
                    cmd.Parameters.AddWithValue("@Time", time6.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox26.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox27.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox28.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox29.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox30.Text);
                    cmd.Parameters.AddWithValue("@Time", time7.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox31.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox32.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox33.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox34.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox35.Text);
                    cmd.Parameters.AddWithValue("@Time", time8.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox36.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox37.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox38.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox39.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox40.Text);
                    cmd.Parameters.AddWithValue("@Time", time9.Text);
                    cmd.Parameters.AddWithValue("@Monday", TextBox41.Text);
                    cmd.Parameters.AddWithValue("@Tuesday", TextBox42.Text);
                    cmd.Parameters.AddWithValue("@Wednesday", TextBox43.Text);
                    cmd.Parameters.AddWithValue("@Thrusday", TextBox44.Text);
                    cmd.Parameters.AddWithValue("@Friday", TextBox45.Text);
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Write("one record inserted");
                    }
                    else
                    {
                        Response.Write("Fail to insert ");
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
        }
    }
//}