using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_viewemployeedemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      employee obj = new employee();
      DataSet ds=obj.employee_getdemo();
         Session.Add("dataset", ds);
         GridView1.DataSource = ds;
         GridView1.DataBind();
     //  GridView1.DataSource = ds;
    }
    protected void more_click1(object sender, EventArgs e)
    {
        //employee obj = new employee();
        //DataSet ds = obj.employee_getdemo();
        //GridView2.DataSource = ds;
        //GridView2.DataBind();
        DataSet ds = (DataSet)Session["dataset"];
        GridView2.DataSource = ds;
        GridView2.DataBind();

    }

}