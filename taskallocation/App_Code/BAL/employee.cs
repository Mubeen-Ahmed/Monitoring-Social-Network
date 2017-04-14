using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Microsoft.ApplicationBlocks.Data;
 
/// <summary>
/// Summary description for employee
/// </summary>
public class employee
{
	public employee()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string emp_insert(string fname, string lname, short gender, string qualification, string tech, int did, string address
        , string mobile, string email, string uid, string pwd)
    {
        string satatus = "";
        SqlParameter[] param = new SqlParameter[11];

        param[0] = new SqlParameter("@firstname",SqlDbType.VarChar);
        param[0].Value = fname;

        param[1] = new SqlParameter("@lastname", SqlDbType.VarChar);
        param[1].Value=lname;

        param[2]=new SqlParameter("@gender",SqlDbType.Bit);
        param[2].Value=gender;

        param[3]=new SqlParameter("@qualification",SqlDbType.VarChar);
        param[3].Value=qualification;

        param[4]=new SqlParameter("@technology",SqlDbType.VarChar);
        param[4].Value=tech;

        param[5]=new SqlParameter("@did",SqlDbType.VarChar);
        param[5].Value=did;

        param[6]=new SqlParameter("@address",SqlDbType.VarChar);
        param[6].Value=address;

        param[7]=new SqlParameter("@mobile",SqlDbType.VarChar);
        param[7].Value=mobile;

        param[8] = new SqlParameter("@email", SqlDbType.VarChar);
        param[8].Value=email;

        param[9]=new SqlParameter("@uid",SqlDbType.VarChar); 
        param[9].Value=uid;

        param[10] = new SqlParameter("@pwd", SqlDbType.VarChar);
        param[10].Value=pwd;

       int  i=  SqlHelper.ExecuteNonQuery(clsconnection.getcinstr(), CommandType.StoredProcedure, "employeeinsert",param);
     //   SqlHelper.ExecuteReader(clsconnection.getcinstr(), CommandType.StoredProcedure, "employeeinsert", param);
       if (i != 0)
       {
           satatus = "registered succesfully";
       }
       else
       {
           satatus = "unsuccesful";
       }
        return satatus;
    }

    public DataSet employee_get()
    {
        DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "getemployee", null);
        return ds;
    }
    public DataSet employee_get(int empid)
    {
        SqlParameter[] param = new SqlParameter[1];

       // param[0] = new SqlParameter("@eid", SqlDbType.Int);
      //  param[0].Value = empid;

        param[0] = new SqlParameter("@eid", empid);


        DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "getemployee", param);
        return ds;

    }
    

    public SqlDataReader  projectmngget()
    {
       SqlDataReader dr= SqlHelper.ExecuteReader(clsconnection.getcinstr(),CommandType.StoredProcedure,"get_project_manager",null);
       return dr;
    }



    // sample code//

    public DataSet employee_getdemo()
    {
        DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "sample_getemployee1", null);
        return ds;
    }

    // sample code ends here//

    //public SqlDataReader getdevelopers_task()
    //{
    //    SqlDataReader dr = SqlHelper.ExecuteReader(clsconnection.getcinstr(), CommandType.StoredProcedure, "sptask_closed", null);
    //    return dr;
    //}

    public DataSet getdevelopers_task()
    {
        DataSet ds=SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "sptask_closed", null);
        return ds;
    }

    public DataSet getdeveloper(int eid)
    {
        SqlParameter[] param = new SqlParameter[1];

        param[0]=new SqlParameter("@empid",SqlDbType.Int);
        param[0].Value=eid;

        DataSet ds=  SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "pm_developers",param);
        return ds;
    }

    public DataSet popup(int eid)
    {
        SqlParameter[] param = new SqlParameter[1];

        param[0] = new SqlParameter("@eid", SqlDbType.Int);
        param[0].Value = eid;

        DataSet ds = SqlHelper.ExecuteDataset(clsconnection.getcinstr(), CommandType.StoredProcedure, "popup", param);
        return ds;
    }
}
