using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_new_designation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string status1 = "";
        bool result;
        new_designation obj = new new_designation();
        result = obj.insert_designation(TextBox1.Text, TextBox2.Text, out status1);
        if (result == true)
        {
            lblmsg.Text = status1;
            lblmsg.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            lblmsg.Text = status1;
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}