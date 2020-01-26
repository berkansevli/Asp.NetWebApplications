using FirstMasterPage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage.Yonetim
{
    public partial class Kullanicilar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rptKullanicilar.DataSource = Kodlar.Kullanicilar();
            rptKullanicilar.DataBind();
        }
    }
}