using System;
using System.Collections;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;

namespace BookKing.Models
{
    public class WarehouseBookStock : Warehouse
    {
        public string book_id { get; private set; }
        public string bookStock { get; private set; }

        public WarehouseBookStock(SqlDataReader reader):base(reader)
        {
            if (reader[fields.book_id] != null) book_id = reader[fields.book_id].ToString();
            if (reader[fields.bookStock] != null) bookStock = reader[fields.bookStock].ToString();
        }

        public static class fields
        {
            public static readonly string book_id = "book_id";
            public static readonly string bookStock = "bookStock";
        }
    }
}