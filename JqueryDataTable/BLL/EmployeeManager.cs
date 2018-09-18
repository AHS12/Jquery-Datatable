using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using JqueryDataTable.DAL.Gateway;
using JqueryDataTable.DAL.Model;

namespace JqueryDataTable.BLL
{
    public class EmployeeManager
    {
        EmployeeGateway employeeGateway = new EmployeeGateway();

        public List<Employee> GetAllEmployees()
        {
            return employeeGateway.GetAllEmployees();
        }
    }
}