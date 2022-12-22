<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="專題.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            font-family: oz焦糖下午茶;
            font-size: 20pt;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            font-family: oz焦糖下午茶;
        }
        .auto-style6 {
            font-family: oz焦糖下午茶;
        }
        .auto-style7 {
            width: 132px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 132px;
            height: 50px;
        }
        .auto-style10 {
            height: 50px;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            width: 132px;
            height: 472px;
        }
        .auto-style13 {
            height: 472px;
        }
    </style>
</head>
<body style="background-image: url('background.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center center; background-size:cover;">
    <form id="form3" runat="server">
                    <asp:SqlDataSource ID="CountryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT sp_country FROM countryTable"></asp:SqlDataSource>
                    <asp:GridView ID="viewGridView" runat="server" AutoGenerateColumns="False" DataSourceID="viewDataSource" ForeColor="White" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="sp_view" HeaderText="景點" SortExpression="sp_view" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="viewDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT sp_view FROM spotTable WHERE (sp_country = @sp_country)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="CountryList" Name="sp_country" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
        <table class="auto-style1" style="position: relative">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="WelcomeLB" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="chooseLB" runat="server" CssClass="auto-style6" Text="選擇國家:"></asp:Label>
                    <asp:DropDownList ID="CountryList" runat="server" CssClass="auto-style6" DataSourceID="CountryDataSource" DataTextField="sp_country" DataValueField="sp_country" OnSelectedIndexChanged="CountryList_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Button ID="CountryBT" runat="server" CssClass="auto-style6" Text="選擇" OnClick="CountryBT_Click" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ad.xml" BorderStyle="None" BorderWidth="50px" CssClass="auto-style7" />
                </td>
                <td class="auto-style10">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style11" DataSourceID="DataSource1" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="sp_view" HeaderText="早上" SortExpression="sp_view" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="DataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT sp_view FROM spotTable WHERE (sp_view = @sp_view)">
                        <SelectParameters>
                            <asp:SessionParameter Name="sp_view" SessionField="A" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CssClass="auto-style11" DataSourceID="DataSource2" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="sp_view" HeaderText="中午" SortExpression="sp_view" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="DataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT sp_view FROM spotTable WHERE (sp_view = @sp_view)">
                        <SelectParameters>
                            <asp:SessionParameter Name="sp_view" SessionField="B" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" CssClass="auto-style11" DataSourceID="DataSource3" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="sp_view" HeaderText="晚上" SortExpression="sp_view" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="DataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT sp_view FROM spotTable WHERE (sp_view = @sp_view)">
                        <SelectParameters>
                            <asp:SessionParameter Name="sp_view" SessionField="C" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" TitleFormat="Month" Visible="False" Width="400px" VisibleDate="2022-12-19">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="#333333" CellPadding="4" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="早上" SortExpression="st_m">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("st_m") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("st_m") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="st_e" HeaderText="下午" SortExpression="st_e" />
                            <asp:BoundField DataField="st_n" HeaderText="晚上" SortExpression="st_n" />
                            <asp:TemplateField HeaderText="日期" SortExpression="sp_date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sp_date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("sp_date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:TextBox ID="CTextBox" runat="server" Visible="False"></asp:TextBox>
                    <asp:Button ID="EnterBT" runat="server" CssClass="auto-style8" OnClick="EnterBT_Click" Text="加入行程" Visible="False" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO storeTable(st_m, st_e, st_n, sp_date) VALUES (@st_m, @st_e, @st_n, @sp_date)" SelectCommand="SELECT st_m, st_e, st_n, sp_date FROM storeTable WHERE (st_m = @st_m) AND (st_e = @st_e) AND (st_n = @st_n) AND (sp_date = @sp_date)" OnSelecting="SqlDataSource1_Selecting">
                        <InsertParameters>
                            <asp:SessionParameter Name="st_m" SessionField="A" Type="String" />
                            <asp:SessionParameter Name="st_e" SessionField="B" Type="String" />
                            <asp:SessionParameter Name="st_n" SessionField="C" Type="String" />
                            <asp:SessionParameter Name="sp_date" SessionField="date" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="st_m" SessionField="A" />
                            <asp:SessionParameter Name="st_e" SessionField="B" />
                            <asp:SessionParameter Name="st_n" SessionField="C" />
                            <asp:SessionParameter Name="sp_date" SessionField="date" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="QRbutton" runat="server" OnClick="QRbutton_Click" Text="形成QRcode" Visible="False" />
                    <asp:Image ID="Image1" runat="server" Visible="False" />
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
