using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_employeedisplay : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            lastname.Visible = false;
            qulification.Visible = false;
            username.Visible = false;
            desigvalue.Visible = false;
            designame.Visible = false;
            qualivalue.Visible = false;
            lastvalue.Visible = false;
            usernamevalue.Visible = false;
            employee obj = new employee();
            ds = obj.employee_get();
            if (ds != null)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                GridView1.EmptyDataText = "employee not yet registered";
            }
        }
    }

    protected void more_click(object sender, EventArgs k)
    {
        LinkButton link = sender as LinkButton;
        int empidd=int.Parse(link.CommandArgument.ToString());
        employee obj = new employee();
        DataSet ds = obj.employee_get(empidd);

        if (ds != null)
        {
            lastname.Visible = true;
            lastvalue.Visible = true;
            qulification.Visible = true;
            username.Visible = true;
            desigvalue.Visible = true;
            designame.Visible = true;
            qualivalue.Visible = true;
            usernamevalue.Visible = true;

            tb1.Border = 1;
            lastname.Text = "last name";
            qulification.Text = "Qualification";
            username.Text = "Username";
            designame.Text = "Designation";
            lastvalue.Text = ds.Tables[0].Rows[0][0].ToString();
            qualivalue.Text = ds.Tables[0].Rows[0][1].ToString();
            usernamevalue.Text = ds.Tables[0].Rows[0][2].ToString();
            desigvalue.Text = ds.Tables[0].Rows[0][4].ToString();
        }


    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lbnbutton = (LinkButton)e.Row.FindControl("link");
            lbnbutton.Attributes.Add("onclick", "javascript:window.open('popup.aspx?Id=" + lbnbutton.CommandArgument + "')");
        }
    }
}