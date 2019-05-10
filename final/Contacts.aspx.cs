using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Orders
{
    public partial class Contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            String a = Name.Text;
            btnSend.Text = Convert.ToString("Hi " + a + " Thankyou for your comments and precious time with us. If any queries, it will be answered promptly. Happy Dining!");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Name.Text = "";
            Subject.Text = "";
            Phone.Text = "";
            TextBox1.Text = "";
        }
    }
}