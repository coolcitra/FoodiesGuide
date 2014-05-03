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



public partial class Promotions : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    int PromotionId = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
              
            BindGrid();      
       
    }
    public void BindGrid()
    {
        
        grd.DataSource = null;
        ds.Clear();

        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                
        cmd.CommandText = "dbo.sp_GetPromotions";

        cmd.Connection = conn;
        cmd.Connection.Open();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        adapter.Fill(ds);
        cmd.Connection.Close();

        grd.DataSource = ds.Tables[0];
        grd.DataBind();

        grd.HeaderRow.Cells[2].Text = "Promotion Event";
        grd.HeaderRow.Cells[3].Text = "Description";
        grd.HeaderRow.Cells[4].Text = "Restaurant";
       
    }

    protected void grd_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if ((e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate) && (e.Row.RowType == DataControlRowType.DataRow || e.Row.RowType == DataControlRowType.Header))
        {
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[0].Style["text-align"] = "center";
            //e.Row.Cells[1].Style["text-align"] = "center";
            //e.Row.Cells[2].Style["text-align"] = "center";
            e.Row.Cells[4].Style["text-align"] = "center";
            e.Row.Cells[2].Style["text-align"] = "center";
            e.Row.Cells[3].Style["text-align"] = "center";
           
        }
    }
    protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
            DataTable dt = new DataTable();
            dt  = (DataTable  )grd.DataSource;
            PromotionId = Convert.ToInt32(dt.Rows[e.RowIndex]["Id"]);
            Session["PromotionId"] = PromotionId;

         SqlCommand cmd = new SqlCommand();
         try
         {

             cmd.CommandType = CommandType.StoredProcedure;

             SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

             System.Data.SqlClient.SqlParameter[] sqlparams = new System.Data.SqlClient.SqlParameter[1];

             sqlparams[0] = new System.Data.SqlClient.SqlParameter("@PromotionId", SqlDbType.Int);
             sqlparams[0].Value = Session["PromotionId"];
             cmd.Parameters.Add(sqlparams[0]);

             cmd.CommandText = "sp_DelPromotions";

             cmd.Connection = sqlconn;
             cmd.Connection.Open();
             cmd.ExecuteNonQuery();
             cmd.Connection.Close();

             BindGrid();
             Session["PromotionId"] = "";
         }
         catch
         {
         }
               
    }
    //protected void grd_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    //DataView dv = new DataView() ;
    //    DataTable dt = new DataTable();
    //    dt  = (DataTable  )grd.DataSource;
       
    //    PromotionId = Convert .ToInt32 (dt.Rows[e.NewEditIndex]["Id"]);
    //    Session["PromotionId"] = PromotionId;

    //    SqlCommand cmd = new SqlCommand();

    //    cmd.CommandType = CommandType.StoredProcedure;

    //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    //    System.Data.SqlClient.SqlParameter[] sqlparams = new System.Data.SqlClient.SqlParameter[1];

    //    sqlparams[0] = new System.Data.SqlClient.SqlParameter("@PromotionId", SqlDbType.Int);
    //    sqlparams[0].Value = PromotionId ;
    //    cmd.Parameters.Add(sqlparams[0]);

    //    cmd.CommandText = "dbo.sp_Promotions";

    //    cmd.Connection = conn;
    //    cmd.Connection.Open();

    //    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
    //    DataSet ds1 = new DataSet();
    //    adapter.Fill(ds1);
    //    cmd.Connection.Close();

    //    if (string.IsNullOrEmpty(ds1.Tables[0].Rows[0]["PromotionName"].ToString()))
    //    {
    //        txtUsername .Text = "";
    //    }
    //    else
    //    {
    //        txtUsername.Text = ds1.Tables[0].Rows[0]["PromotionName"].ToString ();
    //    }

    //    if (string.IsNullOrEmpty(ds1.Tables[0].Rows[0]["PromotionDescription"].ToString()))
    //    {
    //        txtPassword .Text = "";
    //    }
    //    else
    //    {
    //        txtPassword .Text = ds1.Tables[0].Rows[0]["PromotionDescription"].ToString();
    //    }

    //    if (string.IsNullOrEmpty(ds1.Tables[0].Rows[0]["HotelName"].ToString()))
    //    {
    //        TextBox1 .Text = "";
    //    }
    //    else
    //    {
    //        TextBox1 .Text = ds1.Tables[0].Rows[0]["HotelName"].ToString();
    //    }

    //}
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        try
        {
        
        cmd.CommandType = CommandType.StoredProcedure;

        SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        System.Data.SqlClient.SqlParameter[] sqlparams = new System.Data.SqlClient.SqlParameter[3];

        //sqlparams[0] = new System.Data.SqlClient.SqlParameter("@Id", SqlDbType.Int);
        //sqlparams[0].Value = Session["PromotionId"];        
        //cmd.Parameters.Add(sqlparams[0]);
               
        sqlparams[0] = new System.Data.SqlClient.SqlParameter("@PromotionName", SqlDbType.VarChar );
        sqlparams[0].Value = txtUsername.Text ;
        cmd.Parameters.Add(sqlparams[0]);

        sqlparams[1] = new System.Data.SqlClient.SqlParameter("@PromotionDescription", SqlDbType.VarChar );
        sqlparams[1].Value = txtPassword .Text ;
        cmd.Parameters.Add(sqlparams[1]);

        sqlparams[2] = new System.Data.SqlClient.SqlParameter("@HotelName", SqlDbType.VarChar );
        sqlparams[2].Value = TextBox1 .Text;
        cmd.Parameters.Add(sqlparams[2]);

        cmd.CommandText = "sp_AddPromotion";

        cmd.Connection = sqlconn;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();

        BindGrid();
            txtPassword .Text ="";
            txtUsername .Text ="";
            TextBox1.Text = "";

        }
        catch 
        {

        }

    }
}