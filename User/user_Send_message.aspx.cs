using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Send_message : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("spmessage", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 2);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            id = Int32.Parse(dt.Rows[i][0].ToString());

        }
        id = id + 1;
        return id;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("spmessage", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        cmd.Parameters.Add("@msg_id", get_id());
        cmd.Parameters.Add("@course_id", DropDownList1.SelectedValue.ToString());
        cmd.Parameters.Add("@message", TextBox2.Text);
        cmd.Parameters.Add("@username", Session["username"].ToString());
        
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert(' successfully send message')</script>");
        TextBox2.Text = "";
    }
}
  