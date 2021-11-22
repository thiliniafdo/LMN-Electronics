<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>


    <form id="form1" runat="server">
 


 
<html lang="en">
     <head runat="server">
    <title></title>
 

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../LMN_Front/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../LMN_Front/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../LMN_Front/css/owl.carousel.css">
    <link rel="stylesheet" href="../LMN_Front/style.css">
    <link rel="stylesheet" href="../LMN_Front/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <div class="header-area">
        <div class="container">
            <div class="row">
                
                 <div class="col-md-8">
                    <div class="user-menu">
                       <%-- <ul>
                            <li><a href="#"><i class="fa fa-user"></i>   Link</a></li>
                          
                        </ul>--%>
                    </div>
                </div>

                <div class="col-md-12">
                    <br/>       <br/>       <br/>       <br/>    <br/>       <br/>       <br/>       <br/>
        <div class="login-page">  <center>
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">ADMINISTRATOR LOGIN   </h3>  
			 
			
            

				      <asp:TextBox ID="txtUnameAd" runat="server"  class="user" name="email" placeholder="Enter your email" required="" Width="458px"></asp:TextBox>
                                          <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUnameAd" Display="Dynamic" CssClass="ErrorMsg" ErrorMessage="Required" />
  <br/> <br/>
					  <asp:TextBox ID="txtPassAd" runat="server" type="password" name="password" class="lock" placeholder="Password" required="" Width="458px"></asp:TextBox>
						                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassAd" Display="Dynamic" ErrorMessage="Required" CssClass="ErrorMsg" />
  <br /> <br/>
               
                                                 <asp:Button  Width="458px"  ID="btnAdlogin" runat="server" Text="LOGIN ME" CssClass="button" OnClick="btnAdlogin_Click" /></td>

					  <br /> <br/>
                     
<span id="spnmsg" runat="server" visible="false" class="invalidlogin">Invalid  Login
            </span>

			    <asp:Label ID="warning" runat="server" style="color: #0000CC; font-size: medium"></asp:Label>
			</center></div>  
			

		</div>
	</div>




            
          
                
          


    </form>
     <br/>      <br/>       <br/>       <br/>       <br/>     <br/>       <br/>       <br/>    <br/>       <br/>       <br/>       <br/>
          
            </div>
         
        </div>
    </div>
