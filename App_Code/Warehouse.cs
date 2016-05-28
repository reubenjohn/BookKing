using System;
using System.Collections;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;

namespace BookKing.Models
{
    public class Warehouse
    {
        public string code { get; private set; }
        public string ware_address { get; private set; }
        public string ware_phone { get; private set; }

        public Warehouse(SqlDataReader reader)
        {
            if (reader[fields.code] != null) code = reader[fields.code].ToString();
            if (reader[fields.ware_address] != null) ware_address = reader[fields.ware_address].ToString();
            if (reader[fields.ware_phone] != null) ware_phone = reader[fields.ware_phone].ToString();
        }

        public static class fields{
            public const string code = "code",
                ware_address = "ware_address",
                ware_phone = "ware_phone";
        }
    }
}