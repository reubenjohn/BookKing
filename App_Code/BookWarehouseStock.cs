using System;
using System.Collections;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;

namespace BookKing.Models
{
    public class BookWarehouseStock : Warehouse
    {
        public string book_id { get; private set; }
        public string bookCount { get; private set; }

        public BookWarehouseStock(SqlDataReader reader):base(reader)
        {
            if (reader[fields.book_id] != null) book_id = reader[fields.book_id].ToString();
            if (reader[fields.bookCount] != null) bookCount = reader[fields.bookCount].ToString();
        }

        public static class fields
        {
            public static readonly string book_id = "book_id";
            public static readonly string bookCount = "bookCount";
        }
    }
}