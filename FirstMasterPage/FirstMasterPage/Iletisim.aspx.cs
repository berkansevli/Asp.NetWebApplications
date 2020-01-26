using FirstMasterPage.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            int durum = Kodlar.IletisimFormuKaydet(txtAdiSoyadi.Text, txtEPosta.Text, txtYas.Text, txtKonu.Text, txtMesaj.Text);
            if (durum>0)
            {
                ltrDurum.Text = "İletişim formunuz gönderilmiştir. En kısa sürede sizinle iletişime geçeceğiz. Yalandan kim ölmüş";
            }
            else
            {
                ltrDurum.Text = "İletişim formu gönderilirken hata oluştu. Lütfen tekrar deneyiniz.";
            }
        }
    }
}