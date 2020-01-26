using FirstMasterPage.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage.Yonetim
{
    public partial class KullaniciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"]!=null)
                {
                    DataTable dt = Kodlar.KullaniciCek(Request.QueryString["id"]);
                    if (dt.Rows.Count>0)
                    {
                        txtAdiSoyadi.Text = dt.Rows[0]["AdiSoyadi"].ToString();
                        txtKullaniciAdi.Text = dt.Rows[0]["KullaniciAdi"].ToString();
                        txtSifre.Text = dt.Rows[0]["Sifre"].ToString();
                        hfFotograf.Value = dt.Rows[0]["Fotograf"].ToString();
                    }
                }
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int durum = 0;
            string uyari = "";
            if (Request.QueryString["id"] != null) // düzelt
            {
                durum = Kodlar.KullaniciDuzelt(txtKullaniciAdi.Text, txtSifre.Text, txtAdiSoyadi.Text, fuFotograf, hfFotograf.Value, Request.QueryString["id"]);
                if (durum>0)
                {
                    uyari = "Düzeltme Başarılı";
                }
                else
                {
                    uyari = "Düzeltme sırasında hata oluştu";
                }
            }
            else // yeni kayıt
            {
                durum = Kodlar.KullaniciEkle(txtKullaniciAdi.Text, txtSifre.Text, txtAdiSoyadi.Text, fuFotograf);
                if (durum > 0)
                {
                    uyari = "Kullanıcı ekleme başarılı";
                }
                else
                {
                    uyari = "Kullanıcı eklerken hata oluştu. Lütfen daha sonra tekrar deneyiniz";
                }
            }
            lblDurum.Text = uyari;
        }
    }
}