using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_user_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("../login.aspx");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("edit_profile.aspx");
    }
}