using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace CustomerDisplay
{
    /// <summary>
    /// Summary description for Survey
    /// </summary>
    public class Survey
    {
        public int CustomerID;
        public int IncidentID;
        public int ResponseTime;
        public int TechEfficiency;
        public int Resolution;
        public string Comments;
        public bool Contact;
        public string ContactBy;
        public Survey()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}