using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Odbc;
using System.Data.OleDb;
using System.Configuration;

public partial class Create_Account : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection("Provider=MSDAORA;Data Source=orcl;Persist Security Info=True;User ID=hr;Password=hr;");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = TextBox1.Text;
        string phone = TextBox2.Text;
        string ct = TextBox3.Text;
        string ar = TextBox4.Text;
        string addr = TextBox5.Text;
        string zc = TextBox6.Text;
        string pw = TextBox7.Text;
        if (user.Equals("") == true || phone.Equals("") == true || ct.Equals("") == true || ar.Equals("") == true || addr.Equals("") == true || zc.Equals("") == true || pw.Equals("") == true)
        {
            Label1.Visible = false;
            Label7.Visible = true;
           
        }
        
        else
        {
            string check = "select * from CUSTOMER";
            SqlDataSource1.SelectCommand = check;
            SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
            DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            int counter = dv.Count;
            counter++;

            con.Open();
            OleDbCommand cmd = new OleDbCommand("INSERT_CUSTOMER", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("c_id", counter);
            cmd.Parameters.AddWithValue("c_name", user);
            cmd.Parameters.AddWithValue("phn", phone);
            cmd.Parameters.AddWithValue("ppm", "cash on delivery");
            cmd.Parameters.AddWithValue("pass", pw);
            cmd.ExecuteNonQuery();
           /* string customer_insert = "insert into CUSTOMER values( " + counter + " , '" + user + "','" + phone + "','cash on delivery','" + pw + "')";
            SqlDataSource1.InsertCommand = customer_insert;
            SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            int nrows = SqlDataSource1.Insert();*/

            if (/*nrows > 0*/ 1==1)
            {
                string log = "select * from CUSTOMER_ADDRESS";
                SqlDataSource1.SelectCommand = log;
                SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
                DataView dv2 = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
                int counter1 = dv2.Count;
                counter1++;

                string customeraddr_insert = "insert into CUSTOMER_ADDRESS values(" + counter1 + "," + counter + ",'" + ct + "','" + ar + "','" + addr + "'," + zc + ")";
                SqlDataSource1.InsertCommand = customeraddr_insert;
                SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
                int nrows1 = SqlDataSource1.Insert();
                if (nrows1 > 0)
                {
                    string confirm = "Account Created Successfully.";
                    Response.Redirect("~/Home.aspx?confirm="+confirm);
                }
                else
                {
                    Label1.Visible = false;
                    Label7.Visible = true;
                }



            }
            else
            {
                Label1.Visible = false;
                Label7.Visible = true;
            }

        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}


