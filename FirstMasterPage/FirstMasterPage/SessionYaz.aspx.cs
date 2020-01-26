using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMasterPage
{
    public partial class SessionYaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            Session["veri"] = txtVeri.Text;
            //ViewState["veri"] = txtVeri.Text;
            //Application["veri"] = txtVeri.Text;
        }
    }
}