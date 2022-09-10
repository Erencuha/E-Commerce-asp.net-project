using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ecommerceproje
{
    public class UrunCRUD
    {

        Db db = new Db();

        public bool kayit(Urun urun)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into Urunler" + "(UrunKateID, UMarka, UrunAdi, UFiyat, UKdv, ParaBrm, UStokID, UBarkod, UStokAdet, UStokTur, UResim, KargoKg)" +
            "values(@a, @b, @c, @d , @e, @f, @g, @h, @i ,@j, @k, @l)", db.baglanti);

            komut.Parameters.AddWithValue("@a", urun.Urunkateid);
            komut.Parameters.AddWithValue("@b", urun.Marka);
            komut.Parameters.AddWithValue("@c", urun.Urunadi);
            komut.Parameters.AddWithValue("@d", urun.Ufiyat);
            komut.Parameters.AddWithValue("@e", urun.Ukdv);
            komut.Parameters.AddWithValue("@f", urun.Parabrm);
            komut.Parameters.AddWithValue("@g", urun.Ustokid);
            komut.Parameters.AddWithValue("@h", urun.Ubarkod);
            komut.Parameters.AddWithValue("@i", urun.Ustokadet);
            komut.Parameters.AddWithValue("@j", urun.Ustoktur);
            komut.Parameters.AddWithValue("@k", urun.Uresim);
            komut.Parameters.AddWithValue("@l", urun.Kargokg);

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
            SqlCommand komut = new SqlCommand("select * from urunler", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable sliderliste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from urunler where Slider=1", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }



        public bool sepetekle(string bkod, string mail)
        {
            Urun urun = new Urun();

            bool sonuc = false;
            int cevap;
            db.ac();
            SqlCommand komutara = new SqlCommand("select count(*) from Sepet where Barkod=@bk and Email=@em", db.baglanti);
            komutara.Parameters.AddWithValue("@em", mail);
            komutara.Parameters.AddWithValue("@bk", bkod);
            int kaysay = Convert.ToInt16(komutara.ExecuteScalar());
            if (kaysay == 0)//hayır
            {
                SqlCommand komut = new SqlCommand("insert into Sepet values(@a,@b,@c,@d,@e)", db.baglanti);
                komut.Parameters.AddWithValue("@a", bkod);
                komut.Parameters.AddWithValue("@b", 1);
                komut.Parameters.AddWithValue("@c", mail);
                komut.Parameters.AddWithValue("@d", 0);
                komut.Parameters.AddWithValue("@e", System.DateTime.Now);
                cevap = komut.ExecuteNonQuery();
                if (cevap == 1)
                {
                    sonuc = true;
                }
            }
            else
            {
                SqlCommand komutguncel = new SqlCommand("update Sepet set Adet=Adet+1 where Email=@a and Barkod=@b", db.baglanti);
                komutguncel.Parameters.AddWithValue("@a", mail);
                komutguncel.Parameters.AddWithValue("@b", bkod);
                cevap = komutguncel.ExecuteNonQuery();
                if (cevap == 1)
                {
                    sonuc = true;
                }
            }


            db.kapat();
            return sonuc;
        }

        public DataTable sepetgoster(string mail)
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from Sepet where Durum=0 and Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);


            db.kapat();
            return dt;
        }
        public Urun urungoster(string gbarkod)
        {
            Urun urun = new Urun();
            db.ac();
            SqlCommand komut = new SqlCommand("select * from urunler where UBarkod=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gbarkod);
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            urun.Urunkateid = dt.Rows[0][0].ToString();
            urun.Marka = dt.Rows[0][1].ToString();
            urun.Urunadi = dt.Rows[0][2].ToString();
            urun.Ufiyat = Convert.ToInt32(dt.Rows[0][3]);
            urun.Ukdv = dt.Rows[0][4].ToString();
            urun.Parabrm = dt.Rows[0][5].ToString();
            urun.Ustokid = dt.Rows[0][6].ToString();
            urun.Ubarkod = dt.Rows[0][7].ToString();
            urun.Ustokadet = Convert.ToInt32(dt.Rows[0][8]);
            urun.Ustoktur = dt.Rows[0][9].ToString();
            urun.Uresim = dt.Rows[0][10].ToString();
            urun.Kargokg = Convert.ToInt32(dt.Rows[0][11]);

            db.kapat();
            return urun;
        }

        public int sepettoplamgoster(string mail)
        {

            int toplam;
            db.ac();
            SqlCommand komut = new SqlCommand("select sum(Ufiyat*Adet) from urunler,sepet where UBarkod=Barkod and Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            toplam = Convert.ToInt32(komut.ExecuteScalar());
            






            db.kapat();
            return toplam;
        }

        public int sepetsayigoster(string mail)
        {
            int cesit;
            db.ac();
            SqlCommand komut = new SqlCommand("select count(*) from Sepet where Durum=0 and Email=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", mail);
            cesit = Convert.ToInt16(komut.ExecuteScalar());




            db.kapat();
            return cesit;
        }


        public bool sepetsil(string barkod,string gmail)
        {
            bool cevap;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from Sepet where Barkod=@a and Email=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", barkod);
            komut.Parameters.AddWithValue("@b", gmail);
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


        public bool azalt(string bkod, string mail)
        {
            Urun urun = new Urun();

            bool sonuc = false;
            int cevap;
            db.ac();
            SqlCommand komutara = new SqlCommand("select Adet from Sepet where Barkod=@bk and Email=@em", db.baglanti);
            komutara.Parameters.AddWithValue("@em", mail);
            komutara.Parameters.AddWithValue("@bk", bkod);
            int kaysay = Convert.ToInt16(komutara.ExecuteScalar());
            if (kaysay == 1)//hayır
            {
               

                
            }
            else
            {
                bool cevaps = true;
                SqlCommand komut = new SqlCommand("update Sepet set  Adet-=1 where Barkod=@a and Email=@b ", db.baglanti);
                komut.Parameters.AddWithValue("@a", bkod);
                komut.Parameters.AddWithValue("@b", mail);


                int kayitsay = komut.ExecuteNonQuery();
                if (kayitsay == 0)
                {
                    cevaps = false;
                }
                else
                {
                    cevaps = true;
                }
                db.kapat();
            }


            db.kapat();
            return sonuc;
        }
        public bool adetarttır(string bkod, string mail)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update Sepet set  Adet+=1 where Barkod=@a and Email=@b ", db.baglanti);
            komut.Parameters.AddWithValue("@a", bkod);
            komut.Parameters.AddWithValue("@b", mail);


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
        public DataTable kategoriyelistele(string gkat)
        {
            DataTable dt = new DataTable();

            db.ac();
            SqlCommand komut = new SqlCommand("select * from urunler where UrunKateID=@a", db.baglanti);
            komut.Parameters.AddWithValue("@a", gkat);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }

        public DataTable kateliste()
        {
            DataTable dt = new DataTable();
            //veritabanından istenen kritelere uyan kayıtlar çekilip, datatable içerisine aktarılacak
            db.ac();
            SqlCommand komut = new SqlCommand("select * from Kategoriler", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);

            db.kapat();
            return dt;
        }
        public bool kategoriekle(Urun urun)
        {
            bool bilgi = true;
            db.ac();

            SqlCommand komut = new SqlCommand("insert into Kategoriler (KateAdi) values(@a)", db.baglanti);

            komut.Parameters.AddWithValue("@a", urun.Urunkateid);



            int sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                bilgi = false;
            }
            db.kapat();
            return bilgi;
        }

    }
}