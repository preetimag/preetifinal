using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.AspNet.FriendlyUrls;

namespace Orders
{
    public partial class Cart : System.Web.UI.Page
    {
        private Orders.CartItemList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = Orders.CartItemList.GetCart();
            if (!IsPostBack) this.DisplayCart();
        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                if (lstCart.SelectedIndex > -1)
                {
                    cart.RemoveAt(lstCart.SelectedIndex);
                    this.DisplayCart();
                }
                else
                {
                    lblMessage.Text = "Please selelct the item to remove. ";
                }
            }
        }
        private void DisplayCart()
        {
            
            lstCart.Items.Clear();
            for (int i = 0; i < cart.Count; i++)
            {
                lstCart.Items.Add(cart[i].Dislpay());
            }
        }
        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if (cart.Count > 0)
            {
                cart.Clear();
                lstCart.Items.Clear();
            }
        }
        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Sorry, that function hasn't been" + " implemented yet.";
        }

        protected void lstCart_SelectedIndexChanged(object sender, EventArgs e)
        {
            var url = HttpContext.Current.Request.GetFriendlyUrlSegments();
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {

        }
    }

}