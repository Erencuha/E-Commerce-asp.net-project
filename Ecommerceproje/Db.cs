﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ecommerceproje
{
    public class Db
    {
        public SqlConnection baglanti = new SqlConnection
      (ConfigurationManager.ConnectionStrings
     ["ProjeEcommerceConnectionString1"].ConnectionString);

        public void ac()
        {
            baglanti.Open();
        }

        public void kapat()
        {
            baglanti.Close();
        }
    }
}