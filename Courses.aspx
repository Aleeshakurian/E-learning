<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<!DOCTYPE HTML>
<html>

<head>
  <title>E-LEARNING</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
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
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h3>Available courses</h3>
          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
              <ItemTemplate>
                  
                  <asp:Label ID="course_nameLabel" runat="server" Text='<%# Eval("course_name") %>' />
                  <br />
<br />
              </ItemTemplate>
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT [course_name] FROM [coursetb]"></asp:SqlDataSource>
        <h5>&nbsp;</h5>
        <p></p>
        <p>&nbsp;</p>
       
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1>Available courses</h1>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="154px" ImageUrl="~/image/download (2).png" Width="200px" />
&nbsp;&nbsp;&nbsp; </p>
          <p>&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
          <p>&nbsp;
              <asp:ImageButton ID="ImageButton2" runat="server" Height="156px" ImageUrl="~/image/download.png" Width="197px" />
&nbsp;</p>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </p>
          <p>
              <asp:ImageButton ID="ImageButton4" runat="server" Height="141px" ImageUrl="~/image/download (1).png" Width="197px" />
          </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p></p>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
    </div>
  </div>
    </form>
</body>
</html>

