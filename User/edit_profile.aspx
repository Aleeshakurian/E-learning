<%@ Page Title="" Language="C#" MasterPageFile="~/User/User_master.master" AutoEventWireup="true" CodeFile="edit_profile.aspx.cs" Inherits="User_edit_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>&nbsp;</h1>
    <table style="width: 65%; height: 340px">
        <tr>
            <td style="height: 18px; color: #333399;" colspan="2"><h1>EDIT PROFILE</h1></td>
        </tr>
        <tr>
            <td style="width: 139px; height: 40px;">NAME</td>
            <td style="height: 40px">
                <asp:TextBox ID="TextBox1" runat="server" Height="27px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 139px; height: 57px;">DOB</td>
            <td style="height: 57px">
                <asp:TextBox ID="TextBox2" runat="server" Height="28px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 139px; height: 59px;">ADDRESS</td>
            <td style="height: 59px">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 139px; height: 43px;">PHONE</td>
            <td style="height: 43px">
                <asp:TextBox ID="TextBox3" runat="server" Height="27px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 139px; height: 36px;">PASSWORD</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox5" runat="server" Height="27px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 139px"></td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="RESET" BackColor="#003399" ForeColor="White" Height="37px" Width="110px" Font-Bold="True" />
            </td>
        </tr>
    </table>

</asp:Content>

