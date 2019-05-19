using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace cms
{
    public partial class Newcomplain : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        DataSet ds = new DataSet();
        string s,s1;
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Label1.Text = DateTime.Now.ToLongTimeString();
                Label2.Text = DateTime.Now.ToShortDateString();
                label3.Text = Session["Username"].ToString();
                
                s = "select Departmentname from Department";
                ds = dl.getdata(s);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    bl.de_partment = ds.Tables[0].Rows[i][0].ToString();
                    DropDownList1.Items.Add(bl.de_partment);
                }

                          }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bl.comidauto();
            bl.User_name = label3.Text;
            bl.Co_time = Label1.Text;
            bl.Co_date = Label2.Text;
            bl.de_partment = DropDownList1.SelectedItem.ToString();
            bl.Pr_blem = DropDownList2.SelectedItem.ToString();
            bl.Des_cription = TextBox1.Text;
            Label4.Text = "Process";
            bl.Complain_Status = Label4.Text;
            bl.insertco();
            TextBox1.Text = "";
        }
    }
}