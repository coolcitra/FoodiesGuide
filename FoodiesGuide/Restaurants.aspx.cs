using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hotels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void img3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("indian.aspx");
    }
    protected void img1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("chinese.aspx");
    }
    protected void img2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Japanese.aspx");
    }
    protected void img4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Thai.aspx");
    }
    protected void img5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Mexican.aspx");
    }
    protected void img6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Italian.aspx");
    }
}