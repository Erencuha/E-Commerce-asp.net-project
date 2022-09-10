using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.Site
{
    public partial class giris : System.Web.UI.Page
    {

        HttpCookie cerezim = new HttpCookie("bilgimm");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.Cookies["bilgimm"] != null)
                {
                    cerezim = Request.Cookies["bilgimm"];
                    TextBox1.Text = cerezim["email"].ToString();
                }
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Sifrele sifrele = new Sifrele();
            string sifrelenmiş = sifrele.Encrypt(TextBox2.Text);
            MusteriCRUD ymusteriCRUD = new MusteriCRUD();
           bool cevap= ymusteriCRUD.uyemi(TextBox1.Text,sifrelenmiş);
            if (cevap==true)
            {

                bool cevap2 = ymusteriCRUD.dogrulanmismi(TextBox1.Text, sifrelenmiş);
                if (cevap2 == true)
                {
                    Session["uye"] = TextBox1.Text;

                    if (CheckBox1.Checked)
                    {
                        cerezim["email"] = TextBox1.Text;
                        cerezim.Expires = DateTime.Now.AddMonths(5);
                        Response.Cookies.Add(cerezim);
                    }



                    Response.Redirect("default.aspx");
                }
                else if (cevap2 == false)
                {
                    Response.Redirect("Dogrulama.aspx");

                }

                
            }
            else
            {
                Label1.Text = "Lütfen emailinizi ve şifrenizi kontrol ediniz";
                
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            Random random = new Random();
            int number = random.Next(100000, 999999);
            MusteriCRUD ymusteriCRUD = new MusteriCRUD();
            Musteri ymusteri = new Musteri();
            ymusteri.Tc = TextBox3.Text;
            ymusteri.Kadi = TextBox4.Text;
            ymusteri.Isim = TextBox5.Text;
            ymusteri.Soyisim = TextBox6.Text;
            
            Sifrele sifrele=new Sifrele();
           string sifrelenmiş= sifrele.Encrypt(TextBox7.Text);

            







                ymusteri.Sfr = sifrelenmiş;


            ymusteri.Mail = TextBox8.Text;
            ymusteri.Dogrulama = number.ToString();
            ymusteri.Onay = 0;

            bool cevap = ymusteriCRUD.Mkayit(ymusteri);
            if (cevap==true)
            {
                string to = TextBox8.Text; // Kime Mail gönderiyoruz
                string from = "erencasper16@hotmail.com"; //Bizim mail adresimiz
                MailMessage message = new MailMessage(from, to);
                string mailbody = "Doğrulama Kodunuz:" + number;
                message.Subject = "Deneme asp.Net & C#";
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.office365.com", 587);//hotmail smtp
                System.Net.NetworkCredential basiccredential1 = new
                    System.Net.NetworkCredential("erencasper16@hotmail.com", "765432189asd");
                client.EnableSsl = true;
                client.UseDefaultCredentials = true;
                client.Credentials = basiccredential1;


                try
                {
                    client.Send(message);
                }
                catch (Exception ex)
                {

                    throw ex;
                }
                Session["dkodu"] = number.ToString();
                Response.Redirect("Dogrulama.aspx");
            }
            else
            {
                Label2.Text = "Kayıt işlemi sırasında bir hata oluştu lütfen tekrar deneyiniz.";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }
    }
}