using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace dpp
{
    public partial class AdUser2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Uname"]!=null)
            {
                string username = Session["Uname"].ToString();
                string sqlquery = "select * from dhanu2 where name= @Uname ";
                string sql1 = @"Data Source=LEVI\SQLEXPRESS;Initial Catalog=empreg;Integrated Security=true";

                SqlConnection con = new SqlConnection(sql1);
                con.Open();
                SqlCommand cmd = new SqlCommand(sqlquery, con);
                cmd.Parameters.AddWithValue("@Uname", username);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    Label1.Text = dr["name"].ToString();
                    Label2.Text = dr["pass"].ToString();
                    Label3.Text = dr["confpass"].ToString();
                    Label4.Text = dr["id"].ToString();
                    Label5.Text = dr["mail"].ToString();
                    Label6.Text = dr["number"].ToString();
                    Label7.Text = dr["designation"].ToString();
                    Label8.Text = dr["DOB"].ToString();
                    Label9.Text = dr["age"].ToString();



                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}