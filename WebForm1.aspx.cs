using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace cms
{
    public partial class WebForm1 : System.Web.UI.Page
    {

      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs=(@"Data Source=WINDOWS-5AGCKB9\SQLEXPRESS;Initial Catalog=cms;Integrated Security=True");
            using (SqlConnection con=new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spresetPassword", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter paramUsername = new SqlParameter("@UserName", TextBox1.Text);
                cmd.Parameters.Add(paramUsername);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while(rdr.Read())
                {
                    if(Convert.ToBoolean(rdr["Returncode"]))
                    {
                        spresetPassword(rdr["Email"].ToString(), TextBox1.Text, rdr["Uniqueid"].ToString());
                        Label1.Text = "an email is sent your register mail id";

                    }
                    else
                    {
                        Label1.ForeColor = System.Drawing.Color.Red;
                        Label1.Text = "user name not found";
                    }
                }

            }
            
        }
        private void spresetPassword(string Toemail, string Username, string Uniqueid)
        {
            MailMessage mailmessage = new MailMessage("udumangameta23@gmail.com", Toemail);
            StringBuilder sbemail = new StringBuilder();
            sbemail.Append("Dear" + Username + ",<br/> <br/>");
            sbemail.Append("Plz Click following link to reset Your Password");
            sbemail.Append("<br/>");
            sbemail.Append("http://localhost/cms/WebForm1.aspx?Uid=" + Uniqueid);
            sbemail.Append("<br/><br/>");
            sbemail.Append("<b>CMS TECHNOLOGY UDAIPUR</b>");

            mailmessage.IsBodyHtml = true;
            mailmessage.Body = sbemail.ToString();
            mailmessage.Subject = "Reset Your Password";
            SmtpClient smtpclient = new SmtpClient("Smtp.gmail.com", 587);
            smtpclient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "udumangameta23@gmail.com",
                Password = "8426957845@umang"
            };
            smtpclient.EnableSsl = true;
            smtpclient.Send(mailmessage);
        }
    }
}