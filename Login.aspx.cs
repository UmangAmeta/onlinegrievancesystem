using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



namespace cms
{
    public partial class Login : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        string qu,qu1;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            bl.ad_name = TextBox1.Text;
            bl.ad_password = TextBox2.Text;


            qu = "select * from AdminRegister where AdminName='" + TextBox1.Text + "' and AdminPassword='" + TextBox2.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.getdata(qu);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["AdminName"] = TextBox1.Text;
                Response.Redirect("Admin/Admin.aspx");

            }
            else
            {
                qu = "select * from Userinfo where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                DataSet ds1 = new DataSet();
                ds1 = dl.getdata(qu);
                if(ds1.Tables[0].Rows.Count>0)
                {
                    Session["Username"] = TextBox1.Text;
                    Response.Redirect("/Userfaculty/FacultyStudent.aspx");
                }
                else
                {
                    InvalidCredentialsMessage.Visible = true;
                }
                
 
            }
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgot.aspx");
        }

        
            


        }
    }

      
    
