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


public partial class Indian : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindReview();
        CalendarBind();
    }
    public void CalendarBind()
    {
        CalendarService service = new CalendarService("FoodiesGuide");
        service.setUserCredentials("foodiessjsu@gmail.com", "foodiessjsu123");


        FeedQuery query = new FeedQuery();
        query.Uri = new
                    Uri("http://www.google.com/calendar/feeds/foodiessjsu@gmail.com/private/full");
        AtomFeed calFeed = service.Query(query);
        foreach (AtomEntry entry in calFeed.Entries)
        {

            listBox1.Items.Add(entry.Title.Text);
        }
    }
    public void BindReview()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(string.Empty);
        sb.Append("<div class='loginbox' style='margin-top:100px'>");
        sb.Append("This hotel has a lot of great options for food and service is awesome");
        sb.Append("</div>");
        //holder.Text  = sb.ToString();

    }
}