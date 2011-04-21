using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerSurvey : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        SetFocus(txtBxCustID);
       
    }


    protected void button1_click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
          int userID = int.Parse(txtBxCustID.Text);
          lbIncidents.Items.Clear();
          this.getSelectedCustomer();
            if(lbIncidents.Items.Count >1)
             {
                this.EnablePage();
                lbIncidents.SelectedIndex = 1;
             }
        }
    }

    private void EnablePage()
    {
        if (Page.IsValid)
        {
            Label1.Enabled = true;
            Label2.Enabled = true;
            Label3.Enabled = true;
            Label4.Enabled = true;
            Label5.Enabled = true;
            Label6.Enabled = true;
            lbIncidents.Enabled = true;
            RadioButtonList1.Enabled = true;
            RadioButtonList2.Enabled = true;
            RadioButtonList3.Enabled = true;
            txtBxComments.Enabled = true;
            CheckBox1.Enabled = true;
            btnSubmit.Enabled = true;
        }
        else
        {
            lbIncidents.Items.Clear();
            Label7.Text = ("No Incidents for this customer exist");
        }
   
    }
    private void getSelectedCustomer()
    {
        DataView IncidentTable = (DataView)AccessDataSource1.Select(DataSourceSelectArguments.Empty);
        IncidentTable.RowFilter = " DateClosed is not NULL AND CustomerID = '" + int.Parse(txtBxCustID.Text) + "'";
        Incident incident= new Incident();
        int rowIndex = 0;
        lbIncidents.Items.Add(new ListItem("--Select an Incident--", null));
        foreach (DataRowView incidentRows in IncidentTable)
        {
            DataRowView incidentRow  = IncidentTable[0];
            incident.CustomerID = (int)incidentRows["CustomerId"];
            incident.IncidentId = (int)incidentRows["IncidentID"];
            incident.ProductCode = incidentRows["ProductCode"].ToString();
            incident.TechID = (int)incidentRows["TechID"];
            incident.Title = (string)incidentRows["Title"];
            incident.DateOpened = (DateTime)incidentRows["DateOpened"];
            incident.DateClosed = (DateTime)incidentRows["DateClosed"];
            rowIndex = rowIndex + 1;
            lbIncidents.Items.Add(incident.CustomerIncidentDisplay());
         }       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Survey survey = new Survey();
        survey.CustomerID = int.Parse(txtBxCustID.Text.ToString());
        survey.IncidentID = lbIncidents.SelectedIndex;
        survey.ResponseTime = int.Parse(RadioButtonList1.SelectedValue);
        survey.TechEfficiency = int.Parse(RadioButtonList2.SelectedValue);
        survey.Resolution = int.Parse(RadioButtonList3.SelectedValue);
        survey.Comments = txtBxComments.Text;
        bool cntctMethd;

        if (CheckBox1.Checked)
        {
            cntctMethd = true;
        }
        else
        {
            cntctMethd = false;
        }

        Session.Add("SessioncntctMethd", cntctMethd);
        Response.Redirect("SurveyComplete.aspx");
    }
}