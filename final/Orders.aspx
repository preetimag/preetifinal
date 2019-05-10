<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Orders.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.0.0.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="stylesorder.css" rel="stylesheet" />
    
    
  <title>Preeti Magesh Restaurant</title>
    <meta name="description" content="Here is a precise description of my awesome restaurant." />
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
            	<div class="header-left">
				<nav>
					<a href="Default.aspx">Home</a> &nbsp;
             <a href="Contacts.aspx">Contacts</a> &nbsp;
               <a href="Membership.aspx">Membership</a> &nbsp;
                    <a href="Cart.aspx">ShoppingCart</a>  
                    </nav></div>
             <div class="nav-logo"><a href="/"><img class="logo" src="food.png" alt="Preeti Magesh Restaurant" /></a></div>
                    
                    
                    </div>
              </div>
            
            </header>
    <div class="header-image">
          
    <center><img src="order.png" height="215"   /> </center>
          </div>
    <br />

    <section>
      <h3>Place your Order</h3><br />
                  <div class="row">
                    <div class="col-sm-8">
                        <div class="form-group">
                         <label class="col-sm-5"> Please select a menu:</label>
                         <div class="col-sm-6">
                             <asp:DropDownList runat="server" ID="delicacies" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="DelID" CssClass="form-Control" Width="108px" OnSelectedIndexChanged="delicacies_SelectedIndexChanged">
                           </asp:DropDownList>




                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Delicacy %>" DeleteCommand="DELETE FROM [Delicacy] WHERE [DelID] = @DelID" InsertCommand="INSERT INTO [Delicacy] ([DelID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice]) VALUES (@DelID, @Name, @ShortDescription, @LongDescription, @CategoryID, @ImageFile, @UnitPrice)" SelectCommand="SELECT * FROM [Delicacy]" UpdateCommand="UPDATE [Delicacy] SET [Name] = @Name, [ShortDescription] = @ShortDescription, [LongDescription] = @LongDescription, [CategoryID] = @CategoryID, [ImageFile] = @ImageFile, [UnitPrice] = @UnitPrice WHERE [DelID] = @DelID">
                                 <DeleteParameters>
                                     <asp:Parameter Name="DelID" Type="Int32" />
                                 </DeleteParameters>
                                 <InsertParameters>
                                     <asp:Parameter Name="DelID" Type="Int32" />
                                     <asp:Parameter Name="Name" Type="String" />
                                     <asp:Parameter Name="ShortDescription" Type="String" />
                                     <asp:Parameter Name="LongDescription" Type="String" />
                                     <asp:Parameter Name="CategoryID" Type="String" />
                                     <asp:Parameter Name="ImageFile" Type="String" />
                                     <asp:Parameter Name="UnitPrice" Type="Decimal" />
                                 </InsertParameters>
                                 <UpdateParameters>
                                     <asp:Parameter Name="Name" Type="String" />
                                     <asp:Parameter Name="ShortDescription" Type="String" />
                                     <asp:Parameter Name="LongDescription" Type="String" />
                                     <asp:Parameter Name="CategoryID" Type="String" />
                                     <asp:Parameter Name="ImageFile" Type="String" />
                                     <asp:Parameter Name="UnitPrice" Type="Decimal" />
                                     <asp:Parameter Name="DelID" Type="Int32" />
                                 </UpdateParameters>
                             </asp:SqlDataSource>

                              <div class="form-group">
                            <div class="col-sm-12">
                                <h4><asp:Label ID="lblName" runat="server"></asp:Label></h4>
                            </div>
                        </div>
                         <div class="form-group">
                            <div class="col-sm-12">
                                <h4><asp:Label ID="lblShortDescription" runat="server"></asp:Label></h4>
                            </div>
                        </div>
                         <div class="form-group">
                            <div class="col-sm-12">
                                <h4><asp:Label ID="lblLongDescription" runat="server"></asp:Label></h4>
                            </div>
                        </div>
                         <div class="form-group">
                            <div class="col-sm-12">
                                <h4><asp:Label ID="lblUnitPrice" runat="server"></asp:Label></h4>
                            </div>
                        </div>
                        </div>
                    <div class="col-sm-4">
                        <asp:Image ID="imageFile" runat="server" />
                    </div>
                    </div>
            </div>
                      </div>
            

       <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                         <label class="col-sm-1">Quantity:</label>
                         <div class="col-sm-3">  
                         <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox></div>
                        <div class="col-sm-8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity must be specified"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity must range from 1 to 100." MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                            </div>
                        </div>


            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" OnClick="btnAdd_Click" CssClass="btn btn-primary" BackColor="#FF9999" BorderColor="#990000" ForeColor="Maroon" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCart" runat="server" Text="Go to Cart" PostBackUrl="~/Cart.aspx" CausesValidation="false" CssClass="btn btn-primary" BackColor="#FF9999" BorderColor="#990000" ForeColor="Maroon" />
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
    
