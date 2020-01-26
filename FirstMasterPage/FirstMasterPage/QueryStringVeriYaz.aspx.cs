using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage
{
    public partial class QueryStringVeriYaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            Response.Redirect("QueryStringVeriOku.aspx?veri=" + txtVeri.Text);
        }
    }
}