using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Microsoft.ApplicationBlocks.Data;
/// <summary>
/// Summary description for project
/// </summary>
public class project
{
	public project()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool project_insert(string project_name, string project_description, int eid,out string status)
    {
        SqlParameter[] param = new SqlParameter[3];

        param[0] = new SqlParameter("@projectname", SqlDbType.VarChar);
        param[0].Value = project_name;

        param[1] = new SqlParameter("@description", SqlDbType.VarChar);
        param[1].Value = project_description;

        param[2] = new SqlParameter("@empid", SqlDbType.Int);
        param[2].Value = eid;
        
        int i = SqlHelper.ExecuteNonQuery(clsconnection.getcinstr(), CommandType.StoredProcedure, "project_insert",param);
        if (i > 0)
        {
            status = "project inserted succesfully";
            return true;
        }
        else
        {
            status = "project not inserted";
            return false;
        }
    }

    public DataSet projects_get()
    {
        DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "view_projects", null);
        return ds;
    }

    public DataSet project_manager_projects(int empid)
    {
        SqlParameter []param=new SqlParameter[1];
        
        param[0]=new SqlParameter("@eid",SqlDbType.Int);
        param[0].Value = empid;

        //SqlDataReader dr = SqlHelper.ExecuteReader(clsconnection.getcinstr(), CommandType.StoredProcedure, "sp_projectmanager", param);
        //return dr;

       DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "sp_projectmanager", param);
       return ds;


    }
}

