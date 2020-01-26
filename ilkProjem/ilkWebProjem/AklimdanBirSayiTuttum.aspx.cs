using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ilkWebProjem
{
    public partial class AklimdanBirSayiTuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblPostBackDurum.Text = IsPostBack.ToString();
            if (IsPostBack==false)
            {
                Random rnd = new Random();
                int tutulanSayi = rnd.Next(1, 100);
                hfTutulanSayi.Value = tutulanSayi.ToString();
                lblHile.Text = tutulanSayi.ToString();
            }
        }

        protected void btnKontrol_Click(object sender, EventArgs e)
        {
            int tutulanSayi = Convert.ToInt32(hfTutulanSayi.Value);
            int tahminEdilenSayi = Convert.ToInt32(txtSayi.Text);

            if (tutulanSayi<tahminEdilenSayi)
            {
                lblDurum.Text = "daha küçük bir sayı giriniz";
            }
            else if(tutulanSayi>tahminEdilenSayi)
            {
                lblDurum.Text = "Daha büyük bir sayı giriniz";
            }
            else
            {
                lblDurum.Text = "Sayıyı bildiniz";
            }
            lbTahminEdilenSayilar.Items.Add(txtSayi.Text);
            txtSayi.Text = "";
        }
    }
}