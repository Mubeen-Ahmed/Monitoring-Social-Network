using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for clsconnection
/// </summary>
public class clsconnection
{

    public static string getcinstr()
    {
        return ConfigurationManager.ConnectionStrings["taskallocation"].ConnectionString; 
            
    }
	public clsconnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}