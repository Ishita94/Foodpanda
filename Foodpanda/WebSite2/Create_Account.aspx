<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create_Account.aspx.cs" Inherits="Create_Account" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 25px;
        }
        .style3
        {
            width: 547px;
        }
        .style5
        {
            height: 25px;
            width: 660px;
        }
        .style6
        {
            width: 212px;
        }
        .style7
        {
            height: 25px;
            width: 212px;
        }
        .style8
        {
            width: 660px;
            height: 32px;
        }
        .style9
        {
            width: 212px;
            height: 32px;
        }
        .style10
        {
            height: 32px;
        }
        .style12
        {
            width: 691px;
        }
        .style13
        {
            width: 660px;
        }
        .style14
        {
            width: 660px;
            height: 23px;
        }
        .style15
        {
            width: 212px;
            height: 23px;
        }
        .style16
        {
            height: 23px;
        }
        .style17
        {
            width: 555px;
        }
    </style>
</head>
<body background="deliveryhero-foodpanda%20-%20Copy1.jpg" bgcolor="#ffcc99">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    onselecting="SqlDataSource1_Selecting" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="select * from customer"></asp:SqlDataSource>
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
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" BackColor="White" Font-Bold="True" 
                    Font-Size="XX-Large" ForeColor="Red" 
                    Text="ERROR!!! Insert your Account Information AGAIN:" Visible="False"></asp:Label>
            </td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style3" rowspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#99FF99" Text="Insert your Account Information:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" Text="Username:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" Text="Phone Number:"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" 
                    ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label4" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" 
                    ontextchanged="TextBox3_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="label5" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" Text="Area:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
            </td>
            <td class="style9">
                <asp:Label ID="label6" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" Text="Address:"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" 
                    TextMode="MultiLine" ontextchanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="label0" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" Text="Zip Code:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style15">
            </td>
            <td class="style16">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="lb" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="White" onclick="Button1_Click" 
                    Text="CREATE ACCOUNT" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
