<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

     <div class="login-page">  <center>
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Login </h3>  
			<div class="login-body">
			
            

				      <asp:TextBox ID="TextBox1" runat="server"  class="user" name="email" placeholder="Enter your email" required="" Width="458px"></asp:TextBox>
                <br/> <br/>
					  <asp:TextBox ID="TextBox2" runat="server" type="password" name="password" class="lock" placeholder="Password" required="" Width="458px"></asp:TextBox>
						  <br /> <br/>
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" Width="458px" />
                     
					  <br /> <br/>
                     


			    <asp:Label ID="warning" runat="server" style="color: #0000CC; font-size: medium"></asp:Label>
			</center></div>  
			

		</div>
	</div>


</asp:Content>


