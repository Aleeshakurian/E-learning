using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Admin_File_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() == "")
        {
            Response.Redirect("../login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue.ToString() == "Note")
        {
            String path = FileUpload1.FileName;
            path = path.Replace(" ", "");
            string filename = Path.Combine(Server.MapPath("~/Notes/"), path);
            FileUpload1.SaveAs(filename);

            Class1 obj = new Class1();
            obj.getconncet();
            SqlCommand cmd = new SqlCommand("spnote", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 1);
            cmd.Parameters.Add("@course_id", DropDownList1.SelectedItem.Value.ToString());
            cmd.Parameters.Add("@tittle", txttittle.Text);


            cmd.Parameters.Add("@file_path", "~/Notes/"+ path);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Notes Added  Successfully')</script>");
            txttittle.Text = "";
            FileUpload1.PostedFile.InputStream.Dispose();
        }
        else
        {
            String path = FileUpload1.FileName;
            path = path.Replace(" ", "");
            string filename = Path.Combine(Server.MapPath("~/User/Videos/"), path);
            FileUpload1.SaveAs(filename);
            String link = "Videos/" + path;
            link = "<Video width=400 Controls><Source src=" + link + " type=video/mp4></video>";
            


            Class1 obj = new Class1();
            obj.getconncet();
            SqlCommand cmd = new SqlCommand("spvideo", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 1);
            cmd.Parameters.Add("@course_id", DropDownList1.SelectedItem.Value.ToString());
            cmd.Parameters.Add("@tittle", txttittle.Text);


            cmd.Parameters.Add("@file_path",link);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Videos Added  Successfully')</script>");
        }

    }
}