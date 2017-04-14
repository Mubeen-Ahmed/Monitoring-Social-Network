using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_view_designation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        new_designation obje = new new_designation();
        SqlDataReader dr= obje.getdetails();
        GridView1.DataSource = dr;
        GridView1.DataBind();
    }
}