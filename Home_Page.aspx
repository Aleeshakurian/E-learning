<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_Page.aspx.cs" Inherits="Home_Page" %>

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
    <div id="site_content">
      <div class="sidebar">
        <!-- insert your sidebar items here -->
        <h3>COURSES</h3>
        
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    
                    <asp:Label ID="course_nameLabel" runat="server" Text='<%# Eval("course_name") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elearning_dbConnectionString %>" SelectCommand="SELECT [course_name] FROM [coursetb]"></asp:SqlDataSource>
           
        <p><br />
            </p>
        <p></p>
       
          </p>
      </div>
      <div id="content">
      <!-- insert the page content here -->

        <h1>Welcome to E-LEARNING</h1>
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/3.jpg" Height="300" Width="600" />
            <%--<asp:ScriptManager ID="ScriptManager1" runat="server">--%>
           <%-- </asp:ScriptManager>
           
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick">
            </asp:Timer>
            <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" /><br />
            
 </ContentTemplate>
       </asp:UpdatePanel>--%>        
           
          
        
           
            Online resources have made an entire revolution in education, not only because they are convenient and accessible, but because they make the entire process of teaching and learning more interesting and memorable. There are free and paid online resources for college students and they usually complement one another quite well. Each student will prefer different resources according to their subjects of interest and learning style, but there are universally great tools that impress nearly every student who tries them.</p>
        <p></p>
        <p></p>
        <p></p>
        <h2></h2>
        <p></p>
        <ul>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
    </div>
  </div>
    </form>
</body>
</html>

