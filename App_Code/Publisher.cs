using System;
using System.Collections;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;

namespace BookKing.Models
{
    public class Publisher
    {
        public string pub_name { get; private set; }
        public string pub_address { get; private set; }
        public string pub_phone { get; private set; }

        public Publisher(SqlDataReader reader)
        {
            if(reader[fields.pub_name] !=null) pub_name = reader[fields.pub_name].ToString();
            if (reader[fields.pub_address] != null) pub_address = reader[fields.pub_address].ToString();
            if (reader[fields.pub_phone] != null) pub_phone = reader[fields.pub_phone].ToString();
        }

        public static class fields
        {
            public static readonly string pub_name = "pub_name",
                pub_address = "pub_address",
                pub_phone = "pub_phone";
        }
    }
}