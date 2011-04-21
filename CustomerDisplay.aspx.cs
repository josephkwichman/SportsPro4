using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerDisplay : System.Web.UI.Page
{
    private Customer selectedCustomer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataBind();
            Label9.Visible = false;
        
        }
        selectedCustomer = this.GetSelectedCustomer();
        Label3.Text = "<br />" + selectedCustomer.Address; 
        Label4.Text = selectedCustomer.City + ",  " + selectedCustomer.State + ", " + selectedCustomer.ZipCode;
        Label6.Text = selectedCustomer.Phone;
        Label8.Text = selectedCustomer.Email;

    }

          private Customer GetSelectedCustomer()
        {


            DataView CustomerTable = (DataView)AccessDataSource1.Select(DataSourceSelectArguments.Empty);
            CustomerTable.RowFilter = "CustomerID ='" + DropDownList1.SelectedValue + "'";
            DataRowView customerRow = CustomerTable[0];
            Customer Customer = new Customer();
            Customer.CustomerID = customerRow["CustomerID"].ToString();
            Customer.Name = customerRow["Name"].ToString();
            Customer.Address = customerRow["Address"].ToString();
            Customer.City = customerRow["City"].ToString();
            Customer.State = customerRow["State"].ToString();
            Customer.ZipCode = customerRow["ZipCode"].ToString();
            Customer.Phone = customerRow["Phone"].ToString();
            Customer.Email = customerRow["Email"].ToString();
            return Customer;
         }

          protected void Button1_Click(object sender, EventArgs e)
          {
              if (Page.IsValid)
              {
                  SortedList contactDisplay = this.GetCustomer();
                  string Customer = selectedCustomer.CustomerID;

                  if (!(contactDisplay.ContainsKey(Customer)))
                  {
                      contactDisplay.Add(Customer, selectedCustomer);
                      Response.Redirect("ContactDisplay.aspx");

                  }
                  else
                  {
                      Label9.Visible = true;
                  
                  }
              }
          }
         private SortedList GetCustomer()
        {
            if (Session["ContactDisplay"] == null)
            {
                Session.Add("ContactDisplay", new SortedList());
            }
            return (SortedList)Session["Contactdisplay"];
        }
         protected void Button2_Click(object sender, EventArgs e)
         {
             Response.Redirect("ContactDisplay.aspx");
         }
}

