using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace FirstMasterPage.App_Code
{
    public class VT2
    {
        public static OleDbConnection Baglan()
        {
            OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            return baglanti;
        }
        public static DataTable ExecuteReader(string sql)
        {
            OleDbCommand kod = new OleDbCommand(sql);
            kod.Connection = Baglan();
            kod.Connection.Open();
            OleDbDataAdapter da = new OleDbDataAdapter(kod);
            DataTable dt = new DataTable();
            da.Fill(dt);
            kod.Connection.Close();
            return dt;
        }

        public static DataTable ExecuteReader(string sql, string[] parametre, string[] veri)
        {
            OleDbCommand kod = new OleDbCommand(sql, Baglan());
            kod.Connection.Open();
            for (int i = 0; i < parametre.Length; i++)
            {
                kod.Parameters.AddWithValue(parametre[i], veri[i]);
            }
            OleDbDataAdapter da = new OleDbDataAdapter(kod);
            DataTable dt = new DataTable();
            da.Fill(dt);
            kod.Connection.Close();
            return dt;
        }

        public static int ExecuteNonQuery(string sql, string[] parametre, string[] veri)
        {
            OleDbCommand kod = new OleDbCommand(sql, Baglan());
            kod.Connection.Open();
            for (int i = 0; i < parametre.Length; i++)
            {
                kod.Parameters.AddWithValue(parametre[i], veri[i]);
            }
            int durum = kod.ExecuteNonQuery();
            kod.Connection.Close();
            return durum;
        }

        public static object ExecuteScalar(string sql, string[] parametre, string[] veri)
        {
            OleDbCommand kod = new OleDbCommand(sql, Baglan());
            kod.Connection.Open();
            for (int i = 0; i < parametre.Length; i++)
            {
                kod.Parameters.AddWithValue(parametre[i], veri[i]);
            }
            object durum = kod.ExecuteScalar();
            kod.Connection.Close();
            return durum;
        }
    }
}