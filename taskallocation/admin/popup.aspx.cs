using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_popup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ID = Convert.ToInt32(Request.QueryString["Id"]);
        employee obj = new employee();
        DataSet ds= obj.popup(ID);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    public string get_gender(bool value)
    {

        if (value == true)
            return "male";
        else
            return "female";

    }
}