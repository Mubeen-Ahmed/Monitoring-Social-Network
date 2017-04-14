using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Data;

/// <summary>
/// Summary description for new_designation
/// </summary>
public class new_designation
{
	public new_designation()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool insert_designation(string name, string desc, out string status)
    {
        SqlParameter[] param = new SqlParameter[2];

        param[0] = new SqlParameter("@designame", SqlDbType.VarChar);
        param[0].Value = name;

        param[1] = new SqlParameter("@desigdesc", SqlDbType.VarChar);
        param[1].Value = desc;

        int i = SqlHelper.ExecuteNonQuery(clsconnection.getcinstr(), CommandType.StoredProcedure, "design_insert", param);

        if (i > 0)
        {
            status = "record has been inserted";
            return true;
        }
        else
        {
            status = "record not inserted";
            return false;

        }


    }

    public SqlDataReader getdetails()
    {
        SqlDataReader dr = SqlHelper.ExecuteReader(clsconnection.getcinstr(), CommandType.StoredProcedure, "viewdesig", null);
        return dr;
        //  DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "viewdesig");
        
    }


}