using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace JqueryDataTable.DAL.Gateway
{
    public class BaseGateway
    {
        public SqlConnection Connection;
        public SqlCommand Command;
        public SqlDataReader Reader;
        public string dbTableName = "employee";
        public BaseGateway()
        {
            string conString = WebConfigurationManager.ConnectionStrings["EmployeeDBConString"].ConnectionString;
            Connection = new SqlConnection(conString);
        }
    }
}