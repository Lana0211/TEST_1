<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication_final._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #000099;
        }
        .auto-style2 {
            color: #003399;
            font-size: xx-large;
            background-color: #FFCC00;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style7 {
            font-size: large;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style8 {
            font-size: large;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #666666;
        }
        .auto-style9 {
            font-size: large;
            color: #FFFFFF;
            background-color: #666666;
        }
        .auto-style10 {
            text-align: center;
            width: 2053px;
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
        .auto-style12 {
            width: 301px;
        }
        .auto-style13 {
            font-size: large;
            width: 301px;
        }
    </style>
</head>
<body style="background-image: url('BG.png');background-size: cover; background-repeat: no-repeat; background-attachment: fixed; background-position: center center">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style2">LET&#39;S&nbsp;&nbsp; GO&nbsp;&nbsp; TRAVEL&nbsp;&nbsp; AROUND&nbsp;&nbsp; !</span></strong></div>
        <table class="auto-style11">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Label ID="accountLB" runat="server" CssClass="auto-style7" Text="Username :" Width="130px"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style10">
                    <asp:TextBox ID="accountTB" runat="server" CssClass="auto-style5" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style5">
        <asp:DetailsView ID="clientDetailsView" runat="server" AutoGenerateRows="False" DataSourceID="clientDetail" EmptyDataText="帳號密碼錯誤" Height="50px" Visible="False" Width="125px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Label ID="passwordLB" runat="server" CssClass="auto-style7" Text="Password :"></asp:Label>
                    </strong>
                    </td>
                <td class="auto-style10">
                    <asp:TextBox ID="passwordTB" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="loginBT" runat="server" CssClass="auto-style8" OnClick="loginBT_Click" Text="Login" Width="108px" />
&nbsp;&nbsp;&nbsp;
                    </strong></td>
                <td>
                    <strong>
                    <asp:LinkButton ID="entry" runat="server" CssClass="auto-style9" OnClick="LinkButton1_Click" PostBackUrl="~/itinerary.aspx" Visible="False">Go to arrange the itinerary !</asp:LinkButton>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style10">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="eventData" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="st_m" HeaderText="st_m" SortExpression="st_m" />
                            <asp:BoundField DataField="st_e" HeaderText="st_e" SortExpression="st_e" />
                            <asp:BoundField DataField="st_n" HeaderText="st_n" SortExpression="st_n" />
                            <asp:BoundField DataField="sp_date" HeaderText="sp_date" SortExpression="sp_date" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="clientDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_name, user_password FROM userDataTable WHERE (user_name = @user_name) AND (user_password = @user_password)">
            <SelectParameters>
                <asp:ControlParameter ControlID="accountTB" Name="user_name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="passwordTB" Name="user_password" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="eventData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT st_m, st_e, st_n, sp_date FROM storeTable"></asp:SqlDataSource>
    </form>
</body>
</html>
