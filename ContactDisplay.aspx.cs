using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactDisplay : System.Web.UI.Page
{
    private SortedList contactDisplay;
    protected void Page_Load(object sender, EventArgs e)
    {
        contactDisplay = this.GetContact();

        if (!IsPostBack)
        { 
          this.DisplayContact();
        }
    }

    private SortedList GetContact()
    {
        if (Session["ContactDisplay"] == null)
        {
            Session.Add("Customer", new SortedList());
        }
        return (SortedList)Session["ContactDisplay"];
    }

    private void DisplayContact()
    {
        CustomerListBox.Items.Clear();

        Customer customer;

        foreach (DictionaryEntry contactEntry in contactDisplay)
        {
            customer = (Customer)contactEntry.Value;
            Session["SessionCustomer"] = customer;
            CustomerListBox.Items.Add(customer.DisplayContact());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (contactDisplay.Count > 0 &&  CustomerListBox.SelectedIndex > -1)
        {
            contactDisplay.RemoveAt(CustomerListBox.SelectedIndex);
            this.DisplayContact();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        contactDisplay.Clear();
        CustomerListBox.Items.Clear();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomerDisplay.aspx");
    }
}