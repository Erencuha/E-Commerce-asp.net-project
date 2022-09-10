using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.AdminPanel
{
    public partial class yanitla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string idn =Request.QueryString["idprm"];
            MusteriCRUD mustericrud = new MusteriCRUD();
            Musteri musteri = new Musteri();
            musteri.Isim = idn;
            musteri.Yanıt = TextBox1.Text;
            bool cevap = mustericrud.myanıtla(musteri);
            if (cevap==true)
            {
                Panel1.Visible = true;

                mustericrud.Okundu(idn);

                TextBox1.Text = "";
            }







        }
    }
}