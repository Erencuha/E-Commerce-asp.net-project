using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.AdminPanel
{
    public partial class UyeEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Musteri ymusteri=new Musteri();
            MusteriCRUD ymustericrud=new MusteriCRUD();
            Db db = new Db();



            bool durum;

            void mukerrer()
            {
                db.ac();
                

                SqlCommand komut = new SqlCommand("select * from Musteriler where TcNo=@p1", db.baglanti);
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    durum = false;
                }
                else
                {
                    durum = true;
                }
                db.kapat();

            }
            bool maildurum;
            bool kadidurum;
            void kadimukerrer()
            {
                db.ac();


                SqlCommand komut = new SqlCommand("select * from Musteriler where KAdi=@p1", db.baglanti);
                komut.Parameters.AddWithValue("@p1", TextBox2.Text);
                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    kadidurum = false;
                }
                else
                {
                    kadidurum = true;
                }
                db.kapat();

            }
            void emailmukerrer()
            {
                db.ac();


                SqlCommand komut = new SqlCommand("select * from Musteriler where Email=@p1", db.baglanti);
                komut.Parameters.AddWithValue("@p1", TextBox6.Text);
                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    maildurum = false;
                }
                else
                {
                    maildurum = true;
                }
                db.kapat();

            }
            emailmukerrer();
            kadimukerrer();
            mukerrer();
            
            if (durum==true&&kadidurum==true&&maildurum==true)
            {
            ymusteri.Tc = TextBox1.Text;
            ymusteri.Kadi = TextBox2.Text;
            ymusteri.Isim = TextBox3.Text;
            ymusteri.Soyisim = TextBox4.Text;
            ymusteri.Sfr = TextBox5.Text;
            ymusteri.Mail = TextBox6.Text;
                bool sonuc = ymustericrud.Kayit(ymusteri);
                ClientScript.RegisterStartupScript(this.GetType(),"randomtext","alertme()",true);

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
            }
            if (durum == false)
            {
                
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "basarisiz()", true);
            }
            if (kadidurum == false)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "kaditekrar()", true);
            }
            if (maildurum == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emailtekrar()", true);
            }
            if (durum == true)
            {
                Label1.Text = "";

            }
            if (kadidurum == true)
            {

                Label2.Text = "";
            }
            if (maildurum == true)
            {
                Label3.Text = "";
            }




            //bool sonuc=ymustericrud.Kayit(ymusteri);
            //if (sonuc)
            //{
            //    Label1.Text=("Kayıt İşlemi Başarılı");
            //}
            //else
            //{
            //    Label1.Text = ("Kayıt İşlemi Başarısız");
            //}
        }
    }
}