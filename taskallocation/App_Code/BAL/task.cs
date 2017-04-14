using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Microsoft.ApplicationBlocks.Data;

/// <summary>
/// Summary description for task
/// </summary>
public class task
{
	public task()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void task_insert(int pro_id, int emp_id, string task_name, string task_desc,String status,out string message)
    {
        SqlParameter [] param = new SqlParameter[5];

        param[0]=new SqlParameter("projectid",SqlDbType.Int);
        param[0].Value=pro_id;

        param[1]=new SqlParameter("eid",SqlDbType.Int);
        param[1].Value=emp_id;

        param[2] = new SqlParameter("taskname", SqlDbType.VarChar);
        param[2].Value = task_name;

        param[3] = new SqlParameter("@tasktdesc", SqlDbType.VarChar);
        param[3].Value = task_desc; ;

        param[4] = new SqlParameter("status", SqlDbType.VarChar);
        param[4].Value = "assigned";

        
            int i = SqlHelper.ExecuteNonQuery(clsconnection.getcinstr(), CommandType.StoredProcedure, "task_insert", param);
            if (i != 0)
            {
                message = "record in serted succesfully";
            }
            else
            {
                message = "give proper information";
            }

        

        
    }

    public SqlDataReader pm_assigned(int eid)
    {
        SqlParameter[] param = new SqlParameter[1];

        param[0] = new SqlParameter("@eid", SqlDbType.Int);
        param[0].Value = eid;

        SqlDataReader dr = SqlHelper.ExecuteReader(clsconnection.getcinstr(), CommandType.StoredProcedure, "viewtasks", param);
        return dr;
    }

// @projectid int,@eid int ,@taskname varchar(50),@tasktdesc varchar(50),@status varchar(50))

}