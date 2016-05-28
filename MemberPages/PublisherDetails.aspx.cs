using BookKing.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberPages_BookType : System.Web.UI.Page
{
    private Publisher publisher;
    private string pub_name;

    protected void Page_Load(object sender, EventArgs e)
    {
        pub_name = Request.QueryString["publisherName"];
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr1"].ConnectionString))
        {
            string selectQuery = "select * from dbo.publisher where pub_name='"+pub_name+"'";
            //ErrorLabel.Text = selectQuery;
            using (SqlCommand sqlCommand = new SqlCommand(selectQuery, con))
            {
                try
                {
                    con.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    if (reader.Read())
                    {
                        publisher = new Publisher(reader);
                        PublisherName.Text = publisher.pub_name;
                        PublisherAdress.Text = publisher.pub_address;
                        PublisherPhone.Text = publisher.pub_phone;

                    }
                }
                catch (Exception err)
                {
                    ErrorLabel.Text = err.ToString();
                }
            }
        }
    }
}