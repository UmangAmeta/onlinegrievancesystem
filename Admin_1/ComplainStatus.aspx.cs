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
    public partial class ComplainStatus : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            label3.Text = Session["AdminName"].ToString();
            if (!IsPostBack)
            {
                bl.Com_plain= Request.QueryString["ComplainId"].ToString();
                Label1.Text = bl.Com_plain;
                bl.serach_status();
                TextBox1.Text = bl.Complain_Status;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bl.Com_plain = Label1.Text;
            bl.Complain_Status = TextBox1.Text;
            bl.statusup();
        }
    }
}