using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.SqlServer.Server;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button3.Visible = false;
    }
   // string path =Microsoft.SqlServer.Server.MapPath("App_Data\\Database.mdf");
    protected void Button1_Click(object sender, EventArgs e)
    {
        int eid1;
        string path = Server.MapPath("App_Data\\db1.mdf");

        SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
        string status1="";
        login2 obj = new login2();
        string dname= obj.verifyuser(TextBox1.Text, TextBox2.Text, out eid1, out status1);

        if (dname == "Admin")
        {
            Session.Add("eidse", eid1);
            Session.Add("dname", dname);
            Session.Add("username", TextBox1.Text);
            Response.Redirect("~/admin/frmadminhome.aspx");
        }
        else if (dname == "Project Manager")
        {
            Session.Add("eidse", eid1);
            Session.Add("dname", dname);
            Session.Add("username", TextBox1.Text);
            SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
            SqlCommand cmd =new SqlCommand("select desid from authentication where empid='"+Session["eidse"]+"'",cne);
            DataSet ds2 = new DataSet();
            cmd.CommandText(ds2, "designation");
            int desigid =Convert.ToInt16(ds2.Tables["designation"].Rows[0]["desid"]);

            Response.Redirect("~/a1project manager/frmpmhome.aspx");
        }
        else if (dname == "Tester" || dname == "Developer")
        {
            Session.Add("eidse", eid1);
            Session.Add("dname", dname);
            Session.Add("username", TextBox1.Text);
            Response.Redirect("~/user/projects.aspx");
        }
        else
        {
            lblerromsg.Text = "invalid user";
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("App_Data\\db1.mdf");
        SqlConnection cne = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=" + path + ";Integrated Security=True");
        cne.Open();
        SqlCommand cmd = new SqlCommand("select * from authentication", cne);
        cmd.ExecuteNonQuery();
        if (cmd.ToString() == TextBox1.Text && cmd.ToString() == TextBox2.Text)
            Response.Redirect("~/admin/frmadminhome.aspx");
        else
            lblerromsg.Text = "invalid username";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
