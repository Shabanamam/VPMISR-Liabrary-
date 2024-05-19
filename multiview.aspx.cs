using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class multiview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        Button1.BorderStyle = BorderStyle.Groove;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.None;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.Groove;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.None;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.Groove;
        Button1.BorderStyle = BorderStyle.None;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.None;
        Button1.BorderStyle = BorderStyle.Groove;
    }
}