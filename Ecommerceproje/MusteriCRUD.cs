using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ecommerceproje
{
    public class MusteriCRUD
    {

        Db db = new Db();


        
        




        public bool Kayit(Musteri musteri)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into Musteriler" + "(TcNo, KAdi, Ad, Soyad, Sfr, EMail)" +
            "values(@a, @b, @c, @d , @e, @f)", db.baglanti);

            komut.Parameters.AddWithValue("@a", musteri.Tc);
            komut.Parameters.AddWithValue("@b", musteri.Kadi);
            komut.Parameters.AddWithValue("@c", musteri.Isim);
            komut.Parameters.AddWithValue("@d", musteri.Soyisim);
            komut.Parameters.AddWithValue("@e", musteri.Sfr);
            komut.Parameters.AddWithValue("@f", musteri.Mail);

            int sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                bilgi = false;
            }
            db.kapat();
            return bilgi;
        }
        public DataTable liste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }


        public bool musterisil(string gmail)
        {
            bool cevap;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from musteriler where Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gmail);
            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;
        }
        public bool musteriguncelle(Musteri musteri)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update musteriler set  KAdi=@b, Ad=@c, Soyad=@d,Sfr=@e,Email=@f where TcNo=@a ", db.baglanti);
            komut.Parameters.AddWithValue("@a", musteri.Tc);
            komut.Parameters.AddWithValue("@b", musteri.Kadi);
            komut.Parameters.AddWithValue("@c", musteri.Isim);
            komut.Parameters.AddWithValue("@d", musteri.Soyisim);
            komut.Parameters.AddWithValue("@e", musteri.Sfr);
            komut.Parameters.AddWithValue("@f", musteri.Mail);

            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;
        }
        public Musteri musterigoster(string gtc)
        {
            Musteri musteri = new Musteri();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where TcNo=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gtc);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            musteri.Tc = dt.Rows[0][0].ToString();
            musteri.Kadi = dt.Rows[0][1].ToString();
            musteri.Isim = dt.Rows[0][2].ToString();
            musteri.Soyisim = dt.Rows[0][3].ToString();
            musteri.Sfr = dt.Rows[0][4].ToString();
            musteri.Mail = dt.Rows[0][5].ToString();

            db.kapat();
            return musteri;
        }
        public bool musteriguncellemekadi(string mkadi)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where KAdi=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mkadi);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }
        public bool adminonay(string gkadi, string gsfr)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from admin where AKadi=@a and Sfr=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", gkadi);
            komut.Parameters.AddWithValue("@b", gsfr);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }
        public Admin admingoster(string gkadi)
        {
            Admin admin = new Admin();  
            db.ac();
            SqlCommand komut = new SqlCommand("select * from Admin where AKadi=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gkadi);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            admin.Kadi = dt.Rows[0][0].ToString();
            admin.Sfr = dt.Rows[0][1].ToString();
            admin.Mail = dt.Rows[0][2].ToString();
            admin.Tel = dt.Rows[0][3].ToString();
            admin.Ad = dt.Rows[0][4].ToString();
            admin.Soyad = dt.Rows[0][5].ToString();
            admin.Resim = dt.Rows[0][6].ToString();

            db.kapat();
            return admin;
        }

        public bool uyemi(string gmail, string gsfr)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where Email=@a and Sfr=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", gmail);
            komut.Parameters.AddWithValue("@b", gsfr);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }
        public bool Mkayit(Musteri musteri)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into musteriler" + "(TcNo, KAdi, Ad, Soyad, Sfr, Email, Dogrulama, Onay)" +
            "values(@a, @b, @c, @d , @e, @f, @g, @h)", db.baglanti);

            komut.Parameters.AddWithValue("@a", musteri.Tc);
            komut.Parameters.AddWithValue("@b", musteri.Kadi);
            komut.Parameters.AddWithValue("@c", musteri.Isim);
            komut.Parameters.AddWithValue("@d", musteri.Soyisim);
            komut.Parameters.AddWithValue("@e", musteri.Sfr);
            komut.Parameters.AddWithValue("@f", musteri.Mail);
            komut.Parameters.AddWithValue("@g", musteri.Dogrulama);
            komut.Parameters.AddWithValue("@h", musteri.Onay);

            int sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                bilgi = false;
            }
            db.kapat();
            return bilgi;
        }

        //public bool MKayit(Musteri musteri)
        //{
        //    bool bilgi = true;
        //    db.ac();

        //    SqlCommand komut = new SqlCommand("insert into Musteriler" + "(TcNo, KAdi, Ad, Soyad, Sfr, EMail,Dogrulama, Onay)" +
        //    "values(@a, @b, @c, @d , @e, @f, @g ,@h)", db.baglanti);

        //    komut.Parameters.AddWithValue("@a", musteri.Tc);
        //    komut.Parameters.AddWithValue("@b", musteri.Kadi);
        //    komut.Parameters.AddWithValue("@c", musteri.Isim);
        //    komut.Parameters.AddWithValue("@d", musteri.Soyisim);
        //    komut.Parameters.AddWithValue("@e", musteri.Sfr);
        //    komut.Parameters.AddWithValue("@f", musteri.Mail);
        //    komut.Parameters.AddWithValue("@f", musteri.Dogrulama);
        //    komut.Parameters.AddWithValue("@f", musteri.Onay);


        //    int sonuc = komut.ExecuteNonQuery();
        //    if (sonuc == 0)
        //    {
        //        bilgi = false;
        //    }
        //    db.kapat();
        //    return bilgi;
        //}

        public void Dogrulama(string dkodu)
        {
            db.ac();
            SqlCommand komut = new SqlCommand("update musteriler set Onay=1 where Dogrulama=@A", db.baglanti);
            komut.Parameters.AddWithValue("@a", dkodu);
            int sonuc = komut.ExecuteNonQuery();
            db.kapat();
        }

        public bool mesajgonder(Musteri musteri)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into Mesajlar" + "(Email,Baslik, Mesaj)" +
            "values(@a,@b, @c)", db.baglanti);

            komut.Parameters.AddWithValue("@a", musteri.Mail);
            komut.Parameters.AddWithValue("@b", musteri.Baslık);
            komut.Parameters.AddWithValue("@c", musteri.Mesaj);
           
           

            int sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                bilgi = false;
            }
            db.kapat();
            return bilgi;
        }

        public Musteri mesajgoster(string mail)
        {
            Musteri musteri = new Musteri();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from Mesajlar where Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            musteri.Mail = dt.Rows[0][0].ToString();
            musteri.Baslık = dt.Rows[0][1].ToString();
            musteri.Mesaj = dt.Rows[0][2].ToString();
            musteri.Yanıt = dt.Rows[0][3].ToString();


            db.kapat();
            return musteri;
        }
        public DataTable mgoster(string mail)
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from Mesajlar where Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);


            db.kapat();
            return dt;
        }
        public DataTable tümmgoster()
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from Mesajlar", db.baglanti);
            
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);


            db.kapat();
            return dt;
        }
        public bool myanıtla(Musteri musteri)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update Mesajlar set  Yanıt=@a where id=@b ", db.baglanti);
            komut.Parameters.AddWithValue("@a", musteri.Yanıt);
            komut.Parameters.AddWithValue("@b", musteri.Isim);
            

            int kayitsay = komut.ExecuteNonQuery();
            if (kayitsay == 0)
            {
                cevap = false;
            }
            else
            {
                cevap = true;
            }
            db.kapat();

            return cevap;
        }

        public bool dogrulanmismi(string gmail, string gsfr)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from musteriler where Email=@a and Sfr=@b and Onay=1", db.baglanti);
            komut.Parameters.AddWithValue("@a", gmail);
            komut.Parameters.AddWithValue("@b", gsfr);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }

        public void Okundu(string id)
        {
            db.ac();
            SqlCommand komut = new SqlCommand("update Mesajlar set Okundu=1 where id=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", id);
            int sonuc = komut.ExecuteNonQuery();
            db.kapat();
        }

        public bool okunmusmu(int id)
        {
            bool sonuc;
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from Mesajlar where id=@a and Okundu=1", db.baglanti);
            komut.Parameters.AddWithValue("@a", id);
            
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
            }
            db.kapat();
            return sonuc;
        }
    }
}