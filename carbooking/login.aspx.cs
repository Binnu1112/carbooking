using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace carbooking
{
    public partial class login : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string decryptpwd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                decrypt();
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from userregstr where userid='" + id.Text.Trim() + "' AND userpassword='" + decryptpwd + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful');</script>");

                        Session["usreid"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(1).ToString();
                        Session["phone"] = dr.GetValue(2).ToString();
                        Session["email"] = dr.GetValue(3).ToString();
                        Session["address"] = dr.GetValue(4).ToString();
                        Session["password"] = dr.GetValue(6).ToString();

                    }
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        private void decrypt()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[id.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(id.Text);
            strmsg = Convert.ToBase64String(encode);
            decryptpwd = strmsg;
        }
    }
}