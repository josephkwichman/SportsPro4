using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;


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

