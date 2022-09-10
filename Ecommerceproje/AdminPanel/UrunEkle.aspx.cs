using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.AdminPanel
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        Urun yurun = new Urun();
        UrunCRUD yurunCRUD = new UrunCRUD();
        string[] anakategori = { "Lütfen seçim yapınız", "Telefon", "Televizyon", "Laptop" };
        string[,] marka = new string[4, 4];
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    for (int i = 0; i < anakategori.Length; i++)
            //    {
            //        DropDownList1.Items.Add(anakategori[i]);
            //    }
            //}
            System.Data.DataTable dt = new System.Data.DataTable();
            dt=yurunCRUD.kateliste();

            if (!IsPostBack)
            {
                DropDownList2.Items.Add("Lütfen Kategori Seçiniz");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DropDownList2.Items.Add(dt.Rows[i][1].ToString());
                }
            }
            


        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {


            yurun.Urunkateid = TextBox2.Text;
            bool cevapw = yurunCRUD.kategoriekle(yurun);
            if (cevapw)
            {
                Response.Redirect("UrunEkle.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            yurun.Urunkateid = DropDownList2.Text;
            yurun.Marka = TextBox4.Text;
            yurun.Urunadi = TextBox5.Text;
            yurun.Ufiyat =Convert.ToInt32( TextBox6.Text);
            yurun.Ukdv = TextBox7.Text;
            yurun.Parabrm = TextBox8.Text;
            yurun.Ustokid = TextBox9.Text;
            yurun.Ubarkod = TextBox10.Text;
            yurun.Ustokadet = Convert.ToInt32(TextBox11.Text);
            yurun.Ustoktur = TextBox12.Text;


            string urunresim = FileUpload1.FileName;
            string urunresimtarih = System.DateTime.Now.ToString("MMddyyyy_HHmmss");
            FileUpload1.SaveAs(Server.MapPath("urunimg/" + urunresimtarih + "_" + urunresim));
            yurun.Uresim = "/AdminPanel/urunimg/" + urunresimtarih + "_" + urunresim;

            yurun.Kargokg = Convert.ToInt32(TextBox13.Text);

            bool cevap = yurunCRUD.kayit(yurun);



        }
    }
}