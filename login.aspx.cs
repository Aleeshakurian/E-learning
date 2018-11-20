using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd1 = new SqlCommand("splogin1", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 1);
        cmd1.Parameters.Add("username", txtuname.Text);
        cmd1.Parameters.Add("password", txtpassword.Text);
        DataTable dt1 = new DataTable();
        SqlDataAdapter adt1 = new SqlDataAdapter(cmd1);
        adt1.Fill(dt1);

        if (dt1.Rows.Count > 0)
        {
            Session["username"] = txtuname.Text;
            if (dt1.Rows[0][3].ToString().CompareTo("admin") == 0)
            {
                Response.Redirect("~/Admin/Admin_home.aspx");

            }
            else
            {
                Response.Redirect("~/User/user_home.aspx");
                Session.RemoveAll();
            }


        }

    }
  
 }