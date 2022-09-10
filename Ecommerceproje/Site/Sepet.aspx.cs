using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.Site
{
    public partial class Sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



               if (Request.QueryString["brkdprm"] != null)
               {
                string gbkod = Request.QueryString["brkdprm"];
                
                UrunCRUD sepette = new UrunCRUD();
                sepette.sepetekle(gbkod, Session["uye"].ToString());
                    Response.Redirect("sepet.aspx");

                }
            }
            if (Request.QueryString["gprms"]!=null)
            {
                string gkod = Request.QueryString["gprms"];
                UrunCRUD sepeette = new UrunCRUD();
                bool cevap = sepeette.sepetsil(gkod, Session["uye"].ToString());

            }

            if (Request.QueryString["azalt"] != null)
            {
                string gkod = Request.QueryString["azalt"];
                UrunCRUD sepeette = new UrunCRUD();
                bool cevap = sepeette.azalt(gkod, Session["uye"].ToString());
                if (cevap==true)
                {
                    Response.Redirect("sepet.aspx");
                }
            }
            if (Request.QueryString["arttır"] != null)
            {
                string gkod = Request.QueryString["arttır"];
                UrunCRUD sepeette = new UrunCRUD();
                bool cevap = sepeette.adetarttır(gkod, Session["uye"].ToString());
                if (cevap)
                {
                    Response.Redirect("Sepet.aspx");
                }
                
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string sbrkd= Request.QueryString["silinecekbrkd"];

            
            //UrunCRUD urunCRUD = new UrunCRUD();
            //urunCRUD.sepetsil(sbrkd, Session["uye"].ToString());

        }
    }
}