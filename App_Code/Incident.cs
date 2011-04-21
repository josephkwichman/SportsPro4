using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Incident
/// </summary>
public class Incident
{
    public int IncidentId;
    public int CustomerID;
    public string ProductCode;
    public int TechID;
    public DateTime DateOpened;
    public DateTime DateClosed;
    public string Title;
    public string Description;

    public string CustomerIncidentDisplay()
    {
        return "Incident For " + ProductCode + " Closed " + DateClosed + "(" + Title + ")";
    }
}