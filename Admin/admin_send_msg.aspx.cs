using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_send_msg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("../login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            Class1 obj = new Class1();
            obj.getconncet();
            SqlCommand cmd = new SqlCommand("spmessage_admin", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 1);
            cmd.Parameters.Add("@id", Request.QueryString["id"].ToString());
            cmd.Parameters.Add("@message", TextBox1.Text);
            cmd.ExecuteNonQuery();
          
            Response.Write("<script>alert(' successfully send message')</script>");
            obj.closeconnect();
            TextBox1.Text = "";
        }
    }
}