using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ilkWebProjem
{
    public partial class TasKagitMakas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTas_Click(object sender, EventArgs e)
        {
            Random rd = new Random();
            String[] oyun = { "Taş", "Kağıt", "Makas" };
            int tut = rd.Next(0, oyun.Length);
            string sec = oyun[tut];
            lblSec.Text = sec;
            if (sec == "Kağıt")
            {
                lblDurum.Text = "Kaybettiniz";
                
            }
            else if (sec == "Makas")
            {
                lblDurum.Text = "Kazandınız";
            }
            else
            {
                lblDurum.Text = "Berabere";
            }

        }

        protected void btnKagit_Click(object sender, EventArgs e)
        {
            Random rd = new Random();
            String[] oyun = { "Taş", "Kağıt", "Makas" };
            int tut = rd.Next(0, oyun.Length);
            string sec = oyun[tut];
            lblSec.Text = sec;
            if (sec == "Taş")
            {
                lblDurum.Text = "Kazandınız";
            }
            else if (sec == "Makas")
            {
                lblDurum.Text = "Kaybettiniz";
            }
            else
            {
                lblDurum.Text = "Berabere";
            }
        }

        protected void btnMakas_Click(object sender, EventArgs e)
        {
            Random rd = new Random();
            String[] oyun = { "Taş", "Kağıt", "Makas" };
            int tut = rd.Next(0, oyun.Length);
            string sec = oyun[tut];
            lblSec.Text = sec;
            if (sec == "Kağıt")
            {
                lblDurum.Text = "Kazandınız";
            }
            else if (sec == "Taş")
            {
                lblDurum.Text = "Kaybettiniz";
            }
            else
            {
                lblDurum.Text = "Berabere";
            }
        }
    }
}