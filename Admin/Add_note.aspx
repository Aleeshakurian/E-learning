<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_master.master" AutoEventWireup="true" CodeFile="Add_note.aspx.cs" Inherits="Admin_Add_note" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    ADD NOTES/VIDEOS<br />
    <br />
    File Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="90px">
        <asp:ListItem>Notes</asp:ListItem>
        <asp:ListItem>video</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="230px" />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/Delete_notes.aspx" >Delete notes</asp:LinkButton>
</asp:Content>

