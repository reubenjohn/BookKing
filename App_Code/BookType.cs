using System;
using System.Collections;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;

namespace BookKing.Models
{
    public class BookType
    {
        public string book_id { get; private set; }
        public string title { get; private set; }
        public string price { get; private set; }
        public string pub_name { get; private set; }
        public string auth_name { get; private set; }
        public string year { get; private set; }

        public BookType(SqlDataReader reader)
        {
            if(reader[fields.book_id]!=null) book_id= reader[fields.book_id].ToString();
            if (reader[fields.title] != null) title = reader[fields.title].ToString();
            if (reader[fields.price] != null) price = reader[fields.price].ToString()+"$";
            if (reader[fields.pub_name] != null) pub_name = reader[fields.pub_name].ToString();
            if (reader[fields.auth_name] != null) auth_name = reader[fields.auth_name].ToString();
            if (reader[fields.year1] != null) year = reader[fields.year1].ToString();
        }

        public static class fields
        {
            public const string book_id = "book_id",
                title = "title",
                price = "price",
                pub_name = "pub_name",
                auth_name = "auth_name",
                year1 = "year1";
        }
    }
}