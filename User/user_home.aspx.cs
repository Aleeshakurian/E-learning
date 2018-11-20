using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class User_user_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("../login.aspx");
        }
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("spjoincourse", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        cmd.Parameters.Add("@username", Session["username"].ToString());
        cmd.Parameters.Add("@course_id", GridView1.SelectedRow.Cells[0].Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("~/User/course_classes.aspx");
      
    
    }
    
}