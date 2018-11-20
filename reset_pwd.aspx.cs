using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class reset_pwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("splogin1", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 6);
        cmd.Parameters.Add("@password",txtpasswd.Text);
        cmd.Parameters.Add("@username", Session["uname"].ToString());

        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('succes ')</script>");
        Session["uname"] = "";
        Response.Redirect("login.aspx");
    }
}