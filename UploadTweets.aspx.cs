using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQueryDemo
{
    public partial class UploadTweets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            usrlbl.Text = Request.QueryString["UserName"];

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=PakistaniTwitterDB;Integrated Security=True");

            SqlCommand Comm1 = new SqlCommand("SELECT * FROM tweettable WHERE tweetID=(SELECT max(tweetID) FROM tweettable);", con);
            con.Open();
            SqlDataReader DR1 = Comm1.ExecuteReader();
            if (DR1.Read())
            {
                usrlbl.Text = DR1.GetValue(1).ToString();
                Label1.Text = DR1.GetValue(2).ToString();
                name1.Text = DR1.GetValue(1).ToString();
                name2.Text = DR1.GetValue(1).ToString();
            }
            con.Close();



        }


        protected void btnAddNewRow_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-880IFMH;Initial Catalog=PakistaniTwitterDB;Integrated Security=True");

            con.Open();
            SqlCommand comm = new SqlCommand("Insert into tweettable values('" + usrlbl.Text + "' , '" + TweetTB.Text + "' )", con);
            comm.ExecuteNonQuery();
            con.Close();

            TweetTB.Text = "";
        }
    }
}