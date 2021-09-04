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
    public partial class YourComments : System.Web.UI.Page
    {
        SqlDataAdapter da = null;
        DataSet ds = null;
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=WPLFinalPpr;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

                da = new SqlDataAdapter("Select * From UserComments", cn);
                ds = new DataSet();
                da.Fill(ds, "UserComments");
                GridView1.DataSource = ds.Tables["UserComments"];
                GridView1.DataBind();
            }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=WPLFinalPpr;Integrated Security=True");

            con.Open();
            SqlCommand comm = new SqlCommand("Insert into UserComments values('" + Txtuname.Text + "' , '" + TxtEmail.Text + "', '" + TxtEmail.Text + "', '" + DateTime.Now + "' )", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Feedback Succesfully Entered');", true);

            TxtEmail.Text = "";
            Txtfeedback.Text = "";
            Txtuname.Text = "";
        }
    }
}