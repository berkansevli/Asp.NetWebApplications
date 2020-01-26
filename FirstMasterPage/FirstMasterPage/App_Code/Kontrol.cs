using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstMasterPage.App_Code
{
    public class Kontrol : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            if (Session["abc"]==null)
            {
                Response.Redirect("Giris.aspx");
            }
            base.OnLoad(e);
        }
    }
}