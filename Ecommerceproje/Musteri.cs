using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerceproje
{
    public class Musteri
    {
        string tc, kadi, isim, soyisim, sfr, mail, dogrulama,baslık,mesaj,yanıt;
        int onay;

        public string Tc { get => tc; set => tc = value; }
        public string Kadi { get => kadi; set => kadi = value; }
        public string Isim { get => isim; set => isim = value; }
        public string Soyisim { get => soyisim; set => soyisim = value; }
        public string Sfr { get => sfr; set => sfr = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Dogrulama { get => dogrulama; set => dogrulama = value; }
        public string Baslık { get => baslık; set => baslık = value; }
        public string Mesaj { get => mesaj; set => mesaj = value; }
        public string Yanıt { get => yanıt; set => yanıt = value; }
        public int Onay { get => onay; set => onay = value; }
    }
}