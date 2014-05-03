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

public partial class Japanese : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarBind();
    }
    public void CalendarBind()
    {
        CalendarService service = new CalendarService("Your app name");
        service.setUserCredentials("fooddelicioussjsu@gmail.com", "4085120350");


        FeedQuery query = new FeedQuery();
        query.Uri = new
                    Uri("http://www.google.com/calendar/feeds/fooddelicioussjsu@gmail.com/private/full");
        AtomFeed calFeed = service.Query(query);
        foreach (AtomEntry entry in calFeed.Entries)
        {

            listBox1.Items.Add(entry.Title.Text);
        }
    }
}