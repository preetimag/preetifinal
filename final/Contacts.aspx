<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="Orders.Contacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-3.0.0.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="stylescontact.css" rel="stylesheet" />
      
  <title>Preeti Magesh Restaurant</title>
    
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
                    <a href="Orders.aspx">Orders</a> &nbsp;
               <a href="Membership.aspx">Membership</a>  
                    </div>
                <div class="nav-logo"><a href="/"><img class="logo" src="food.png" alt="Preeti Magesh Restaurant" /></a></div>
            	
             
                    
                    
                    </div>
              </div>
            
            </header>
        <div class="header- image">
          
    <center><img src="contacts.png" height="215"  /> </center>
          </div>
    <br />
        <div class="internal full">
	<section class="wrapper">
		<div class="inner">
			<article>
                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                        <h3> Headquarters:</h3>
                        <p>
                            3255, River Avenue<br />
                            Park Meadows,CO 80524<br />
                            Main: 720-224-2867<br />
                            Fax: 842-224-0315<br /><br />
                         <b>Contact Leadership Team:</b></p>
                        <ul>
<li>Jason Andrew, CEO</li>
<li>Richard Steve, COO</li>
<li>Erica Smith, Director</li>
<li>Jamie Fusan, Executive Assistant</li>
</ul>
                        </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                        <h3>Contact us with your questions and comments.</h3>
                        <label for="Name">&nbsp;Name:</label>
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Enter only letters" ValidationGroup="valGroup" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" CssClass="validator" ErrorMessage="Name is required" ControlToValidate="Name" Display="Dynamic"></asp:RequiredFieldValidator>
                   <br />
                        <label for="Subject">Subject</label>
                <asp:TextBox ID="Subject" runat="server" Width="425px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" CssClass="validator" ErrorMessage="Enter the subject" ControlToValidate="Subject" Display="Dynamic"></asp:RequiredFieldValidator>
                        <br />
                      <label for="CommentsQueries">CommentsQueries</label>
                <asp:TextBox ID="TextBox1" runat="server" Width="425px" ></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" CssClass="validator" ErrorMessage="Enter the comments or queries" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                        <br />
                        <label for="Phone">Phone:</label>
               <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="validator" ErrorMessage="Enter Phone number" ControlToValidate="Phone" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Phone" ErrorMessage="Invalid phonenumber" ValidationGroup="valGroup" ValidationExpression="^([0-9]{3})?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" CssClass="btn btn-primary" BackColor="#FF9999" BorderColor="#990000" ForeColor="Maroon" /><br />
                        <asp:Button ID="btnClear" runat="server" BackColor="#FF9999" BorderColor="#990000" CausesValidation="false" CssClass="btn btn-primary" ForeColor="Maroon" OnClick="btnClear_Click" Text="Clear"  /><br />
                </div>
                                    </div>
                </article>
            </div>
            </section>
            </div>
         <div class="internal full">
	<section class="content wrapper">
		<div class="inner">
			<article>
				<div class="row">
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <a href="#"><img src="o1.png" height="340"  /></a>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <a href="#"><img src="o2.png" height="340"  /> </a>
                    </div>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                        <a href="#"> <img src="o3.png" height="340" width="410"  /></a>
                    </div>
				</div>
			</article>
		</div>
	</section>
    </div>



            <div class="footer-copy">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Default.aspx">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <a href="Orders.aspx">Next</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			        &copy; 2019 PREETI MAGESH&nbsp; RESTAURANT                    &nbsp;| &nbsp; Privacy Policy           </div>



    </form>
</body>
</html>
