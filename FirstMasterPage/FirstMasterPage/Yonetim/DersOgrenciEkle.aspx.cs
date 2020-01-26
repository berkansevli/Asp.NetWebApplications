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
    public partial class DersOgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
                baglanti.Open();
                OleDbCommand kod = new OleDbCommand(@"Select * From tblDersler", baglanti);
                OleDbDataAdapter da = new OleDbDataAdapter(kod);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddlDersler.DataSource = dt;
                ddlDersler.DataTextField = "DersAdi";
                ddlDersler.DataValueField = "DersID";
                ddlDersler.DataBind();


                dt.Rows.Clear();
                kod.CommandText = "Select * From tblOgrenciler";
                OleDbDataAdapter da2 = new OleDbDataAdapter(kod);
                da2.Fill(dt);
                ddlOgrenciler.DataSource = dt;
                ddlOgrenciler.DataTextField = "AdiSoyadi";
                ddlOgrenciler.DataValueField = "OgrenciID";
                ddlOgrenciler.DataBind();

                baglanti.Close(); 
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            baglanti.Open();
            OleDbCommand kod = new OleDbCommand(@"Insert Into tblOgrenciDersler (OgrenciID, DersID) 
                                                        Values (@ogrenciID, @dersID)", baglanti);
            kod.Parameters.AddWithValue("@ogrenciID", ddlOgrenciler.SelectedValue);
            kod.Parameters.AddWithValue("@dersID", ddlDersler.SelectedValue);
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

        }
    }
}