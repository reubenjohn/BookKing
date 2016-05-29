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
            if (reader[fields.availableStock] != null) bookCount = reader[fields.availableStock].ToString();
        }

        public static class fields{
            public static readonly string availableStock = "availableStock";
        }
    }
}