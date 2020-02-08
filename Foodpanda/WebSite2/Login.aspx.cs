using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        string log = "select * from CUSTOMER where CUSTOMER_NAME='" + username + "' AND PASSWORD= '" + password + "'";
        SqlDataSource1.SelectCommand = log;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;
        DataView dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
      DataView dv2= SqlDataSource2.Select(DataSourceSelectArguments.Empty) as DataView;
      string cid=(dv.Table.Rows[0]["CUSTOMER_ID"]).ToString();
        string orderlistcount = ((dv2.Count)+1).ToString();
        Label5.Text = cid + orderlistcount;
        username = "Hi, " + username;
        if (dv.Count > 0)
        {
            //Session["Username"] = username as string;
            //string orderlist_insert = "insert into ORDER_LIST values( " + orderlistcount + " , '" + user + "','" + phone + "','cash on delivery','" + pw + "')";
            //SqlDataSource1.InsertCommand = orderlist_insert;
            //SqlDataSource1.InsertCommandType = SqlDataSourceCommandType.Text;
            // dv = SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView;
            //Response.Redirect("~/Home.aspx?Username="+username);

        }
        else {
            Label4.Visible = true;
        }

    }
}
