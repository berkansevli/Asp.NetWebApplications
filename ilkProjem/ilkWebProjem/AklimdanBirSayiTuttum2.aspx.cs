using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ilkWebProjem
{
    public partial class AklimdanBirSayiTuttum2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                hdMax.Value = "100";
                hdMin.Value = "0";
                Random rnd = new Random();
                lblTahmin.Text = rnd.Next(Convert.ToInt32(hdMin.Value), Convert.ToInt32(hdMax.Value)).ToString();
            }
        }

        protected void btnDahaKucuk_Click(object sender, EventArgs e)
        {
            hdMax.Value = lblTahmin.Text;
            SayiTahminEt();
        }

        protected void btnDahaBuyuk_Click(object sender, EventArgs e)
        {
            hdMin.Value = lblTahmin.Text;
            SayiTahminEt();
        }

        void SayiTahminEt()
        {
            Random rnd = new Random();
            lblTahmin.Text = rnd.Next(Convert.ToInt32(hdMin.Value) + 1, Convert.ToInt32(hdMax.Value)).ToString();
            lblMin.Text = hdMin.Value;
            lblMax.Text = hdMax.Value;
        }
    }
}