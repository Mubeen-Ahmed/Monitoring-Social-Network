using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class a1project_manager_inbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["eidse"] != null)
        {
            showdata();
           // TextBox1.Text = Session["projectidfor"].ToString();

        }
    }

    private void showdata()
    {
        string path = Server.MapPath("App_Data\\db1.mdf");
        SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter("select inbox.message,inbox.status ,inbox.pkID ,employee.firstname,project.projectname   from inbox inner join employee on employee.empid=inbox.empid inner join project on project.projectid  = inbox.projectid where leadid='" + Convert.ToInt32(Session["eidse"]) + "'", cne);
        da.Fill(ds, "inbox");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int pjID = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Accept")
        {
            string path = Server.MapPath("App_Data\\db1.mdf");
            SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
            DataSet ds = new DataSet();
            cne.Open();
            SqlCommand cmd = new SqlCommand("update inbox set status=1 where pkID=" + pjID, cne);
            cmd.ExecuteNonQuery();   
        }
        else if (e.CommandName == "Reject")
        {
            SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
            DataSet ds = new DataSet();
            cne.Open();
            SqlCommand cmd = new SqlCommand("update inbox set status=2 where pkID=" + pjID, cne);
            cmd.ExecuteNonQuery();  
        }
        showdata();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lbnaccept = (LinkButton)e.Row.FindControl("lbnAccept");
            HiddenField hdnstatus = (HiddenField)e.Row.FindControl("hdnStatus");
            LinkButton lbnreject = (LinkButton)e.Row.FindControl("lbnReject");
            if (hdnstatus.Value == "1" || hdnstatus.Value == "2")
            {
                lbnaccept.Visible = false;
                lbnreject.Visible = false;
            }
            else
            {
                lbnaccept.Visible = true ;
                lbnreject.Visible = true ;
            }
        }
    }
    public string GetStatus(object status)
    {
        string value = "";
            if(DBNull.Value != status )
            {
                switch (Convert.ToInt32(status))
                {
                    case 0: return "Pending";
                    case 1:return "Accepted";
                    case 2: return "Rejected";
                        
                }
            }
            return value;
    }
} 