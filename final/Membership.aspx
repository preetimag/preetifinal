<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="Orders.Membership" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.0.0.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="stylesmember.css" rel="stylesheet" />
    
  <title>Preeti Magesh Restaurant</title>
  <meta name="robots" content="noindex, nofollow" />
</head>
<body>
    <form id="form1" runat="server" style="background-color:#000000">
    <div class="header-top">
        <h2>PREETI MAGESH RESTAURANT</h2>

          </div>
        <div id="toppage"></div>
	    <div id="scroll" style="display: none;"><span></span></div>
		<header class="wrapper">     
		<div class="nav-bar">
        	<div class="nav-container">
                <div class="header-left">
				<a href="Default.aspx">Home</a> &nbsp;
             <a href="Contacts.aspx">Contacts</a> &nbsp;
                    <a href="Orders.aspx">Orders</a> <br />
               
                    </div>
                <div class="nav-logo"><a href="/"><img class="logo" src="food.png" alt="Preeti Magesh Restaurant" /></a></div>
            	
             
                    
                    
                    </div>
              </div>
            
            </header>
        <div class="header-image">
        <center> <img src="member.png" height="215"   /> </center>
          </div>
    <br />
        <div class="internal full">
	<section class="content wrapper">
		<div class="inner">
			<article>
                <h2>Sign Up and earn points for discount</h2>
                <label for="Name">Name:</label>
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Name" ErrorMessage="Enter only letters" ValidationGroup="valGroup" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" CssClass="validator" ErrorMessage="Name is required" ControlToValidate="Name" Display="Dynamic"></asp:RequiredFieldValidator>
                   <br />
                <label for="Email">Email:</label>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter the correct format" ValidationGroup="valGroup" ValidationExpression="^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,63}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" CssClass="validator" ErrorMessage="email address is required" ControlToValidate="Email" Display="Dynamic"></asp:RequiredFieldValidator>
                   <br />
                <label for="Password">Password:</label>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Enter the correct format" ValidationGroup="valGroup" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" CssClass="validator" ErrorMessage="set a password" ControlToValidate="Password" Display="Dynamic"></asp:RequiredFieldValidator>
                   <br />
                <label for="Phone">Phone:</label>
               <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="validator" ErrorMessage="Enter Phone number" ControlToValidate="Phone" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Phone" ErrorMessage="Invalid phonenumber" ValidationGroup="valGroup" ValidationExpression="^([0-9]{3})?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"></asp:RegularExpressionValidator>
                        <br />
                <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" CssClass="btn btn-primary" BackColor="#FF9999" BorderColor="#990000" ForeColor="Maroon" />
                  <br />
        <asp:Button ID="btnClear" runat="server" BackColor="#FF9999" BorderColor="#990000" CausesValidation="false" CssClass="btn btn-primary" ForeColor="Maroon" OnClick="btnClear_Click" Text="Clear"  /><br />
          </article>
            </div>
                </section>
            </div>      
         <div class="footer-copy">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <a href="Orders.aspx">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
			        &copy; 2019 PREETI MAGESH&nbsp; RESTAURANT                    &nbsp;| &nbsp; Privacy Policy       
             
         </div>
         
    </form>
</body>
</html>
