<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 77px;
        }
        .style2
        {
            width: 346px;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
            width: 199px;
        }
        .style8
        {
            width: 748px;
        }
        .style13
        {
            width: 20px;
        }
        .style16
        {
        }
        .style18
        {
            width: 196px;
        }
    </style>
</head>
<body background="deliveryhero-foodpanda%20-%20Copy1.jpg">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" 
                    SelectCommand="select * from ORDER_LIST"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="select * from emp"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style5" colspan="3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="Red" Text="Login Unsuccessful!! Please try again." Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="center" colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="White" Text="Enter Username  and Password:"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" BackColor="#66FF99" Font-Bold="True" 
                    Font-Size="X-Large" Text="Username:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Larger" 
                    style="margin-bottom: 0px" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style18">
                <asp:Label ID="Label3" runat="server" BackColor="#99FF99" Font-Bold="True" 
                    Font-Size="X-Large" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Larger" 
                    TextMode="Password" Width="206px" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style8" colspan="3">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style8" colspan="3">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" align="center" colspan="7">
                <asp:Button ID="Button1" runat="server" BackColor="#CCFFCC" Font-Size="Larger" 
                    onclick="Button1_Click" Text="Login" Width="125px" />
            </td>
        </tr>
        </table>
    </form>
</body>
</html>
