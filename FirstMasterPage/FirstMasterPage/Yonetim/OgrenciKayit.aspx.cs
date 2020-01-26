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
    public partial class OgrenciKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string id = Request.QueryString["id"];
            //// veritabanından id'ye ait kayıt çekilip textbox'lara yazılacak.
            //switch (id)
            //{
            //    case "1":
            //        txtAdiSoyadi.Text = "David R";
            //        break;
            //    case "2":
            //        txtAdiSoyadi.Text = "Chris Jack";
            //        break;
            //    case "3":
            //        txtAdiSoyadi.Text = "Jack Chris";
            //        break;
            //}

            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
                    baglanti.Open();

                    //OleDbCommand kod = new OleDbCommand("Select * From tblKullanicilar Where KullaniciAdi='"+txtKullaniciAdi.Text+"' and Sifre='"+txtSifre.Text+"'", baglanti);
                    OleDbCommand kod = new OleDbCommand(String.Format("Select * From tblOgrenciler Where OgrenciID={0}", Request.QueryString["id"]), baglanti);
                    OleDbDataAdapter da = new OleDbDataAdapter(kod);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        txtAdiSoyadi.Text = dt.Rows[0]["AdiSoyadi"].ToString();
                        txtDogumTarihi.Text = dt.Rows[0]["DogumTarihi"].ToString();
                        txtDogumYeri.Text = dt.Rows[0]["DogumYeri"].ToString();
                        txtOgrenciNo.Text = dt.Rows[0]["OgrenciNo"].ToString();
                        txtTCKimlikNo.Text = dt.Rows[0]["TCKimlikNo"].ToString();
                        txtTelefon1.Text = dt.Rows[0]["Telefon1"].ToString();
                        txtTelefon2.Text = dt.Rows[0]["Telefon2"].ToString();
                    }
                } 
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            baglanti.Open();
            string uyari = "";
            OleDbCommand kod = new OleDbCommand();
            kod.Connection = baglanti;
            if (Request.QueryString["id"] != null)
            {
                kod.CommandText = @"Update tblOgrenciler Set TCKimlikNo=@tcKimlikNo, OgrenciNo=@ogrenciNo, AdiSoyadi=@adiSoyadi, DogumTarihi=@dogumTarihi,
                                                             DogumYeri=@dogumYeri, Telefon1=@telefon1, Telefon2=@telefon2 Where OgrenciID=@ogrenciID"+Request.QueryString["id"];
              
                uyari = "Düzeltilme Yapılmıştır";
            }
            else
            {
                kod.CommandText = @"Insert Into tblOgrenciler (TCKimlikNo, OgrenciNo, AdiSoyadi, DogumTarihi, DogumYeri, Telefon1, Telefon2) 
                                                   Values (@tcKimlikNo, @ogrenciNo, @adiSoyadi, @dogumTarihi, @dogumYeri, @telefon1, @telefon2)";
                uyari = "Kayit Yapılmıştır";
            }
            kod.Parameters.AddWithValue("@tcKimlikNo", txtTCKimlikNo.Text);
            kod.Parameters.AddWithValue("@ogrenciNo", txtOgrenciNo.Text);
            kod.Parameters.AddWithValue("@adiSoyadi", txtAdiSoyadi.Text);
            kod.Parameters.AddWithValue("@dogumTarihi", txtDogumTarihi.Text);
            kod.Parameters.AddWithValue("@dogumYeri", txtDogumYeri.Text);
            kod.Parameters.AddWithValue("@telefon1", txtTelefon1.Text);
            kod.Parameters.AddWithValue("@telefon2", txtTelefon2.Text);

            int durum = kod.ExecuteNonQuery();
            if (durum > 0)
            {
                lblDurum.Text = uyari;
            }
            else
            {
                lblDurum.Text = "İşlem sırasında bir hata oluştu";
            }
            baglanti.Close();
        }
    }
}