using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using JqueryDataTable.DAL.Model;

namespace JqueryDataTable.DAL.Gateway
{
    public class EmployeeGateway : BaseGateway
    {
        public List<Employee> GetAllEmployees()
        {
            string query = "SELECT * FROM " + dbTableName;
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<Employee> emploteeList = new List<Employee>();
            while (Reader.Read())
            {
                Employee aEmployee = new Employee();
//              
                aEmployee.Id = Convert.ToInt32(Reader["id"]);
                aEmployee.Name = Reader["name"].ToString();
                aEmployee.Position = Reader["position"].ToString();
                aEmployee.Office = Reader["office"].ToString();
                aEmployee.Age = Convert.ToInt32(Reader["age"]);


                emploteeList.Add(aEmployee);
            }

            Reader.Close();
            Connection.Close();
            return emploteeList;
        }
    }
}