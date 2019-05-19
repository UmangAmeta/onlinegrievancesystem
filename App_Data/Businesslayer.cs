using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


namespace cms
{
    public class Businesslayer
    {

        private Datalayer dl;

        public Businesslayer()
        {
             dl = new Datalayer();
           
        }
        DataSet ds = new DataSet();
        //Datalayer dl = new Datalayer();
        string complianid, Department, Probem, Descriptions, Username, adname, adpassword, codate, cotime, complainstatus,Fsolution,FFirstname,FMiddlename,FLastname,FDob,FGender,FAddress,FState,FCity,FEmailid,FMobileno,FPassword,FQualification,FAadharno,FBranch,WSolution,WFirstName,WMiddleName,WLastName,WAddress,WState,WCity,WMobileno,WAadharno,WEmailid,WDob,WGender,problemdomain;
        string qu;
        
        public string Complain_Status
        {
            set { complainstatus = value; }
            get { return complainstatus; }
        }
        public string Co_date
        {
            set { codate = value; }
            get { return codate; }
        }
        public string Co_time
        {
            set { cotime = value; }
            get { return cotime; }
        }
        public string ad_name
        {
            set { adname = value; }
            get { return adname; }
        }
        public string ad_password
        {
            set { adpassword = value; }
            get { return adpassword; }
        }
        public string User_name
        {
            set { Username = value; }
            get { return Username; }
        }
        public string Des_cription
        {
            set { Descriptions = value; }
            get { return Descriptions; }
        }
        public string Com_plain
        {
            set { complianid = value; }
            get { return complianid; }
        }
        public string de_partment
        {
            set { Department = value; }
            get { return Department; }
        }
        public string Pr_blem
        {
            set { Probem = value; }
            get { return Probem; }
        }
        public string f_Solution
        {
            set { Fsolution = value; }
            get { return Fsolution; }
        }
        public string f_Firstname
        {
            set { FFirstname = value; }
            get { return FFirstname; }
        }
        public string f_Middlename
        {
            set { FMiddlename = value; }
            get { return FMiddlename; }
        }
        public string f_lastname
        {
            set { FLastname = value; }
            get { return FLastname; }
        }
        public string f_Dob
        {
            set { FDob = value; }
            get { return FDob; }
        }
        public string f_gender
        {
            set { FGender = value; }
            get { return FGender; }
        }
        public string f_Address
        {
            set { FAddress = value; }
            get { return FAddress; }
        }
        public string f_State
        {
            set { FState = value; }
            get { return FState; }
        }
        public string f_city
        {
            set { FCity = value; }
            get { return FCity; }
        }
        public string f_emailid
        {
            set { FEmailid = value; }
            get { return FEmailid; }
    }
        public string f_Mobleno
        {
            set { FMobileno = value; }
            get { return FMobileno; }
        }
        public string f_Password
        {
            set { FPassword = value; }
            get { return FPassword; }
        }
        public string f_Qualification
        {
            set { FQualification = value; }
            get { return FQualification; }
        }
        public string f_Aadharno
        {
            set { FAadharno = value; }
            get { return FAadharno; }
        }
        public string f_SelectBranch
        {
            set { FBranch = value; }
            get { return FBranch; }
        }
        public string W_Solution
        {
            set { WSolution = value; }
            get { return WSolution; }
        }
        public string W_Firstname
        {
            set { WFirstName = value; }
            get { return WFirstName; }
        }
        public string W_Middlename
        {
            set { WMiddleName = value; }
            get { return WMiddleName; }
        }
        public string W_Lastname
        {
            set { WLastName = value; }
            get { return WLastName; }
        }
        public string W_Address
        {
            set { WAddress = value; }
            get { return WAddress; }
        }
        public string W_Aadharno
        {
            set { WAadharno = value; }
            get { return WAadharno; }
        }
        public string W_Emailid
        {
            set { WEmailid = value; }
            get { return WEmailid; }
        }
        public string W_Dob
        {
            set { WDob = value; }
            get { return WDob; }
        }
        public string W_Gender
        {
            set { WGender = value; }
            get { return WGender; }
        }
        public string W_State
        {
            set { WState = value; }
            get { return WState; }
        }
        public string W_City
        {
            set { WCity = value; }
            get { return WCity; }
        }
        public string W_Mobileno
        {
            set { WMobileno = value; }
            get { return WMobileno; }
        }
        public string Problem_domain
        {
            set { problemdomain = value; }
            get { return problemdomain; }
        }
        public void comidauto()
        {
            qu = "select * from Complain order by ComplainId desc";
            ds = dl.getdata(qu);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Com_plain = Convert.ToString(Convert.ToInt32(101));
            }
            else
            {
                Com_plain = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
            }
        }
        public void insertco()
        {
            qu = "insert into Complain values('" + Com_plain + "','" + User_name + "','" + Co_time + "','" + Co_date + "','" + de_partment + "','" + Pr_blem + "','" + Des_cription + "','" + Complain_Status + "')";
            dl.setdata(qu);

        }
        public void Facultyreg()
        {
            qu = "insert into Faculty_Registration values('" + f_Solution + "','" + f_Firstname + "','" + f_Middlename + "','" + f_lastname + "','" + f_Dob + "','" + f_gender + "','" + f_Address + "','" + f_State + "','" + f_city + "','" + f_emailid + "','" + f_Mobleno + "','" + f_Password + "','" + f_Qualification + "','" + f_Aadharno + "','" + f_SelectBranch + "')";
            dl.setdata(qu);
        }
        public void Workerreg()
        {
            qu = "insert into Worker_Registration values('" + W_Solution + "','" + W_Firstname + "','" + W_Middlename + "','" + W_Lastname + "','" + W_Dob + "','" + W_Gender + "','" + W_Address + "','" + W_State + "','" + W_City + "','" + W_Emailid + "','"+W_Mobileno+"','"+W_Aadharno+"')";
            dl.setdata(qu);        
        }
        public void serach_Record()
        {
            qu = "select * from Complain where ComplainId='" + Com_plain + "'";
            ds = dl.getdata(qu);

            User_name = ds.Tables[0].Rows[0][1].ToString();
            Co_time = ds.Tables[0].Rows[0][2].ToString();
            Co_date = ds.Tables[0].Rows[0][3].ToString();
            de_partment = ds.Tables[0].Rows[0][4].ToString();
            Pr_blem = ds.Tables[0].Rows[0][5].ToString();
            Des_cription = ds.Tables[0].Rows[0][6].ToString();
            Complain_Status = ds.Tables[0].Rows[0][7].ToString();
        }
        public void serach_status()
        {
            qu = "select * from Complain where ComplainId='" + Com_plain + "'";
            ds = dl.getdata(qu);
            Complain_Status = ds.Tables[0].Rows[0][7].ToString();
        }
        public void statusup()
        {
            qu = "update Complain set Complainstatus='" + Complain_Status+ "' where ComplainId='" + Com_plain + "'";
            dl.setdata(qu);
        }
        public DataSet Allcomplain()
        {
            qu = "select * from Complain where Departmentname='" + de_partment + "'";
            ds = dl.getdata(qu);
            return ds;
        }
    }
}