using FirstMasterPage.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage.Yonetim
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // logout kodları
            {
                Session.Abandon(); // session temizleme
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            //if (txtKullaniciAdi.Text == "hanifi" && txtSifre.Text == "123")
            //{
            //    Session["giris"] = "1";
            //    Response.Redirect("Default.aspx");
            //}
            //else
            //{
            //    lblDurum.Text = "Kullanıcı adı veya şifre hatalı";
            //}

            //int durum = GirisKontrol(txtKullaniciAdi.Text, txtSifre.Text);

            //Kodlar benimKodum = new Kodlar();
            //int durum = benimKodum.GirisKontrol(txtKullaniciAdi.Text, txtSifre.Text);

            //int durum = Kodlar.GirisKontrol2(txtKullaniciAdi.Text, txtSifre.Text);

            //if (durum == 1)
            //{
            //    Session["giris"] = "1";
            //    Response.Redirect("Default.aspx");
            //}
            //else
            //{
            //    lblDurum.Text = "Kullanıcıa adı veya şifre hatalı";
            //}

            //OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            //baglanti.Open();

            ////OleDbCommand kod = new OleDbCommand("Select * From tblKullanicilar Where KullaniciAdi='"+txtKullaniciAdi.Text+"' and Sifre='"+txtSifre.Text+"'", baglanti);
            //OleDbCommand kod = new OleDbCommand(String.Format("Select * From tblKullanicilar Where KullaniciAdi='{0}' and Sifre='{1}'", txtKullaniciAdi.Text, txtSifre.Text), baglanti);
            //OleDbDataAdapter da = new OleDbDataAdapter(kod);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count == 1)
            //{
            //    Session["giris"] = dt;
            //    baglanti.Close();
            //    Response.Redirect("Default.aspx");
            //}
            //else
            //{
            //    lblDurum.Text = "Kullanıcıa adı veya şifre hatalı";
            //}

            DataTable dt = Kodlar.Giris(txtKullaniciAdi.Text, txtSifre.Text);
            if (dt.Rows.Count > 0)
            {
                Session["giris"] = dt;
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblDurum.Text = "Kullanıcıa adı veya şifre hatalı";
            }
        }

        int GirisKontrol(string kullaniciAdi, string sifre)
        {
            if (kullaniciAdi == "hanifi" && sifre == "123")
            {
                Session["giris"] = "1";
                return 1;
            }
            else
            {
                return 0;
            }
        }
    }
}