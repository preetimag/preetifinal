using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;
namespace Orders
{
    public partial class Orders : System.Web.UI.Page
    {
        public class Indian
        {
            public string DelID { get; set; }
            public string Name { get; set; }
            public string ShortDescription { get; set; }
            public string LongDescription { get; set; }
            public decimal UnitPrice { get; set; }
            public string ImageFile { get; set; }
        }

        private Indian selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack) delicacies.DataBind();
            selectedProduct = this.GetSelectedProduct();
            lblName.Text = selectedProduct.Name;
            lblShortDescription.Text = selectedProduct.ShortDescription;
            lblLongDescription.Text = selectedProduct.LongDescription;
            lblUnitPrice.Text = selectedProduct.UnitPrice.ToString() + " each";
            imageFile.ImageUrl ="Images/"+ selectedProduct.ImageFile;
        }

        protected void delicacies_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            { 
            SqlConnection con = new SqlConnection("Server=tcp:prest.database.windows.net,1433;Initial Catalog=prest;Persist Security Info=True;User ID=mageshp;Password=Myworld1;");
            con.Open();


                SqlCommand cmd = new SqlCommand();
            

           

            
                

            }
            catch (Exception ex)
            {
                ex = HttpContext.Current.Server.GetLastError();
                Response.Write(ex);
            }
        }
        private Indian GetSelectedProduct()
        {
            DataView delicaciesTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            delicaciesTable.RowFilter = String.Format("DelID='{0}'", delicacies.SelectedValue);
            DataRowView row = delicaciesTable[0];
            Indian i = new Indian();
            i.DelID = row["DelID"].ToString();
            i.Name = row["Name"].ToString();
            i.ShortDescription = row["ShortDescription"].ToString();
            i.LongDescription = row["LongDescription"].ToString();
            i.UnitPrice = (decimal)row["UnitPrice"];
            i.ImageFile = row["ImageFile"].ToString();
            return i;
        }
        public class CartItemList
        {
            private List<CartItem> cartItems;
            public CartItemList()
            {
                cartItems = new List<CartItem>();
            }
            public int Count
            {
                get { return cartItems.Count; }
            }
            public CartItem this[int index]
            {
                get
                {
                    return cartItems[index];
                }
            }
            public CartItem this[string id]
            {
                get
                {
                    foreach (CartItem c in cartItems)
                        if (c.product1.DelID == id) return c;
                    return null;
                }

            }
            public static CartItemList GetCart()
            {
                CartItemList cart = (CartItemList)HttpContext.Current.Session["Cartorder"];
                if (cart == null)
                    HttpContext.Current.Session["Cartorder"] = new CartItemList();
                return (CartItemList)HttpContext.Current.Session["Cartorder"];
            }
            public void AddItem(Indian product1, int quantity)
            {
                CartItem c = new CartItem(product1, quantity);
                cartItems.Add(c);
            }
            public void RemoveAt(int index)
            {
                cartItems.RemoveAt(index);
            }
            public void Clear()
            {
                cartItems.Clear();
            }
        }

        public class CartItem
        {
            public CartItem() { }
            public CartItem(Indian product1, int quantity)
            {
                this.product1 = product1;

                this.Quantity = quantity;
            }
            public Indian product1 { get; set; }

            public int Quantity { get; set; }
            public void AddQuantity(int quantity)
            {
                this.Quantity += quantity;
            }
            public string Dislpay()
            {
                string displayString = string.Format("{0} ({1} at {2} each)", product1.Name, Quantity.ToString(), product1.UnitPrice.ToString());
                return displayString;

            }
        }
        
        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.DelID];

                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct, Convert.ToInt32(txtQuantity.Text));
                }

                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                





            }
        }
        
    }
}
