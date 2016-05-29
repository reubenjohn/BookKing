using System;
using System.Collections;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;

namespace BookKing.Models
{
    public class Author
    {
        public string auth_name { get; private set; }
        public string auth_address { get; private set; }

        public Author(SqlDataReader reader)
        {
            if(reader[BookType.fields.auth_name] !=null) auth_name = reader[BookType.fields.auth_name].ToString();
            if (reader[fields.auth_address] != null) auth_address = reader[fields.auth_address].ToString();
        }

        public static class fields
        {
            public static readonly string auth_address = "auth_address";
        }
    }
}