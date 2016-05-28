using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.ModelBinding;
using BookKing.Models;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Booking : System.Web.UI.Page
{
    public readonly string[] book_id = { BookType.fields.book_id };

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public IQueryable<BookType> GetProducts()
    {
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conStr1"].ConnectionString))
        {
            string selectQuery = "select * from dbo.book_type";
            using (SqlCommand sqlCommand = new SqlCommand(selectQuery, con))
            {
                try
                {
                    con.Open();
                    SqlDataReader reader = sqlCommand.ExecuteReader();
                    List<BookType> bookTypeList = new List<BookType>();
                    for (int i = 0; reader.Read() && i < 25; i++)
                    {
                        bookTypeList.Add(new BookType(reader));
                    }
                    return bookTypeList.AsQueryable();
                }
                catch (Exception e)
                {
                    Label1.Text = e.ToString();
                    return null;
                }
            }
        }
    }
}