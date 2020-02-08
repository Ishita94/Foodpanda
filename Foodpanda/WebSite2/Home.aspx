<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 541px;
        }
        .style4
        {
            width: 203px;
            height: 26px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            width: 203px;
        }
        .style9
        {
            height: 26px;
            width: 457px;
        }
        .style11
        {
            width: 1089px;
        }
        .style20
        {
            height: 26px;
            width: 414px;
        }
        .style21
        {
            width: 414px;
        }
        .style24
        {
            width: 457px;
        }
        .style25
        {
            width: 1302px;
        }
        .style27
        {
            width: 343px;
        }
        .style28
        {
            width: 44px;
        }
        .style35
        {
            width: 94px;
        }
        .style39
        {
            width: 276px;
        }
        .style42
        {
            width: 824px;
        }
        .style45
        {
            width: 325px;
        }
        .style47
        {
            width: 952px;
        }
        .style49
        {
            width: 82px;
        }
        .style51
        {
            width: 152px;
        }
        .style52
        {
            width: 451px;
        }
        #form1
        {
            height: 556px;
            width: 1393px;
        }
        .style54
        {
            width: 446px;
        }
    </style>
</head>
<body background="deliveryhero-foodpanda%20-%20Copy1.jpg">
    <form id="form1" runat="server" visible="False">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="select distinct LOCATION from RESTAURANT"></asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" BackColor="Black" 
            BorderColor="White" BorderStyle="Outset" onclick="Button2_Click" Text="Login" 
            Width="247px" CssClass="style28" Font-Names="Aharoni" Font-Size="Larger" 
            ForeColor="White" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="select distinct CUISINE from RESTAURANT"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="select r_name as RESTAURANT,location,cuisine,rating,vat,added_chrg as CHARGES from restaurant">
        </asp:SqlDataSource>
    </p>
    <asp:Button ID="Button1" runat="server" BackColor="Black" 
        BorderColor="White" BorderStyle="Outset" onclick="Button1_Click" 
        Text="Create New Account" Width="249px" Font-Names="Aharoni" 
        Font-Size="Larger" ForeColor="White" />
    <table style="width:100%;">
        <tr>
            <td class="style49">
                &nbsp;</td>
            <td class="style52">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style51">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
            <td class="style54">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" BackColor="Yellow" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="Black" Enabled="False"></asp:Label>
            </td>
            <td class="style45">
                .</td>
        </tr>
        <tr>
            <td class="style49">
                &nbsp;</td>
            <td class="style52">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="Label1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" Text="Search By Location:"></asp:Label>
            </td>
            <td class="style51">
            </td>
            <td class="style11" colspan="4">
                <asp:Label ID="Label2" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White" Text="Search By Cuisine:"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style4">
                </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style20">
                </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style24">
                <asp:DropDownList ID="DropDownList2" runat="server" BackColor="White" 
                    CssClass="style3" DataSourceID="SqlDataSource1" DataTextField="LOCATION" 
                    DataValueField="LOCATION" Font-Overline="False" Font-Strikeout="False" 
                    ForeColor="#FF3300" Font-Bold="True" Font-Size="Large" Height="40px" 
                    Width="231px" AppendDataBoundItems="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                
            </td>
            <td class="style21">
                <asp:DropDownList ID="DropDownList3" runat="server" BackColor="White" 
                    CssClass="style3" DataSourceID="SqlDataSource2" DataTextField="CUISINE" 
                    DataValueField="CUISINE" Font-Overline="False" Font-Strikeout="False" 
                    ForeColor="#FF3300" Font-Bold="True" Font-Size="Large" Height="40px" 
                    Width="231px" onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                    AppendDataBoundItems="True">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" BackColor="Black" BorderStyle="Outset" 
                    Font-Bold="True" Font-Size="X-Large" ForeColor="White" Text="SEARCH" 
                    onclick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td class="style25" colspan="3">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td class="style25" colspan="3">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style39">
                </td>
            <td>
                <asp:Label ID="Label4" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="White"></asp:Label>
            </td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td class="style25" colspan="3">
                &nbsp;</td>
            <td>
            </td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td class="style25" colspan="3">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
        </tr>
        </table>
    </form>
    </body>
</html>
