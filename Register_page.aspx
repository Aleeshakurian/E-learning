<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_page.aspx.cs" Inherits="Default2" %><%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE HTML>
<html>

<head runat="server">
  <title>E-LEARNING</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 213px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
         <h1><a href="index.html">E-<span class="logo_colour">LEARNING</span></a></h1>
          <h2>Keep Learning</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="Home_page.aspx">Home</a></li>
          <li><a href="Aboutus.aspx">ABOUT</a></li>
          <li><a href="Courses.aspx">courses</a></li>
          <li><a href="login.aspx">LOGIN</a></li>
          <li><a href="Contactus.aspx">Contact </a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="content">
        <!-- insert the page content here -->
        <h1 style="font-size: x-large; color: #000099; font-weight: bold">REGISTRATION
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
          </h1>
          <table class="auto-style1">
              <tr>
                  <td class="auto-style2" style="font-size: large; font-weight: bold;">
                      NAME<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  <td>
                      <asp:TextBox ID="txtname" runat="server" Height="31px" Width="144px" CausesValidation="True" ></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="font-size: large; font-weight: bold">DATE OF BIRTH</td>
                  <td>
                      <asp:TextBox ID="txtdob" runat="server" Height="31px" Width="144px" CausesValidation="True"></asp:TextBox>
                      <cc1:CalendarExtender ID="txtdob_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdob">
                      </cc1:CalendarExtender>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="font-weight: bold; font-size: large">
                      GENDER<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rdgender" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  <td>
                      <asp:RadioButtonList ID="rdgender" runat="server" CausesValidation="True" RepeatDirection="Horizontal">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem Value="Female"></asp:ListItem>
                      </asp:RadioButtonList>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="font-weight: bold; font-size: large">ADDRESS</td>
                  <td>
                      <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine" Height="31px" Width="144px" CausesValidation="True"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="font-weight: bold; font-size: large">PHONE</td>
                  <td>
                      <asp:TextBox ID="txtphone" runat="server" Height="31px" Width="144px" CausesValidation="True"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="enter valid phone number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="font-weight: bold; font-size: large">EMAIL</td>
                  <td>
                      <asp:TextBox ID="txtemail" runat="server" Height="31px" Width="144px" CausesValidation="True"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="enter valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="font-weight: bold; font-size: large">PASSWORD</td>
                  <td>
                      <asp:TextBox ID="txtpassword" runat="server" Height="31px" Width="144px" TextMode="Password" CausesValidation="True"></asp:TextBox>
                      <cc1:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtpassword">
                      </cc1:PasswordStrength>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="font-weight: bold; font-size: large">RETYPE PASSWORD</td>
                  <td>
                      <asp:TextBox ID="txtrpasswd" runat="server" Height="31px" Width="144px" TextMode="Password"></asp:TextBox>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtrpasswd" ErrorMessage="password missmatch" ForeColor="Red"></asp:CompareValidator>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">&nbsp;</td>
                  <td>
                      <asp:Button ID="btnreg" runat="server"  Text="Register"  OnClick="Button1_Click" BackColor="#003399" ForeColor="White" Height="37px" Width="110px" Font-Bold="True" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
    </div>
  </div>
    </form>
</body>
</html>

