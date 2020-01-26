using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ilkWebProjem
{
    public partial class Ornekler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGoster_Click(object sender, EventArgs e)
        {
            lblDurum.Text = "Merhaba " + txtVeri.Text;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            lbListe.Items.Add(txtSecenek.Text);
            txtSecenek.Text = "";
        }

        protected void btnSec_Click(object sender, EventArgs e)
        {
            lblSecilen.Text = lbListe.SelectedValue;
        }

        protected void btnTopla_Click(object sender, EventArgs e)
        {
            //txtSonuc.Text = (Convert.ToInt32(txtSayi1.Text) + Convert.ToInt32(txtSayi2.Text)).ToString();
            int sayi1 = Convert.ToInt32(txtSayi1.Text);
            int sayi2 = Convert.ToInt32(txtSayi2.Text);
            int sonuc = 0;
            //switch (ddlIslemler.SelectedValue)
            switch (rbIslemler.SelectedValue)
            {
                case "+":
                    sonuc = sayi1 + sayi2;
                    break;
                case "-":
                    sonuc = sayi1 - sayi2;
                    break;
                case "x":
                    sonuc = sayi1 * sayi2;
                    break;
                case "/":
                    sonuc = sayi1 / sayi2;
                    break;
            }
            txtSonuc.Text = sonuc.ToString();
            lbIslemlerSonuc.Items.Add(txtSayi1.Text + rbIslemler.SelectedValue + txtSayi2.Text + "=" + sonuc.ToString());
        }

        protected void btnCB4Islem_Click(object sender, EventArgs e)
        {
            int sayi1 = Convert.ToInt32(txtSayi1.Text);
            int sayi2 = Convert.ToInt32(txtSayi2.Text);
            int sonuc = 0;
            for (int i = 0; i < cbIslemler.Items.Count; i++)
            {
                if (cbIslemler.Items[i].Selected)
                {
                    switch (cbIslemler.Items[i].Value)
                    {
                        case "+":
                            sonuc = sayi1 + sayi2;
                            break;
                        case "-":
                            sonuc = sayi1 - sayi2;
                            break;
                        case "x":
                            sonuc = sayi1 * sayi2;
                            break;
                        case "/":
                            sonuc = sayi1 / sayi2;
                            break;
                    }
                    //sonuc = Hesapla(sayi1, sayi2, cbIslemler.Items[i].Value);
                    lbIslemlerSonuc.Items.Add(txtSayi1.Text + cbIslemler.Items[i].Value + txtSayi2.Text + "=" + sonuc.ToString());
                }
            }
        }

        int Hesapla(int sayi1, int sayi2, string islem)
        {
            int sonuc = 0;
            switch (islem)
            {
                case "+":
                    sonuc = sayi1 + sayi2;
                    break;
                case "-":
                    sonuc = sayi1 - sayi2;
                    break;
                case "x":
                    sonuc = sayi1 * sayi2;
                    break;
                case "/":
                    sonuc = sayi1 / sayi2;
                    break;
            }
            return sonuc;
        }
    }
}