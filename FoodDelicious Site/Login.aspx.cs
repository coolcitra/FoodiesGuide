﻿using Microsoft.VisualBasic;
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
    {
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
     }
}