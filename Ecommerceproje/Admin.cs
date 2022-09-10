using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerceproje
{
    public class Admin
    {
        string kadi, sfr, mail, tel, ad, soyad, resim;

        public string Kadi { get => kadi; set => kadi = value; }
        public string Sfr { get => sfr; set => sfr = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Tel { get => tel; set => tel = value; }
        public string Ad { get => ad; set => ad = value; }
        public string Soyad { get => soyad; set => soyad = value; }
        public string Resim { get => resim; set => resim = value; }
    }
}