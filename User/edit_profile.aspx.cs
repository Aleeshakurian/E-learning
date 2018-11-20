using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_edit_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("../login.aspx");
        }
             if(!IsPostBack)
             {
                 get_info();
             }
    }
    protected void get_info()
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("splogin1", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 5);

        cmd.Parameters.Add("@username", Session["username"].ToString());

        SqlCommand cmd1 = new SqlCommand("spregister", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 4);
        cmd1.Parameters.Add("@username", Session["username"].ToString());

        DataTable dt1 = new DataTable();
        SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
        adt1.Fill(dt1);

        DataTable dt2 = new DataTable();
        SqlDataAdapter adt2 = new SqlDataAdapter(cmd);
        adt2.Fill(dt2);

        if (dt1.Rows.Count > 0)
        {

            TextBox1.Text = dt1.Rows[0][0].ToString();
            TextBox2.Text = dt1.Rows[0][1].ToString();
            TextBox6.Text = dt1.Rows[0][2].ToString();
            TextBox3.Text = dt1.Rows[0][3].ToString();


        }

        if (dt2.Rows.Count > 0)
        {
            TextBox5.Text = dt2.Rows[0][0].ToString();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("splogin1", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 6);
        cmd.Parameters.Add("@password", TextBox5.Text);
        cmd.Parameters.Add("@username", Session["username"].ToString());

        SqlCommand cmd1 = new SqlCommand("spregister", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
           cmd1.Parameters.Add("@flag", 5);
           cmd1.Parameters.Add("@name", TextBox1.Text); 
        cmd1.Parameters.Add("@dob", TextBox2.Text);
        cmd1.Parameters.Add("@address", TextBox6.Text);
        cmd1.Parameters.Add("@phone", TextBox3.Text);
       
           cmd1.Parameters.Add("@username", Session["username"].ToString());

        int a=cmd1.ExecuteNonQuery();
        int b=cmd.ExecuteNonQuery();

        if(a>0 && b>0)
        { 
        Response.Redirect("user_profile.aspx");
        }
    }
}