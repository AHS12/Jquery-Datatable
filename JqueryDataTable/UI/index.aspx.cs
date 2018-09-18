using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JqueryDataTable.BLL;

namespace JqueryDataTable
{
    public partial class index : System.Web.UI.Page
    {
//        protected void GridView_PreRender(object sender, EventArgs e)
//        {
//            // You only need the following 2 lines of code if you are not 
//            // using an ObjectDataSource of SqlDataSource
//            LoadEmployees();
//
//            if (EmployeeTable.Rows.Count > 0)
//            {
//                //This replaces <td> with <th> and adds the scope attribute
//                EmployeeTable.UseAccessibleHeader = true;
//
//                //This will add the <thead> and <tbody> elements
//                EmployeeTable.HeaderRow.TableSection = TableRowSection.TableHeader;
//
//                //This adds the <tfoot> element. 
//                //Remove if you don't have a footer row
//                EmployeeTable.FooterRow.TableSection = TableRowSection.TableFooter;
//            }
//
//        }

        EmployeeManager employee = new EmployeeManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadEmployees();
            }
        }

        private void LoadEmployees()
        {
            EmployeeTable.DataSource = employee.GetAllEmployees();
            EmployeeTable.DataBind();
        }
    }
}