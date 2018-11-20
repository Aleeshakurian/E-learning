<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_master.master" AutoEventWireup="true" CodeFile="course_classes.aspx.cs" Inherits="User_course_classes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1><b> VIDEOS </b></h1><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="352px" Height="219px" >
        <Columns>
            <asp:BoundField DataField="tittle" HeaderText="Title" SortExpression="tittle" />
            <asp:BoundField DataField="file_path" HeaderText="Videos" SortExpression="file_path" Visible="False" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("file_path") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT video_tb.tittle, video_tb.file_path FROM joined_coursestb INNER JOIN coursetb ON joined_coursestb.course_id = coursetb.course_id INNER JOIN video_tb ON coursetb.course_id = video_tb.course_id WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
   <h1><b> NOTES</h1><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="111px" Width="197px">
        <Columns>
            <asp:BoundField DataField="tittle" HeaderText="Title" SortExpression="tittle" />
            <asp:BoundField DataField="file_path" HeaderText="Notes" SortExpression="file_path" Visible="False" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("file_path") %>'>Note</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT note_tb.tittle, note_tb.file_path FROM coursetb INNER JOIN joined_coursestb ON coursetb.course_id = joined_coursestb.course_id INNER JOIN note_tb ON coursetb.course_id = note_tb.course_id WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" />
        </SelectParameters>
    </asp:SqlDataSource>
    </b>
</asp:Content>

