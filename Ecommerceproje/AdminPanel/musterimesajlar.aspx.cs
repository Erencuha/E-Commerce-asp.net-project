using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.AdminPanel
{
    public partial class musterimesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string mrb= Request.QueryString["gprm"];
            
            MusteriCRUD islem = new MusteriCRUD();
            Musteri musteri = new Musteri();
            //musteri.Isim=mrb;
            //musteri.Yanıt = TextBox1.Text;
            //bool cevap = islem.myanıtla(musteri);
            Response.Write(mrb);

        }
    }
}