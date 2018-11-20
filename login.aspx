<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login_page" %>



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
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
<h1><a href="index.html">E-<span class="logo_colour">LEARNING</span></a></h1>
          <h2>Keep learning.</h2>
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
          <form runat="server">
            
                <asp:Label runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#000066" Text="Username" ></asp:Label>
            
            
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            
                <asp:TextBox ID="txtuname" runat="server" Height="30px" Width="154px" placeholder="email"></asp:TextBox>
                 <br />
              <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#000066" Text="Password"></asp:Label>
           
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
             <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="154px" TextMode="Password"></asp:TextBox>
           
                <br />
              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:Button ID="btnlogin" runat="server" Text="LOGIN" OnClick="btnlogin_Click" BackColor="#003399" ForeColor="White" Height="37px" Width="110px" Font-Bold="True" />
            
            
              &nbsp;&nbsp;&nbsp;  <asp:HyperLink ID="HyperLink1" runat="server" navigateurl="~/Register_page.aspx" Font-Bold="True" Font-Size="Larger">New user?</asp:HyperLink>
            <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Forget_pwd.aspx">Forgott password?</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;
            
              <br />
              <br />
              <br />
             <p>
                 
                 &nbsp;
                 <asp:ImageButton ID="ImageButton2" runat="server" Height="164px" ImageUrl="~/image/download (1).png" Width="252px" />
              &nbsp;</p>
                <p>
                 
                    &nbsp;</p>
                <p>
                 
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/download (2).png"  Width="252px" Height="164px"/>
              </p>
                <p>
                 
                    &nbsp;</p>
                <p>
                 
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/download.png"  Height="164px" Width="252px"/>
              </p>
                <p>
                 
                    &nbsp;</p>
                <p>
                 
                    &nbsp;</p>
              </form>
         
      </div>
    </div>
  </div>
     <div id="content_footer"></div>
    <div id="footer">
    </div>
</body>
</html>

