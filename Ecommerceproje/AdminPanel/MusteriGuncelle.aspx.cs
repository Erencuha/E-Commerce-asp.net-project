using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.AdminPanel
{
    public partial class Musteri_Güncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string guncelveri = Request.QueryString["musteriguncelle"];
                if (!string.IsNullOrEmpty(guncelveri))
                {
                    MusteriCRUD islem = new MusteriCRUD();
                    Musteri musteri = islem.musterigoster(guncelveri);
                    TextBox1.Text = musteri.Tc;
                    TextBox2.Text = musteri.Kadi;
                    TextBox3.Text = musteri.Isim;
                    TextBox4.Text = musteri.Soyisim;

                    Sifrele sifre = new Sifrele();
                    string coz = sifre.Decrypt(musteri.Sfr);

                    TextBox5.Text = coz;
                    TextBox6.Text = musteri.Mail;
                }
                else
                {
                    Response.Redirect("musteriguncelle.aspx");
                }
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            MusteriCRUD musterikadi = new MusteriCRUD();
            bool cevap = musterikadi.musteriguncellemekadi(TextBox2.Text);
            if (cevap)
            {
                Label1.Text = "Bu kullanıcı adı kullanımda.";
            }
            else
            {
                Label1.Visible = false;
                MusteriCRUD islem = new MusteriCRUD();
                Musteri musteri = new Musteri();

                musteri.Tc = TextBox1.Text;
                musteri.Kadi = TextBox2.Text;
                musteri.Isim = TextBox3.Text;
                musteri.Soyisim = TextBox4.Text;
                musteri.Sfr = TextBox5.Text;
                musteri.Mail = TextBox6.Text;

                bool cevap2 = islem.musteriguncelle(musteri);

                if (cevap2 == true)
                {
                    Panel1.Visible = true;
                    
                }
            }
        }

    }

       
    
}