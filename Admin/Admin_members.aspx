<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Admin_members.aspx.cs" Inherits="Admin_Admin_members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="164px" Width="405px" >
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="User ID" SortExpression="userid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Delete"  style="height: 26px" CommandName="Select" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
      
       
    </asp:GridView>
    <p></p>
    <p></p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT * FROM [reg_tb]"></asp:SqlDataSource>
        
</asp:Content>

