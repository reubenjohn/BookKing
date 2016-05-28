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
    private Author author;
    private string auth_name;

    protected void Page_Load(object sender, EventArgs e)
    {
        auth_name = Request.QueryString["authorName"];
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr1"].ConnectionString))
        {
            string selectQuery = "select * from dbo.author where auth_name='"+ auth_name + "'";
            //ErrorLabel.Text = selectQuery;
            using (SqlCommand sqlCommand = new SqlCommand(selectQuery, con))
            {
                try
                {
                    con.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    if (reader.Read())
                    {
                        author = new Author(reader);
                        PublisherName.Text = author.auth_name;
                        PublisherAdress.Text = author.auth_address;

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