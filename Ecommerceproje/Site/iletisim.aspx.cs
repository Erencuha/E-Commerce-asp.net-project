using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.Site
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


         
                MusteriCRUD mustericrud = new MusteriCRUD();
                Musteri musteri = new Musteri();
                //mustericrud.mesajgonder(musteri);
                musteri.Mail = Session["uye"].ToString();
                musteri.Baslık = TextBox1.Text;
                musteri.Mesaj = TextBox2.Text;
                bool sonuc = mustericrud.mesajgonder(musteri);
                if (sonuc == true)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";

                }
            Response.Redirect("iletisim.aspx");
            
        }





        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }
    }
}