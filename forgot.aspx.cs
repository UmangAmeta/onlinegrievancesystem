using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace cms
{
    public partial class forgot : System.Web.UI.Page
    {
        string uniqueCode = string.Empty;
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_1(object sender, EventArgs e)
        {
            try
            {
                string constr = (@"Data Source=WINDOWS-5AGCKB9\SQLEXPRESS;Initial Catalog=cms;Integrated Security=True");
                SqlConnection con = new SqlConnection(constr);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd = new SqlCommand("select * from Tbl_Login where EmailId COLLATE Latin1_general_CS_AS=@emailid", con);


                cmd.Parameters.AddWithValue("@emailId", Convert.ToString(txtEmailId.Text.Trim()));
                dr = cmd.ExecuteReader();
                cmd.Dispose();
                if (dr.HasRows)
                {
                    dr.Read();
                    //generate unique code
                    uniqueCode = Convert.ToString(System.Guid.NewGuid());
                    //Updating an unique random code in then UniquCode field of the database table
                    cmd = new SqlCommand("update Tbl_Login set UniqueCode=@uniqueCode where  EmailId=@emailid", con);
                    cmd.Parameters.AddWithValue("@uniqueCode", uniqueCode);
                    cmd.Parameters.AddWithValue("@emailid", txtEmailId.Text.Trim());
                    string u = txtEmailId.Text;
                    StringBuilder strBody = new StringBuilder();
                    strBody.Append("<b>Dear</t></t></t></t>" + u + ",<br/><br/></b>");
                    strBody.Append("Plz Click on the followin link to reset you password");
                    strBody.Append("<br/>");
                    //Passing emailid,username and generated unique code via querystring. For testing pass your localhost number and while making online pass your domain name instead of localhost path.
                    strBody.Append("<a href=http://localhost:34412/ResetPassword.aspx?EmailId=" + txtEmailId.Text + "&uCode=" + uniqueCode + ">Click here to change your password</a>");
                    // sbody.Append("&uCode=" + uniqueCode + "&uName=" + txtUserName.Text + ">Click here to change your password</a>");
                    strBody.Append("<br/><br>");
                    strBody.Append("<b>CMS Technologies,Udaipur");

                    System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage("udumangameta23@gmail.com", dr["EmailId"].ToString(), "Reset Your Password", strBody.ToString());
                    //pasing the Gmail credentials to send the email
                    mail.IsBodyHtml = true;
                    mail.Body = strBody.ToString();
                    mail.Subject = "Reset your Password";
                    System.Net.NetworkCredential mailAuthenticaion = new System.Net.NetworkCredential("udumangameta23@gmail.com", "8426957845@umang");

                    System.Net.Mail.SmtpClient mailclient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
                    mailclient.EnableSsl = true;
                    mailclient.UseDefaultCredentials = false;
                    mailclient.Credentials = mailAuthenticaion;
                    mail.IsBodyHtml = true;
                    mailclient.Send(mail);
                    dr.Close();
                    dr.Dispose();
                    cmd.ExecuteReader();
                    cmd.Dispose();
                    con.Close();

                    lblStatus.Text = "Reset password link has been sent to your email address";
                    txtEmailId.Text = string.Empty;
                }
                else
                {
                    lblStatus.Text = "Please enter valid email address or username";
                    txtEmailId.Text = string.Empty;

                    con.Close();
                    return;
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Error Occured: " + ex.Message.ToString();
            }
            finally
            {
                cmd.Dispose();
            }

        }
    }
}