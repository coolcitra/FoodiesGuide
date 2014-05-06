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
using GoogleSearchAPI.Query;
using GoogleSearchAPI;
using GoogleSearchAPI.Resources;


public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((!Page.IsPostBack))
        {
            if (Session["FirstName"] == null)
            {
                aPromo.Visible = false ;
                aReview.Visible = false ;
                aReview.HRef = "";
                aPromo.HRef = "";
                tbl1.Visible = true;
                welcome_container.Visible = false;
            }
            else
            {
                welcome_container.Visible = true;
                tbl1.Visible = false;
                lblWelcome.Text = "Welcome " + Session["FirstName"] + "!";
                aPromo.Visible = true;
                aReview.Visible = true;
               // aReview.HRef = "Review.aspx";
               string ss= Session ["Result"].ToString ();
                if(ss == "0")
                {
                    aPromo .HRef ="Promotions.aspx";
                }
                else if(ss == "1")
                {
                    aPromo .HRef ="PromotionUser.aspx";
                }
               
            }
        }
        else if (Session["FirstName"] == null)
        {
           aPromo.Visible = false;
           aReview.Visible = false;
            aReview.HRef = "";
            aPromo.HRef = "";
           tbl1.Visible = true;
            welcome_container.Visible = false;
        }
        else
        {
            welcome_container.Visible = true;
            lblWelcome.Text = "Welcome " + Session["FirstName"] + "!";
            tbl1.Visible = false;
            aPromo.Visible = true;
            aReview.Visible = true;
           // aReview.HRef = "Review.aspx";
            string ss = Session["Result"].ToString();
             if(ss == "0")
                {
                    aPromo.HRef = "Promotions.aspx";
                }
                else if(ss == "1")
                {
                    aPromo .HRef ="PromotionUser.aspx";
                }
        }
        
    }
    protected void lnk_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login1.aspx");
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandType = CommandType.StoredProcedure;

    //    SqlConnection sqlconn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    //    System.Data.SqlClient.SqlParameter[] sqlparams = new System.Data.SqlClient.SqlParameter[3];

    //    sqlparams[0] = new System.Data.SqlClient.SqlParameter("@Username", SqlDbType.VarChar);
    //    sqlparams[0].Value = txtUsername .Text;
    //    cmd.Parameters.Add(sqlparams[0]);

    //    sqlparams[1] = new System.Data.SqlClient.SqlParameter("@Password", SqlDbType.VarChar);
    //    sqlparams[1].Value = txtPassword .Text;
    //    cmd.Parameters.Add(sqlparams[1]);

    //    sqlparams[2] = new System.Data.SqlClient.SqlParameter("@Result", SqlDbType.Int);
    //    sqlparams[2].Direction = ParameterDirection.Output;
    //    cmd.Parameters.Add(sqlparams[2]);

    //    cmd.CommandText = "sp_Login";

    //    cmd.Connection = sqlconn;
    //    cmd.Connection.Open();

    //    cmd.ExecuteNonQuery();
    //    cmd.Connection.Close();
    //    string result = sqlparams[2].Value.ToString();
    //    if (result == "0")
    //        // welcome_container.Visible = true;
    //        //tbl1.Visible = false;
    //        Session["FirstName"] = txtUsername .Text ;
    //        Response.Redirect("Review.aspx");
        
    }

    protected void lnk_Register_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void BtnLogout_Click(object sender, EventArgs e)
    {
        Session ["FirstName"] = null;
        Response.Redirect("index.aspx");
    }
    protected void txtlogo_img_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    
}
