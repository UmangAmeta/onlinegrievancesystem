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
    public partial class Commonpage : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        string qu, qu1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            bl.ad_name = Email_1.Text;
            bl.ad_password = Pass_1.Text;


            qu = "select * from AdminRegister where AdminName='" + Email_1.Text + "' and AdminPassword='" + Pass_1.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.getdata(qu);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["AdminName"] = Email_1.Text;
                Response.Redirect("Admin/Admin.aspx");

            }
            else
            {
                qu = "select * from Userinfo where Username='" + Email_1.Text + "' and Password='" + Pass_1.Text + "'";
                DataSet ds1 = new DataSet();
                ds1 = dl.getdata(qu);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    Session["Username"] = Email_1.Text;
                    Response.Redirect("/Userfaculty/FacultyStudent.aspx");
                }
                else
                {
                    InvalidCredentialsMessage.Visible = true;
                }


            }
            
        }
    }
}