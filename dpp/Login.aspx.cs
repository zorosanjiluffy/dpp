using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace dpp
{
    
          public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

           
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string sql1 = @"Data Source=LEVI\SQLEXPRESS;Initial Catalog=empreg;Integrated Security=true";
            SqlConnection conn = new SqlConnection(sql1);

            SqlCommand cmd;
            SqlDataReader dr;
            if (txtUsername.Text == "admin" && txtPassword.Text == "admin")
            {
            
                Response.Redirect("Ad1.aspx");
            }
            if (txtUsername.Text != "" && txtPassword.Text != "")
            {


                cmd = new SqlCommand("Select * from dhanu2 where name='" + txtUsername.Text + "' And pass='" + txtPassword.Text + "'", conn);

                conn.Open();



                dr = cmd.ExecuteReader();
                {
                    Session["Uname"] = Username;
                if (dr.HasRows)
                    Response.Redirect("AdUser.aspx");
                }

            }
        }
    }
    }
