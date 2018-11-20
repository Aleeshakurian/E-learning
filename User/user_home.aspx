<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_master.master" AutoEventWireup="true" CodeFile="user_home.aspx.cs" Inherits="User_user_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Available Courses" Font-Bold="True" Font-Size="X-Large" ForeColor="#003399"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="142px" Width="264px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="course_id" HeaderText="ID" SortExpression="course_id" />
            <asp:BoundField DataField="course_name" HeaderText="Course name" SortExpression="course_name" />
            <asp:ButtonField CommandName="Select" HeaderText="Action" Text="Join" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT distinct coursetb.course_id, coursetb.course_name FROM coursetb CROSS JOIN joined_coursestb where coursetb.course_id not in(SELECT joined_coursestb.course_id FROM joined_coursestb  where ([username] = @username))">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" />
        </SelectParameters>
</asp:SqlDataSource>
    
   
</asp:Content>

