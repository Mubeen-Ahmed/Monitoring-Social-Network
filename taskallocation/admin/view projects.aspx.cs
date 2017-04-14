using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_view_projects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        project obj = new project();
        DataSet ds= obj.projects_get();
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}