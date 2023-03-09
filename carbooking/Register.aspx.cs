using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace carbooking
{
    public partial class Register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Register button click event
        protected void registerbtn_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('User ID is already exist. Please try another User ID');</script>");
            }
            else
            {
                RegisterNewMember();


            }
        }

        //user defined method
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from userregstr where userid = '" + userid.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void RegisterNewMember()
        {
            
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into userregstr" + "(userid,fullname,userphone,useremail,useraddress,userpassword)values" + "(@userid,@fullname,@userphone,@useremail,@useraddress,@userpassword)", con);
                cmd.Parameters.AddWithValue("@userid", userid.Text.Trim());
                cmd.Parameters.AddWithValue("@fullname", fullname.Text.Trim());
                cmd.Parameters.AddWithValue("@userphone", phonenum.Text.Trim());
                cmd.Parameters.AddWithValue("@useremail", email.Text.Trim());
                cmd.Parameters.AddWithValue("@useraddress", address.Text.Trim());
                cmd.Parameters.AddWithValue("@userpassword", password.Text.Trim());
                


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registration sucessfull. Go to user login page');</script>");
                userid.Text = "";
                fullname.Text = "";
                phonenum.Text = "";
                email.Text = "";
                address.Text = "";
                password.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}