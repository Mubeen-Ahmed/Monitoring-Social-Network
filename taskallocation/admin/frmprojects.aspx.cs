using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_frmprojects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            employee obj = new employee();
            SqlDataReader dr= obj.projectmngget();
            if (dr != null)
            {
                DropDownList1.DataTextField = "firstname";
                DropDownList1.DataValueField = "empid";
                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--select project manager name--");
            }
            else
            {
                Label2.Text = "no projects";
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string status;
        int eidd=Convert.ToInt32(DropDownList1.SelectedValue);
        project obj = new project();
        obj.project_insert(TextBox1.Text, TextBox2.Text, eidd, out status);
        Label3.Text = status;
    }
}
