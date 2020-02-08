using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    string loc;
    string cui;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string name = Request.QueryString["Username"];
        Label3.Enabled = true;

        Label3.Text = name;
        string confirm = Request.QueryString["confirm"];
        
            Label4.Text = confirm;
        
       /*if (name.Equals("0")==true)
        {
            Label3.Enabled = false;
    
        }
        else
        {
            Label3.Enabled = true;
            Label3.Text = "Hi, " + name;
        }*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Create_Account.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        /*cui=DropDownList3.SelectedItem.Text;
        loc = DropDownList2.SelectedItem.Text;
        Label4.Visible = false;
        if (DropDownList2.SelectedItem.Text.Equals("") && DropDownList3.SelectedItem.Text.Equals(""))
        {
            GridView1.Visible = true;
        }*/
        Session["location"] = DropDownList2.SelectedItem.Text;
        Session["cuisine"] = DropDownList3.SelectedItem.Text;
        //Response.Redirect("~/prac2.aspx?location="+DropDownList2.SelectedItem.Text+"&cuisine="+DropDownList3.SelectedItem.Text);
        Response.Redirect("~/reslist.aspx");
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
