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
    public partial class DersEkle : Kontrol
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                KayitListele(); 
            
        }

        void KayitListele()
        {
            OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            baglanti.Open();
            OleDbCommand kod = new OleDbCommand();
            kod.Connection = baglanti;
            if (Request.QueryString["s"] != null)
            {
                kod.CommandText = String.Format("Delete From tblDersler Where DersID={0}", Request.QueryString["s"]);
                kod.ExecuteNonQuery();
            }

            kod = new OleDbCommand("Select * From tblDersler", baglanti);
            OleDbDataAdapter da = new OleDbDataAdapter(kod);
            DataTable dt = new DataTable();
            da.Fill(dt);

            rptDersler.DataSource = dt;
            rptDersler.DataBind();
            baglanti.Close();
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            baglanti.Open();
            OleDbCommand kod = new OleDbCommand(@"Insert Into tblDersler (DersAdi, Aciklama) 
                                                        Values (@dersAdi, @aciklama)", baglanti);
            kod.Parameters.AddWithValue("@dersAdi", txtDersAdi.Text);
            kod.Parameters.AddWithValue("@aciklama", txtAciklama.Text);            
            int durum = kod.ExecuteNonQuery();
            if (durum > 0)
            {
                lblDurum.Text = "Kayıt Başarılı";
                
            }
            else
            {
                lblDurum.Text = "Kayıt sırasında hata oluştu";
            }
            baglanti.Close();

            KayitListele();
        }
    }
}