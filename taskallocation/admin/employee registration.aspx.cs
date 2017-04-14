using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_employee_registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            new_designation obj = new new_designation();
            SqlDataReader dr = obj.getdetails();

            if (dr != null)
            {
                ddldesignation.DataTextField = "desname";
                ddldesignation.DataValueField = "desid";
                ddldesignation.DataSource = dr;
                ddldesignation.DataBind();
                ddldesignation.Items.Insert(0, "--select designation--");
            }
            else
            {
                Label2.Text = "designation not selected";
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string status;
        short gendervalue;
        if(DropDownList1.Text=="male")
            gendervalue=1;
        else
            gendervalue=0;
        int dide=Convert.ToInt32(ddldesignation.SelectedItem.Value);
        employee obj = new employee();
        status= obj.emp_insert(TextBox1.Text, TextBox2.Text, gendervalue, DropDownList2.Text, DropDownList3.Text, dide,
        TextBox5.Text, TextBox3.Text,TextBox4.Text, TextBox6.Text, TextBox7.Text);
        errr.Text = status;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}