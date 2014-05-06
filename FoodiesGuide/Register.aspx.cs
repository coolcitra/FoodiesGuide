using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.Threading;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Services;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;
using System.Data.Sql;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, System.EventArgs e)
    {/*
         SqlCommand cmd = new SqlCommand();
        
        cmd.CommandType = CommandType.StoredProcedure;

        SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        System.Data.SqlClient.SqlParameter[] sqlparams = new System.Data.SqlClient.SqlParameter[3];
                                   
        sqlparams[0] = new System.Data.SqlClient.SqlParameter("@Username", SqlDbType.VarChar );
        sqlparams[0].Value = txt1.Text ;
        cmd.Parameters.Add(sqlparams[0]);

        sqlparams[1] = new System.Data.SqlClient.SqlParameter("@Password", SqlDbType.VarChar );
        sqlparams[1].Value = txt2 .Text ;
        cmd.Parameters.Add(sqlparams[1]);

        sqlparams[2] = new System.Data.SqlClient.SqlParameter("@Flag", SqlDbType.VarChar );
        sqlparams[2].Value = "1";
        cmd.Parameters.Add(sqlparams[2]);

        cmd.CommandText = "sp_AddEmp";

        cmd.Connection = sqlconn;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        Response.Redirect("Login1.aspx");
      * */

    //Custom code
        SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnection"].ToString());
        try
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into RegisterUser ([userName],[email], [password], [flag], [phone]) values (?,?,?,?,?);";

            cmd.Parameters.AddWithValue("@userName", txt1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", txt2.Text);
            cmd.Parameters.AddWithValue("@flag", Convert.ToInt32(1));
            cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
            cmd.Connection = sqlConn;
            sqlConn.Open();
            cmd.ExecuteNonQuery();
            System.Diagnostics.Debug.WriteLine("Inserted..!");
        }
        catch (SqlException sql)
        {
            System.Diagnostics.Debug.WriteLine("sqlException");
            System.Diagnostics.Debug.WriteLine(sql.StackTrace);
        }
        catch (Exception exc)
        {
            System.Diagnostics.Debug.WriteLine("Exception in execute query");
            System.Diagnostics.Debug.WriteLine(exc.StackTrace);
        }
        finally
        {
            sqlConn.Close();
        }
    }
}