using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
//using System.Configuration;
using System.Windows;
using System.Data;
//using System.Threading;

namespace dpp
{
    
    public partial class Register : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
               Random rd = new Random();
              int ranum = rd.Next(0, 1000);
               lblId.Text = ranum.ToString();
            }

            
            
        }
        
       
    
        public void Password(object sender, ServerValidateEventArgs args)
        {
            Regex f = new Regex("^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#$%^&*_]).{8,}$");
            if (f.IsMatch(txtPassword.Text))
                args.IsValid = true;

            else
                args.IsValid = false;







        }
      

       

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            //if (ddlDesignation.Text != "select")
            //{
            //    Response.Redirect("Login.aspx");
            //}
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dpp"].ConnectionString);
            string connection = @"Data Source=LEVI\SQLEXPRESS;Initial Catalog=empreg;Integrated Security=True";
            SqlConnection con = new SqlConnection(connection);

        con.Open();
            string query1 = "insert into dhanu2 values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtConfpassowrd.Text + "','" + lblId.Text + "'," +
                "'" + txtMail.Text + "','" + txtNumber.Text + "','" + ddlDesignation.Text + "','" + txtDOB.Text + "','" + txtAge.Text + "')";
            SqlCommand cmd = new SqlCommand(query1,con);
            int dd = cmd.ExecuteNonQuery();

            if (dd > 0)
            {
                Response.Write("<script>alert('Hi " + txtUsername.Text + " ,You Registered successfully')</script>");
                Response.Redirect("Login.aspx");
            }



            else
                Response.Write("Something isn't right");
            con.Close();
        }

        protected void txtAge_TextChanged(object sender, EventArgs e)
        {
          
        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {
            DateTime age = Convert.ToDateTime(txtDOB.Text);
            int cage = Convert.ToInt32(DateTime.Now.Year - age.Year);
            txtAge.Text = cage.ToString();
        }

        protected void txtNumber_TextChanged(object sender, EventArgs e)
        {
            if (!txtNumber.Text.StartsWith("+91"))
            {
                txtNumber.Text = "+91" + txtNumber.Text;
            }
        }
    }
}