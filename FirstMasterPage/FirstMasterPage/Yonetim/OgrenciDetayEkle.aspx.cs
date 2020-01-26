using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage.Yonetim
{
    public partial class OgrenciDetayEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            baglanti.Open();
            OleDbCommand kod = new OleDbCommand(@"Select AdiSoyadi From tblOgrenciler Where OgrenciID="+Request.QueryString["id"], baglanti);
            string ad = kod.ExecuteScalar().ToString();
            ltrAdiSoyadi.Text = ad;
            baglanti.Close();
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            baglanti.Open();
            OleDbCommand kod = new OleDbCommand(@"Insert Into tblOgrenciDetay (Adres, AnneAdi, BabaAdi, KanGrubu, EnSonMezunOlunanOkul, MezuniyetNotu, KronikHastalik, EngelDurumu, AcilDurumNumarasi, OgrenciID) 
                                                        Values (@adres, @anneAdi, @babaAdi, @kanGrubu, @enSonMezunOlunanOkul, @mezuniyetNotu, @kronikHastalik, @engelDurumu, @acilDurumNumarasi, @ogrenciID)", baglanti);
            kod.Parameters.AddWithValue("@adres", txtAdres.Text);
            kod.Parameters.AddWithValue("@anneAdi", txtAnneAdi.Text);
            kod.Parameters.AddWithValue("@babaAdi", txtBabaAdi.Text);
            kod.Parameters.AddWithValue("@kanGrubu", txtKanGrubu.Text);
            kod.Parameters.AddWithValue("@enSonMezunOlunanOkul", txtEnSonMezunOlduguOkul.Text);
            kod.Parameters.AddWithValue("@mezuniyetNotu", txtMezuniyetNotu.Text);
            kod.Parameters.AddWithValue("@kronikHastalik", cbKronikHastalik.Checked==true?"Var":"Yok");
            kod.Parameters.AddWithValue("@engelDurumu", cbEngelDurumu.Checked == true ? "Var" : "Yok");
            kod.Parameters.AddWithValue("@acilDurumNumarasi", txtAcilDurumNo.Text);
            kod.Parameters.AddWithValue("@ogrencID", Request.QueryString["id"]);
            int durum = kod.ExecuteNonQuery();
            if (durum>0)
            {
                lblDurum.Text = "Kayıt Başarılı";
            }
            else
            {
                lblDurum.Text = "Kayıt sırasında hata oluştu";
            }
            baglanti.Close();

        }
    }
}