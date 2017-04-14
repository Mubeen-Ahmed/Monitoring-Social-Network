using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class a1project_manager_task : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int eid = Convert.ToInt32(Session["eidse"]);
            project obj = new project();
           // DataSet ds = obj.project_manager_projects(int eid);
           DataSet ds= obj.project_manager_projects(eid);
           if (ds != null)
           {
               DropDownList1.DataTextField = "projectname";
               DropDownList1.DataValueField = "projectid";
               DropDownList1.DataSource = ds;
               DropDownList1.DataBind();
               DropDownList1.Items.Insert(0, "--select project name--");
           }
           else
           {
               errmsg.Text = "no projects";
           }
          filltaskdetails();
          employee obj2 = new employee();
          DataSet dss= obj2.getdevelopers_task();
          if (dss != null)
          {
              DropDownList2.DataTextField = "firstname";
              DropDownList2.DataValueField = "empid";
              DropDownList2.DataSource = dss;
              DropDownList2.DataBind();
              DropDownList2.Items.Insert(0, "--select developer name --");
          }
          else
          {
              errmsgs.Text = "no developers available";
          }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string statuss="";
        string msg="";
        int projectid = Convert.ToInt32(DropDownList1.SelectedItem.Value);
        int empid = Convert.ToInt32(DropDownList2.SelectedItem.Value);
        task obj=new task();
        obj.task_insert(projectid,empid,TextBox1.Text,TextBox2.Text,statuss,out msg);
        errmsgs.Text=msg;
        filltaskdetails();
    }

    public void filltaskdetails()
    {
        int eidd = Convert.ToInt32(Session["eidse"].ToString());
        task obj = new task();
        SqlDataReader dr= obj.pm_assigned(eidd);
        if (dr != null)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Columns.Clear();
    }
}