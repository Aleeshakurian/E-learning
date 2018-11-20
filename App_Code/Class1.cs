using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
	
		public SqlConnection con;
        public void getconncet()
        {
            String str = ConfigurationManager.ConnectionStrings["elearning_dbConnectionString"].ConnectionString;
            con=new SqlConnection(str);
            con.Open();

        }
    public void closeconnect()
        {
            con.Close();
        }
	
}