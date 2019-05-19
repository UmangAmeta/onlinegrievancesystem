using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cms
{
    public partial class Adminmaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["AdminName"]!=null)
            {
                Label1.Text = Session["AdminName"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}