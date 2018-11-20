using System;
using System.Collections.Generic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
        HttpContext.Current.Response.Cache.SetValidUntilExpires(false);
        HttpContext.Current.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoStore();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconncet();
        SqlCommand cmd = new SqlCommand("spregister", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 3);
        cmd.Parameters.Add("@name", txtsearch.Text);
         DataTable dt1 = new DataTable();
        SqlDataAdapter adt1 = new SqlDataAdapter(cmd);
        adt1.Fill(dt1);

        if (dt1.Rows.Count <= 0)
        {

            Label1.Text = "no user";
        }

    }
    protected void TextBox1_TextChanged(object sender, System.EventArgs e)
    {

    }
}
