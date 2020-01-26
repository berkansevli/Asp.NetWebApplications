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
    public partial class Ogrenciler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //OleDbConnection baglanti = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\ilkVeritabani.mdb;Persist Security Info = False;");
            //baglanti.Open();
            //OleDbCommand kod = new OleDbCommand();
            //kod.Connection = baglanti;
            //if (Request.QueryString["s"]!=null)
            //{
            //    kod.CommandText = String.Format("Delete From tblOgrenciler Where OgrenciID={0}", Request.QueryString["s"]);
            //    kod.ExecuteNonQuery();
            //}

            //kod = new OleDbCommand("Select * From tblOgrenciler");
            //OleDbDataAdapter da = new OleDbDataAdapter(kod);
            //DataTable dt = new DataTable();
            //da.Fill(dt);

            //rptOgrenciler.DataSource = dt;
            //rptOgrenciler.DataBind();
            //baglanti.Close();

            rptOgrenciler.DataSource = Kodlar.Ogrenciler();
            rptOgrenciler.DataBind();
        }
    }
}