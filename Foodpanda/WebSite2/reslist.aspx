<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reslist.aspx.cs" Inherits="prac2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
    </style>
</head>
<body background="deliveryhero-foodpanda%20-%20Copy1.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="select * from RESTAURANT"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="style1" align="center">
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="R_ID" DataSourceID="SqlDataSource1" Height="164px" 
                    Width="804px" EmptyDataText="There is nothing to display" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" GridLines="None">
                    <RowStyle BackColor="#FFFF99" Font-Names="Aharoni" Font-Size="Large" />
                    <EmptyDataRowStyle BackColor="#FF6699" BorderStyle="Solid" />
                    <Columns>
                    
                        <asp:HyperLinkField DataNavigateUrlFields="R_NAME" 
                            DataNavigateUrlFormatString="~/menu.aspx?r_name={0}" DataTextField="R_NAME" 
                            DataTextFormatString="{0}" HeaderText="RESTAURANT NAME">
                        <ItemStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="Large" 
                            HorizontalAlign="Center" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="LOCATION" HeaderText="LOCATION" 
                            SortExpression="LOCATION" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CUISINE" HeaderText="CUISINE" 
                            SortExpression="CUISINE" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RATING" HeaderText="RATING" 
                            SortExpression="RATING" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VAT" HeaderText="VAT(%)" 
                            SortExpression="VAT" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ADDED_CHRG" HeaderText="ADDED CHARGES(TK)" 
                            SortExpression="ADDED CHARGES" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#FF9933" Font-Names="Aharoni" Font-Size="Larger" 
                        ForeColor="#003300" HorizontalAlign="Center" BorderColor="#990000" 
                        BorderStyle="Solid" />
                    <EditRowStyle HorizontalAlign="Center" />
                    <AlternatingRowStyle BackColor="#CCFF99" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" class="style1">
                &nbsp;</td>
        </tr>
        </table>
    </form>
</body>
</html>
