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
    public partial class Newcomplain : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        DataSet ds = new DataSet();
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*label3.Text = Session["AdminName"].ToString();*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            s = "select * from Complain where Departmentname='" + DropDownList1.SelectedItem.ToString() + "' and Date='" + TextBox1.Text + "'";
            ds = dl.getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('no complain post by user')</script>");
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }
    }
}