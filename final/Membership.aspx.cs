using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Orders
{
    public partial class Membership : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            Name.Text = "";
            Email.Text = "";
            Password.Text = "";
            Phone.Text = "";
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string a = Name.Text;
            btnSend.Text = Convert.ToString("Hi " + a + " Thankyou for signing up. Welcome! Activation link is sent to your mail.");
        }
    }
}