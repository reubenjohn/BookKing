using System;
using System.Collections;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;

namespace BookKing.Models
{
    public class BookDetails : BookType
    {
        public string bookCount { get; private set; }

        public BookDetails(SqlDataReader reader):base(reader)
        {
            if (reader[fields.bookCount] != null) bookCount = reader[fields.bookCount].ToString();
        }

        public static class fields{
            public static readonly string bookCount = "bookCount";
        }
    }
}