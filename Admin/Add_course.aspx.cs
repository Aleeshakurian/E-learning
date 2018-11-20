using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_Add_course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("../login.aspx");
        }
    }
    protected int get_id()
    {
        int id = 0;
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("spcourses", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 2);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            id = Int32.Parse(dt.Rows[i][0].ToString());

        }
        obj.closeconnect();
        id = id + 1;
        return id;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("spcourses", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        cmd.Parameters.Add("@course_id", get_id());
        cmd.Parameters.Add("@course_name", txtcourse.Text);
        cmd.ExecuteNonQuery();
        obj.closeconnect();
        txtcourse.Text = "";
        Response.Write("<script>alert('succesfully add course')</script>");
    }
}