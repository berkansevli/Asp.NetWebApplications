using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace FirstMasterPage.App_Code
{
    public class Kodlar
    {
        public static DataTable Ogrenciler()
        {
            string kod = "Select * From tblOgrenciler";
            return VT.ExecuteReader(kod);
        }

        public static DataTable Giris(string kullaniciAdi, string sifre)
        {
            string kod = "Select * From tblKullanicilar Where KullaniciAdi=@kullaniciAdi and Sifre=@sifre";
            string[] parametre = { "@kullaniciAdi", "@sifre" };
            string[] veri = { kullaniciAdi, sifre };
            return VT.ExecuteReader(kod, parametre, veri);
        }

        #region Kullanıcılar

        public static int KullaniciEkle(string kullaniciAdi, string sifre, string adiSoyadi, FileUpload fotograf)
        {
            string yol = "";
            if (fotograf.HasFile)
            {
                yol = fotograf.FileName.Split('.')[0] + "_" + DateTime.Now.Minute + DateTime.Now.Second + "." + fotograf.FileName.Split('.')[1];
                fotograf.SaveAs(HttpContext.Current.Server.MapPath("~/Uploads/Kullanicilar/"+ yol));
            }
            string kod = "Insert Into tblKullanicilar (KullaniciAdi, Sifre, AdiSoyadi, Fotograf) Values (@kullaniciAdi, @sifre, @adiSoyadi, @fotograf)";
            string[] parametre = { "@kullaniciAdi", "@sifre", "@adiSoyadi", "@fotograf" };
            string[] veri = { kullaniciAdi, sifre, adiSoyadi, yol };
            return VT.ExecuteNonQuery(kod, parametre, veri);
        }

        public static int KullaniciDuzelt(string kullaniciAdi, string sifre, string adiSoyadi, FileUpload fotograf, string eskiFotograf, string kullaniciID)
        {
            if (fotograf.HasFile)
            {
                eskiFotograf = fotograf.FileName.Split('.')[0] + "_" + DateTime.Now.Minute + DateTime.Now.Second + "." + fotograf.FileName.Split('.')[1];
                fotograf.SaveAs(HttpContext.Current.Server.MapPath("~/Uploads/Kullanicilar/" + eskiFotograf));
            }
            string kod = "Update tblKullanicilar Set KullaniciAdi=@kullaniciAdi, Sifre=@sifre, AdiSoyadi=@adiSoyadi, Fotograf=@fotograf Where KullaniciID=@kullaniciID";
            string[] parametre = { "@kullaniciAdi", "@sifre", "@adiSoyadi", "@fotograf", "@kullaniciID" };
            string[] veri = { kullaniciAdi, sifre, adiSoyadi, eskiFotograf, kullaniciID };
            return VT.ExecuteNonQuery(kod, parametre, veri);
        }

        public static DataTable Kullanicilar()
        {
            string kod = "Select * From tblKullanicilar";
            return VT.ExecuteReader(kod);
        }

        public static DataTable KullaniciCek(string kullaniciID)
        {
            string kod = "Select * From tblKullanicilar where KullaniciID=@kullaniciID";
            string[] parametre = { "@kullaniciID" };
            string[] veri = { kullaniciID };
            return VT.ExecuteReader(kod, parametre, veri);
        }
        #endregion

        #region İletişim

        public static int IletisimFormuKaydet(string adSoyad, string ePosta, string yas, string konu, string mesaj)
        {
            string ipAdres = HttpContext.Current.Request.UserHostAddress;
            //if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
            //{
            //    ipAdres = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
            //}
            //else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
            //{
            //    ipAdres = HttpContext.Current.Request.UserHostAddress;
            //}
            string kod = "Insert Into tblIletisim (AdiSoyadi, EPosta, Yas, Konu, Mesaj, IPAdres) Values (@adSoyad, @ePosta, @yas, @konu, @mesaj, @ipAdres)";
            string[] parametre = { "@adSoyad", "@ePosta", "@yas", "@konu", "@mesaj", "@ipAdres" };
            string[] veri = { adSoyad, ePosta, yas, konu, mesaj, ipAdres };
            return VT.ExecuteNonQuery(kod, parametre, veri);
        }

        public static DataTable IletisimFormu()
        {
            string kod = "Select * From tblIletisim Where Aktif=true";
            return VT.ExecuteReader(kod);
        }

        public static int IletisimSil(string iletisimID)
        {
            string kod = "Update tblIletisim Set Aktif=0 Where IletisimID=@iletisimID";
            string[] parametre = { "@iletisimID" };
            string[] veri = { iletisimID };
            return VT.ExecuteNonQuery(kod, parametre, veri);
        }

        public static int IletisimOkundu(string iletisimID)
        {
            string kod = "Update tblIletisim Set OkunduMu=1 Where IletisimID=@iletisimID";
            string[] parametre = { "@iletisimID" };
            string[] veri = { iletisimID };
            return VT.ExecuteNonQuery(kod, parametre, veri);
        }

        public static int IletisimOkunmadi(string iletisimID)
        {
            string kod = "Update tblIletisim Set OkunduMu=0 Where IletisimID=@iletisimID";
            string[] parametre = { "@iletisimID" };
            string[] veri = { iletisimID };
            return VT.ExecuteNonQuery(kod, parametre, veri);
        }

        #endregion

    }
}