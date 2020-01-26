using FirstMasterPage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage.Yonetim
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["okundu"] != null)
            {
                if (Request.QueryString["durum"] != null)
                {
                    string durum = Request.QueryString["durum"];
                    if (durum == "True")
                    {
                        Kodlar.IletisimOkunmadi(Request.QueryString["okundu"]);
                    }
                    else
                    {
                        Kodlar.IletisimOkundu(Request.QueryString["okundu"]);
                    }
                }
            }


            rptIletisim.DataSource = Kodlar.IletisimFormu();
            rptIletisim.DataBind();
        }
    }
}