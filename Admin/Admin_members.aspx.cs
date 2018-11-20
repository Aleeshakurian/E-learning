using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Admin_members : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("splogin1", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 3);
        cmd.Parameters.Add("@userid", GridView1.SelectedRow.Cells[0].Text);


        SqlCommand cmd1 = new SqlCommand("spregister", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 2);
        cmd1.Parameters.Add("@userid", GridView1.SelectedRow.Cells[0].Text);


        cmd1.ExecuteNonQuery();
        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('Deleted successfully')</script>");
        Response.Redirect("Admin_members.aspx");

    }
}