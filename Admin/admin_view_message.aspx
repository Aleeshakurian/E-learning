<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="admin_view_message.aspx.cs" Inherits="Admin_view_message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="msg_id" HeaderText="msg_id" SortExpression="msg_id" />
             <asp:BoundField DataField="username" HeaderText="USERNAME" SortExpression="username" />
            <asp:BoundField DataField="message" HeaderText="MESSAGE" SortExpression="message" />
           
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CommandName="select" Text="reply" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT [message], [username], [msg_id] FROM [msgtb]"></asp:SqlDataSource>
</asp:Content>

