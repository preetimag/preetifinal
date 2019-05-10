<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Orders.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.0.0.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="stylesorder.css" rel="stylesheet" />
  <title>Preeti Magesh Restaurant</title>
    
</head>
<body>
    <form id="form1" runat="server" style="background-color:#000000" >
    <div class="header-top">
        <h2>PREETI MAGESH RESTAURANT</h2>
          </div>
        <div id="toppage"></div>
	    <div id="scroll" style="display: none;"><span></span></div>
		<header class="wrapper">     
		<div class="nav-bar">
        	<div class="nav-container">
                 <div class="nav-logo"><a href="/"><img src="food.png" alt="Preeti Magesh Restaurant"  /></a></div>
            	<div class="header-left">
				
					<a href="Default.aspx">Home</a> &nbsp;<a href="Contacts.aspx">Contacts</a> &nbsp; 
               <a href="Membership.aspx">Membership</a> &nbsp; 
                 <a href="Orders.aspx">Orders</a> <br />   
                    </div>
            
                    
                    
                    </div>
              </div>
            
            </header>
        <div class="header-image">
          
    <center> <img src="cart.png" height="215"   /> </center>
          </div>
    <br />

        <section>
        <div class="row">
            <div class="col-sm-12">
                <h1>Your shopping Cart</h1>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:ListBox ID="lstCart" runat="server" CssClass="form-control" OnSelectedIndexChanged="lstCart_SelectedIndexChanged"></asp:ListBox>
                    </div>
                </div>
            </div>
            <div class="col-sm--6">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnRemove" runat="server" Text="Remove Item" OnClick="btnRemove_Click" CssClass="btn" BackColor="#FFCCFF" BorderColor="#FFCCCC" BorderStyle="Solid" ForeColor="#660066" />
                    </div>
                    <div class="col-sm-12">
                        <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" OnClick="btnEmpty_Click" CssClass="btn" BackColor="#FFCCFF" BorderColor="#FFCCCC" BorderStyle="Solid" ForeColor="#660066" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="form-group">
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" CssClass="text-info col-sm-12"></asp:Label> 
                </div>
                <div class="form-group">
                    <div class=" col-sm-12">
                        <asp:Button ID="btnContinue" runat="server" PostBackUrl="~/Orders.aspx" Text="Continue Shopping" CssClass="btn" BackColor="#FFCCCC" BorderColor="#FFCCCC" BorderStyle="Solid" ForeColor="#660066" OnClick="btnContinue_Click" />
                        <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" Onclick="btnCheckOut_Click" CssClass="btn" BackColor="#FFCCFF" BorderColor="#FFCCCC" ForeColor="#660066" />
                    </div>
                </div>
            </div>
        </div>

</section>











         <div class="footer-copy">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Contacts.aspx">Back
               </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="Membership.aspx">Next&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			        &copy; 2019 PREETI MAGESH&nbsp; RESTAURANT                    &nbsp;| &nbsp; Privacy Policy           </div>
  

   </form>     
    
</body>
</html>
    
