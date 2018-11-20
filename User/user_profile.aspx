<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_master.master" AutoEventWireup="true" CodeFile="user_profile.aspx.cs" Inherits="User_user_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="311px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="74px">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
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
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:Button ID="Button1" runat="server" Text="Edit Profile" OnClick="Button1_Click1"  BackColor="#003399" ForeColor="White" Height="37px" Width="110px" Font-Bold="True" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT [name], [dob], [address], [phone] FROM [reg_tb] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>

