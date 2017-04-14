using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Microsoft.ApplicationBlocks.Data;

/// <summary>
/// Summary description for login
/// </summary>
public class login2
{
	public login2()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string verifyuser(string uid, string pws, out int eid, out string status)
    {
        eid = 0;
        status = "";
        string designname = "";

        // creating parameters to send to stored procedure

        SqlParameter[] param = new SqlParameter[3];
        param[0] = new SqlParameter("@username", SqlDbType.VarChar);
        param[0].Value = uid;

        param[1] = new SqlParameter("@password", SqlDbType.VarChar);
        param[1].Value = pws;

        param[2] = new SqlParameter("@eid", SqlDbType.Int);
        param[2].Direction = ParameterDirection.Output;

        // connection to database

        DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "splogin", param);

        eid = Convert.ToInt32(param[2].Value);

        if (eid != 0)
        {
            designname = ds.Tables[0].Rows[0][0].ToString();
        }
        else
        {
            return status = "invalid user";
        }
        return designname;


    }



}