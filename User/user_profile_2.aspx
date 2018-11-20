<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_master.master" AutoEventWireup="true" CodeFile="user_profile.aspx.cs" Inherits="User_user_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="271px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Height="80px">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
        <ItemTemplate>
            NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
            <br />
            ADDRESS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            <br />
            PHONE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:Button ID="Button1" runat="server" Text="Edit Profile" OnClick="Button1_Click1"  />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT [name], [dob], [address], [phone] FROM [reg_tb] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>

