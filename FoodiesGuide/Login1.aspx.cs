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

public partial class Login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        SqlConnection sqlconn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["TestDBConnection"].ConnectionString);

        /*
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;

        System.Data.SqlClient.SqlParameter[] sqlparams = new System.Data.SqlClient.SqlParameter[3];

        sqlparams[0] = new System.Data.SqlClient.SqlParameter("@Username", SqlDbType.VarChar);
        sqlparams[0].Value = txtUsername.Text;
        cmd.Parameters.Add(sqlparams[0]);

        sqlparams[1] = new System.Data.SqlClient.SqlParameter("@Password", SqlDbType.VarChar);
        sqlparams[1].Value = txtPassword.Text;
        cmd.Parameters.Add(sqlparams[1]);

        sqlparams[2] = new System.Data.SqlClient.SqlParameter("@Result", SqlDbType.Int);
        sqlparams[2].Direction = ParameterDirection.Output;
        cmd.Parameters.Add(sqlparams[2]);

        cmd.CommandText = "sp_Login";

        cmd.Connection = sqlconn;
        cmd.Connection.Open();

        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        string result = sqlparams[2].Value.ToString();

         Session["Result"] = result ;
        if (result == "0")
        // welcome_container.Visible = true;
        //tbl1.Visible = false;
        {
            Session["FirstName"] = txtUsername.Text;
            Response.Redirect("Hotels.aspx");
        }
        else if (result == "1")
        {
            Session["FirstName"] = txtUsername.Text;
            Response.Redirect("Hotels.aspx");
         
        }
        else
        {
            lblError.Visible = true;
            Session["FirstName"] = "";
        }
         */

        string username = txtUsername.Text;
        string password = txtPassword.Text;

        string selectString = "SELECT UserID " + " FROM dbo.UserPassword " + " WHERE UserName = '" + username + "' AND UserPassword = '" + password + "';";
        SqlCommand command = new SqlCommand();
        command.CommandText = selectString;
        command.Connection = sqlconn;
        sqlconn.Open();
        string userId = System.Convert.ToString(command.ExecuteScalar());
        System.Diagnostics.Debug.WriteLine(userId);
        sqlconn.Close();
        if (!string.IsNullOrEmpty(userId))
        {
            Session["Result"] = userId;            
            Session["FirstName"] = txtUsername.Text;
            Response.Redirect("Restaurants.aspx");
        }
        else
        {
            Session["Result"] = "0";
            lblError.Visible = true;
            Session["FirstName"] = "";
        }
        
    }
}