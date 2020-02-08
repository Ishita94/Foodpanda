using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prac2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string location = Session["location"] as string;
        string cuisine = Session["cuisine"] as string;
       // string location = Request.QueryString["location"] as string;
        //string cuisine = Request.QueryString["cuisine"] as string;
        string showres;
        if (location == "" && cuisine == "")
        {
            showres = "select * from RESTAURANT ";
            
        }
        else if (location == "" && cuisine!="")
        {
            showres = "select * from RESTAURANT where CUISINE='" + cuisine + "'";
        }
        else if (cuisine == "" && location!="")
        {
            showres = "select * from RESTAURANT where LOCATION='" + location + "'";
        }
        else
        {
           showres = "select * from RESTAURANT where LOCATION='" + location + "' and CUISINE='" + cuisine + "'";
        }
        SqlDataSource1.SelectCommand = showres;
        SqlDataSource1.SelectCommandType = SqlDataSourceCommandType.Text;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
