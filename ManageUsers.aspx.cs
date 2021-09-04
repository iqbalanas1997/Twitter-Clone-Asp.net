using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryDemo
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=PakistaniTwitterDB;Integrated Security=True");

            con.Open();
            SqlCommand comm = new SqlCommand("Insert into usrtbl values('" + txtName.Text + "' , '" + txtPhone.Text + "' )", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('User Succesfully Registerd');", true);

            txtName.Text = "";
            txtPhone.Text = "";
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=PakistaniTwitterDB;Integrated Security=True");

            SqlCommand cmd = new SqlCommand("select * from usrtbl where Name = @username and Number = @number", con);

            cmd.Parameters.AddWithValue("@username", txtNameLogin.Text);
            cmd.Parameters.AddWithValue("@number", txtNumberLogin.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count>0)
            {
                Response.Redirect("UploadTweets.aspx?userName=" + txtNameLogin.Text);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('User Failed to Registerd');", true);
            }
            
        }

        protected void deleteAccount_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=PakistaniTwitterDB;Integrated Security=True");
            
            con.Open();
            SqlCommand comm = new SqlCommand("Delete usrtbl where Name = '" + txtNameLogin.Text + "' and Number = '"+txtNumberLogin.Text+"'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
            

        }

        protected void btnchangepass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=PakistaniTwitterDB;Integrated Security=True");
            con.Open();
            SqlCommand comm = new SqlCommand("Update usrtbl set Number = '" + txtNewpass.Text + "' where Name = '" + txtchangename.Text + "' ", con);

            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Updated');", true);

        }
    }
}