using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerceproje.AdminPanel
{
    public partial class AdminPanel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != "ok")
            {
                Response.Redirect("../AdminGiris.aspx");
            }
            string aisim = Session["adminname"].ToString();

          
        }
    }
}