<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

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
         <h3>Available Courses</h3>
          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
              <ItemTemplate>
                  
                  <asp:Label ID="course_nameLabel" runat="server" Text='<%# Eval("course_name") %>' />
                  <br />
<br />
              </ItemTemplate>
          </asp:DataList>
        
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT [course_name] FROM [coursetb]"></asp:SqlDataSource>
        
      </div>
      <div id="content">
        <!-- insert the page content here -->
        <h1>Contact Us</h1>
        <p>DONBOSCO COLLEGE</p>
          <p>Aleesha Kurian</p>
          <p>Phone:8113854402</p>
          <div class="form_settings">
            <p><input class="contact" type="text" name="your_name" value="" /></p>
            <p>&nbsp;</p>
          </div>
        <p><br /><br /></p>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
    </div>
  </div>
    </form>
</body>
</html>

