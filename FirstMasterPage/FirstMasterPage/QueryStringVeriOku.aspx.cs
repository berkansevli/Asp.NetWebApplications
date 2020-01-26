using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage
{
    public partial class QueryStringVeriOku : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["veri"]!=null)
            {
                lblVeri.Text = Request.QueryString["veri"];
            }
            else
            {
                lblVeri.Text = Guid.NewGuid().ToString(); //"Veri bulunamadı";
            }
        }
    }
}