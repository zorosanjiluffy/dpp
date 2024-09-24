using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace dpp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
              protected void Username(object sender, EventArgs e)
        {
            
        }
            
        protected void Page_Load(object sender, EventArgs e)
        {
            //string sql1 = @"Data Source=TUF\SQLEXPRESS07;Initial Catalog=empreg;Integrated Security=true";
            //SqlConnection conn = new SqlConnection(sql1);
            //conn.Open();

            //string sqlquery="select * from dhanu1 where Username='"+Uname+"'";
            //SqlCommand cmd = new SqlCommand(sqlquery, conn);
            //SqlDataReader dr = cmd.ExecuteReader();

            //if(dr.HasRows)
            //{
            //    dr.Read();
                Label1.Text = Session["Uname"].ToString();
            
     
        }
    }
}