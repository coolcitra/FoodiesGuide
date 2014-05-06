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

public partial class PromotionUser : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    public void BindGrid()
    {
        grd.DataSource = null;

        SqlCommand cmd = new SqlCommand();
        try
        {
        //cmd.CommandType = CommandType.StoredProcedure;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnection"].ConnectionString);

        //cmd.CommandText = "dbo.sp_GetPromotions";
        cmd.CommandText = "SELECT * FROM dbo.Promotion";

        cmd.Connection = conn;
        cmd.Connection.Open();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

        adapter.Fill(ds);
       // cmd.Connection.Close();

        grd.DataSource = ds.Tables[0];
        grd.DataBind();

        grd.HeaderRow.Cells[1].Text = "Promotion Event";
        grd.HeaderRow.Cells[2].Text = "Description";
        grd.HeaderRow.Cells[3].Text = "Restaurant";
        // grd.HeaderStyle.HorizontalAlign = HorizontalAlign.Center;
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
            cmd.Connection.Close();
        }
    }

    protected void grd_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if ((e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate) && (e.Row.RowType == DataControlRowType.DataRow || e.Row.RowType == DataControlRowType.Header))
        {
            e.Row.Cells[0].Visible = false;
            //e.Row.Cells[0].Style["text-align"] = "center";
            e.Row.Cells[1].Style["text-align"] = "center";
            e.Row.Cells[2].Style["text-align"] = "center";
            e.Row.Cells[3].Style["text-align"] = "center";
            //e.Row.Cells[3].Style["text-align"] = "center";
            //e.Row.Cells[4].Style["text-align"] = "center";
            //e.Row.Cells[5].Style["text-align"] = "center";
            //e.Row.Cells[3].Style["text-align"] = "center";

        }
    }

     protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
     protected void grd_RowEditing(object sender, GridViewEditEventArgs e)
     {
     }
}