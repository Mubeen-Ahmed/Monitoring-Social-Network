using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_projects : System.Web.UI.Page
{
    string path = Server.MapPath("App_Data\\db1.mdf");
    SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
        SqlDataAdapter da = new SqlDataAdapter("select * from project", cne);
        DataSet ds = new DataSet();
        da.Fill(ds, "tbl");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        
    }
    protected void view(object sender, EventArgs e)
    {
        foreach (GridViewRow gr in GridView1.Rows)
        {
            
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from project where projectid="+e.CommandArgument , cne);
            DataSet ds = new DataSet();
            da.Fill(ds, "project");        
            
            Session.Add("projectidfor", ds.Tables["project"].Rows[0]["projectid"]);
            Response.Redirect("mail.aspx?empid=" + ds.Tables["project"].Rows[0]["empid"] + "&projectid=" + ds.Tables["project"].Rows[0]["projectid"]);
        }
    }
}