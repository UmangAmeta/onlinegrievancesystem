using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace cms.Admin
{
    public partial class Allcomplain : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            label3.Text = Session["AdminName"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bl.de_partment = DropDownList1.SelectedItem.ToString();
            ds = bl.Allcomplain();
            if(ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("No complain post by in these department");
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}