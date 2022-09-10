using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.Site
{
    public partial class Dogrulama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Musteri ymusteri = new Musteri();
            MusteriCRUD ymusteriCRUD = new MusteriCRUD();
            if (TextBox1.Text == Session["dkodu"].ToString())
            {
                ymusteriCRUD.Dogrulama(Session["dkodu"].ToString());
                
                Response.Redirect("giris.aspx");
            }
            else
            {
                Label1.Text = "Doğrulama kodu yanlış!";
            }
        }
    }
}