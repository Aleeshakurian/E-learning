using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Pgmlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd1 = new SqlCommand("sppgm", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("username", TextBox1.Text);
        cmd1.Parameters.Add("password", TextBox2.Text);
        DataTable dt1 = new DataTable();
        SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
        adt1.Fill(dt1);
        cmd1.ExecuteNonQuery();
        if (dt1.Rows.Count > 0)
        {
            Session["username"] = TextBox1.Text;
           
            Response.Redirect("pgmlogin_act.aspx");
        }
    }
}