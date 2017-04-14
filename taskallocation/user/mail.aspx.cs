using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session.Add("eidse", eid1);
        //Session.Add("dname", dname);
        //Session.Add("username", TextBox1.Text);
        int empid =Convert.ToInt16(Session["eidse"]);
        string dname = Session["dname"].ToString();
        string usernname = Session["username"].ToString();
    }
    string path = Microsoft.SqlServer.Server.MapPath("App_Data\\db1.mdf");
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
        cne.Open();
        SqlCommand cmd = new SqlCommand("insert into inbox(empid,leadid,projectid,message,status)values('"+Session["eidse"]+"','"+Request["empid"]+"','"+Request["projectid"]+"','"+TextBox1.Text+"',"+ 0+")", cne);
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Label1.Text = "Your Message has been sent to corresponding PM";
        }
    }
}