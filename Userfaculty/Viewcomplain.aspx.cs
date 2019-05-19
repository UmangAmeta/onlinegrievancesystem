using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace cms
{
    public partial class Viewcomplain : System.Web.UI.Page
    {
        Datalayer dl = new Datalayer();
        Businesslayer bl = new Businesslayer();
        DataSet ds = new DataSet();
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            s = "select * from Complain where Username='" + Session["Username"].ToString() + "'";
            ds = dl.getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('you have no complain post')</script>");
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}