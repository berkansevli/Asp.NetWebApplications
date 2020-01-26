using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage.Yonetim
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["giris"]==null)
            {
                Response.Redirect("Giris.aspx");
            }
            else
            {
                DataTable dt = (DataTable)Session["giris"];
                ltrKullaniciAdi.Text = dt.Rows[0]["AdiSoyadi"].ToString();
                //switch (dt.Rows[0]["Role"].ToString())
                //{
                   
                //}
            }
        }
    }
}