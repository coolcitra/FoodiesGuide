using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Data;
using System.Globalization;
using System.Dynamic;
using System.ComponentModel;
using System.Configuration;
using System.Web.Services;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Collections;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;
using Microsoft.VisualBasic;
using System.Data.Sql;
using System.Diagnostics;
using System.Text;
using System.Security.Permissions;
using Google.GData.Client;
using Google.GData.Calendar;
using Google.GData.Extensions;


public partial class Italian : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        // BindReview();
        //CalendarBind();
        if (Session["FirstName"] == null)
        {
            txtreview.Visible = false;
            addReview.Visible = false;
            addreviews.Visible = false;
        }

        BindGrid();
    }

    public void BindGrid()
    {
        grd.DataSource = null;
        SqlCommand cmd = new SqlCommand();
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnection"].ConnectionString);
            cmd.CommandText = "SELECT * FROM dbo.reviews WHERE restaurant = 'italian' ";
            cmd.Connection = conn;
            cmd.Connection.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            grd.DataSource = ds.Tables[0];
            grd.DataBind();
            grd.HeaderRow.Cells[1].Text = "Here is what the customers say.!";
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
            e.Row.Cells[2].Visible = false;
            e.Row.Cells[3].Visible = false;
            e.Row.Cells[1].Style["text-align"] = "center";
        }
    }

    protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void grd_RowEditing(object sender, GridViewEditEventArgs e)
    {
    }

    protected void addReview_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnection"].ToString());
        try
        {
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO dbo.reviews ([description],[restaurant], [username]) VALUES (@description, @restaurant, @username);";
            cmd.Parameters.AddWithValue("@description", txtreview.Text);
            cmd.Parameters.AddWithValue("@restaurant", "italian");
            cmd.Parameters.AddWithValue("@username", Session["FirstName"]);

            cmd.Connection = sqlConn;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();

            BindGrid();
            txtreview.Text = "";
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


    //public void CalendarBind()
    //{
    //    CalendarService service = new CalendarService("FoodiesGuide");
    //    service.setUserCredentials("foodiessjsu@gmail.com", "foodiessjsu123");


    //    FeedQuery query = new FeedQuery();
    //    query.Uri = new
    //                Uri("http://www.google.com/calendar/feeds/foodiessjsu@gmail.com/private/full");
    //    AtomFeed calFeed = service.Query(query);
    //    foreach (AtomEntry entry in calFeed.Entries)
    //    {

    //        listBox1.Items.Add(entry.Title.Text);
    //    }
    //}
    //public void BindReview()
    //{
    //    StringBuilder sb = new StringBuilder();
    //    sb.Append(string.Empty);
    //    sb.Append("<div class='loginbox' style='margin-top:100px'>");
    //    sb.Append("This hotel has a lot of great options for food and service is awesome");
    //    sb.Append("</div>");
    //    //holder.Text  = sb.ToString();

    //}
}