using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace cms
{
    public partial class Complainform : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        string s;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            s = "select Problemdomain from Problem_Detail where Problemname='" + ddl1.SelectedItem.ToString() + "'";
            ds = dl.getdata(s);
            DropDownList1.Items.Clear();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                bl.Problem_domain = ds.Tables[0].Rows[i][0].ToString();
                DropDownList1.Items.Add(bl.Problem_domain);
            }
            
        }
    }
}