using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int get_id()
    {
        int id = 99;
        int a = 0;
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("splogin1", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 4);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            a = Int32.Parse(dt.Rows[i][0].ToString());
            if (a > id)
            {
                id = a;
            }
        }
        id = id + 1;
        return id;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Class1 obj = new Class1();
            obj.getconncet();
            SqlCommand cmd = new SqlCommand("splogin1", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 0);
            cmd.Parameters.Add("@userid", get_id());
            cmd.Parameters.Add("@password", txtpassword.Text);
            cmd.Parameters.Add("@username", txtemail.Text);
            cmd.Parameters.Add("@usertype", "student");

            SqlCommand cmd1 = new SqlCommand("spregister", obj.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@flag", 0);
            cmd1.Parameters.Add("@userid", get_id());
            cmd1.Parameters.Add("@name", txtname.Text);
            cmd1.Parameters.Add("@gender", rdgender.SelectedItem.Value.ToString());
            cmd1.Parameters.Add("@dob", txtdob.Text);
            cmd1.Parameters.Add("@address", txtaddr.Text);
            cmd1.Parameters.Add("@phone", txtphone.Text);
            cmd1.Parameters.Add("@username", txtemail.Text);


            SqlCommand cmd2 = new SqlCommand("splogin1", obj.con);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.Add("@flag", 7);
            cmd2.Parameters.Add("@username", txtemail.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd2);
            adt.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Write("<script>alert('you are already registerd please login')</script>");


            }
            else
            {
                cmd1.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('succesfully registerd')</script>");
                Response.Redirect("login.aspx");
            }
            obj.getconncet();
            clear();
        }
    }
    protected void clear()
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtdob.Text = "";
        txtaddr.Text = "";
        txtphone.Text = "";
        txtpassword.Text = "";
        txtrpasswd.Text = "";
       rdgender.ClearSelection();

    }
}
