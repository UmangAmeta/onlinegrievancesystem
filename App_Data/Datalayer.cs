using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace cms
{
    public class Datalayer
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds = new DataSet();

        public Datalayer()
        {

            try
            {
                string cs = ConfigurationManager.ConnectionStrings["cmsConnectionString"].ToString();
                con = new SqlConnection(cs);
                con.Open();
            }
            catch (Exception ex)
            {

            }
        }
        public void setdata(string qu1)
        {
            cmd = new SqlCommand(qu1, con);
            cmd.ExecuteNonQuery();

        }
        public DataSet getdata(string qu1)
        {
            da = new SqlDataAdapter(qu1, con);
            da.Fill(ds);
            return ds;
        }
    }
}