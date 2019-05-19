using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cms.Admin
{
    public partial class Workerregistration : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {
            bl.W_Solution = ddl1.SelectedItem.ToString();
            bl.W_Firstname = FirstName.Text;
            bl.W_Middlename = MiddleName.Text;
            bl.W_Lastname = LastName.Text;
            bl.W_Dob = Dob.Text;
            if(Male.Checked==true)
            {
                bl.W_Gender = Male.Text;
            }
            else
            {
                bl.W_Gender = Female.Text;
            }
            bl.W_Address = Address.Text;
            bl.W_State = State.Text;
            bl.W_City = City.Text;
            bl.W_Emailid = Email.Text;
            bl.W_Mobileno = Phone.Text;
            bl.W_Aadharno = Aadharno.Text;
            bl.Workerreg();
            FirstName.Text = "";
            MiddleName.Text = "";
            LastName.Text = "";
            FirstName.Focus();

        }
    }
}