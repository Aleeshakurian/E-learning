<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="File_upload.aspx.cs" Inherits="Admin_File_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 68%; height: 236px">
        <tr>
            <td style="width: 206px">Tittle</td>
            <td>
                <asp:TextBox ID="txttittle" runat="server" Height="29px" Width="144px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttittle" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 206px">Course</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="course_name" DataValueField="course_id" Height="16px" Width="137px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT * FROM [coursetb]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 206px">File type</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="Note"></asp:ListItem>
                    <asp:ListItem Value="Video"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 206px">File upload</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="228px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 206px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="ADD" BackColor="#003399" ForeColor="White" Height="37px" Width="110px" Font-Bold="True" />
            </td>
        </tr>
    </table>
    <%--<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/Delete_notes.aspx">Delete notes</asp:LinkButton>--%>
</asp:Content>

