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
    public partial class viewmores : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            label3.Text = Session["AdminName"].ToString();
            if (!IsPostBack)
            {
                bl.Com_plain = Request.QueryString["ComplainId"].ToString();
                Label4.Text = bl.Com_plain;
                bl.serach_Record();
                Label5.Text = bl.User_name;
                Label6.Text = bl.Co_time;
                Label7.Text = bl.Co_date;
                Label8.Text = bl.de_partment;
                Label9.Text = bl.Pr_blem;
                Label10.Text = bl.Des_cription;
                Label11.Text = bl.Complain_Status;

            }

        }
    }
}