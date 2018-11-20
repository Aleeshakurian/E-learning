<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_master.master" AutoEventWireup="true" CodeFile="user_view_reply.aspx.cs" Inherits="User_view_message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  >
        <Columns>
            
            <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT admin_msgtb.message AS Reply, msgtb.message AS Message FROM admin_msgtb INNER JOIN msgtb ON admin_msgtb.msg_id = msgtb.msg_id WHERE (msgtb.username = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

