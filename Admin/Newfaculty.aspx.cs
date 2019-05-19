using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;

namespace cms.Admin
{

    public partial class Newfaculty : System.Web.UI.Page
    {
        Businesslayer bl = new Businesslayer();
        Datalayer dl = new Datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            bl.f_Solution = ddl1.SelectedItem.ToString();
            bl.f_Firstname = FirstName.Text;
            bl.f_Middlename = MiddleName.Text;
            bl.f_lastname = LastName.Text;
            bl.f_Dob = Dob.Text;
            if (Male.Checked == true)
            {
                bl.f_gender = Male.Text;
            }
            else
            {
                bl.f_gender = Female.Text;
            }
            bl.f_Address = Address.Text;
            bl.f_State = State.Text;
            bl.f_city = City.Text;
            bl.f_emailid = Email.Text;
            bl.f_Mobleno = Phone.Text;
            bl.f_Password = Password.Text;
            if (RadioButton1.Checked == true)
            {
                bl.f_Qualification = RadioButton1.Text;
            }
            else if (RadioButton2.Checked == true)
            {
                bl.f_Qualification = RadioButton2.Text;
            }
            else if (RadioButton3.Checked == true)
            {
                bl.f_Qualification = RadioButton3.Text;
            }
            else if (RadioButton4.Checked == true)
            {
                bl.f_Qualification = RadioButton4.Text;
            }
            else if (RadioButton5.Checked == true)
            {
                bl.f_Qualification = RadioButton5.Text;
            }
            else if (RadioButton6.Checked == true)
            {
                bl.f_Qualification = RadioButton6.Text;
            }
            else if (RadioButton7.Checked == true)
            {
                bl.f_Qualification = RadioButton7.Text;
            }
            else if (RadioButton8.Checked == true)
            {
                bl.f_Qualification = RadioButton8.Text;
            }
            else
            {
                bl.f_Qualification = RadioButton9.Text;
            }
            bl.f_Aadharno = Aadharno.Text;
            bl.f_SelectBranch = selectbranch.Text;
            bl.Facultyreg();

            string username = string.Empty;
            string password = string.Empty;
            string constr = (@"Data Source=WINDOWS-5AGCKB9\SQLEXPRESS;Initial Catalog=cms;Integrated Security=True");
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT [FirstName], [Password] FROM Faculty_Registration WHERE EmailId = @Email"))
                {
                    cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["FirstName"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (!string.IsNullOrEmpty(password))
            {
                MailMessage mm = new MailMessage("udumangameta23@gmail.com", Email.Text.Trim());
                mm.Subject = "Account Creation";
                string body = "Hello " + FirstName.Text.Trim() + ",";
                body += "<br /><br />Your account is succesfully created for CMS System";
                /*body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("CS.aspx", "CS_Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";*/
                body += "<br />Your Password is{1}.<br /><br />'" + username.ToString() + "','" + password.ToString() + "'";
                body += "<br /><br />Thanks";
                mm.Body = body;
                /*mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);*/
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "udumangameta23@gmail.com";
                NetworkCred.Password = "8426957845@umang";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                /*lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Password has been sent to your email address.";*/

                FirstName.Text = "";
                MiddleName.Text = "";
                LastName.Text = "";
                FirstName.Focus();
            }
        }
    }
}