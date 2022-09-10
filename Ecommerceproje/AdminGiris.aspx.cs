using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje
{
    public partial class AdminGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cikisonay = Request.QueryString["cikis"];
            if (cikisonay == "1")
            {
                Session.Abandon();
                Session.RemoveAll();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MusteriCRUD admin = new MusteriCRUD();
            bool cevap = admin.adminonay(TextBox1.Text, TextBox2.Text);
            if (cevap)
            {
                Session["admin"] = "ok";
                Session["adminname"] = TextBox1.Text;
                

                Response.Redirect("adminpanel/uyeekle.aspx?prm=Session['adminname']");
            }
            else
            {
                Label1.Text = ("Yönetici kullanıcı adı ya da şifre hatalı.");
            }
        }
    }
}