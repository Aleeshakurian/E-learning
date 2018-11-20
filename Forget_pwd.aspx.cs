using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Forget_pwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("spregister", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 6);
        cmd.Parameters.Add("@username",txtusername.Text );
        cmd.Parameters.Add("@phone",txtphone.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["uname"] = dt.Rows[0][0].ToString();
            Response.Redirect("reset_pwd.aspx");


        }
        else
        {
            Response.Write("<script>alert('Enter valid username and phone number')</script>");
        }
    }
}