<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="itinerary.aspx.cs" Inherits="WebApplication_final.itinerary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            color: #FFFFFF;
            background-color: #006666;
        }
        .auto-style5 {
            font-size: x-large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style6 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #006666;
        }
        .auto-style11 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px 40px;
            box-sizing: border-box;
            background-color: #ffcc00a2;
            width: 351px;
        }
    </style>
</head>
<body style="background-image: url('BG_2.png');background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form2" runat="server">
        <p class="auto-style1">
            <strong><span class="auto-style4">&nbsp;&nbsp;&nbsp; \&nbsp;&nbsp;&nbsp;&nbsp; 出遊日期與行程&nbsp;&nbsp;&nbsp;&nbsp; /&nbsp;&nbsp;&nbsp; </span></strong>
        </p>
        <table class="auto-style3">
            <tr>
                <td><strong>
                    <asp:Label ID="userShowLB" runat="server" CssClass="auto-style5" Text="將顯示使用者資料"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="sp_country" HeaderText="國家" SortExpression="sp_country" />
                <asp:BoundField DataField="sp_view" HeaderText="旅遊景點" SortExpression="sp_view" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sp_country], [sp_view] FROM [spotTable]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <strong>
        <asp:Button ID="entry2" runat="server" CssClass="auto-style6" PostBackUrl="~/View.aspx" Text="開始規劃行程 !" />
        </strong>
    </form>
</body>
</html>
