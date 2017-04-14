using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminuser : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        Label1.Text = "Welcome   " + Session["username"].ToString();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/signout.aspx");
        Label1.Text = "hi " + Session["username"].ToString();
    }
}
