<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="NewCustomer.aspx.cs" Inherits="NewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <center>
    <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Register   </h3>  
			<div class="login-body">
			
              
         
				      <asp:TextBox ID="TextBox1" runat="server"  class="user" name="email" placeholder="Enter your name" required="" Width="458px"></asp:TextBox>
                  <br /> <br/>
                 <asp:TextBox ID="TextBox3" runat="server" type="text" class="lock" placeholder="Enter your Mobile" required="" Width="458px"></asp:TextBox>
					  <br /> <br/> 
                   <asp:TextBox ID="TextBox5" runat="server" type="text" class="lock" placeholder="Enter your Address" required="" Width="458px"></asp:TextBox>
					  <br /> <br/> 
					  <asp:TextBox ID="TextBox2" runat="server" type="text" name="password" class="lock" placeholder="Enter your Email" required="" Width="458px"></asp:TextBox>
					  <br /> <br/>					 

                 <asp:TextBox ID="TextBox4" runat="server" type="password" name="password" class="lock" placeholder="Enter a Password" required="" Width="458px"></asp:TextBox>
                  <br /> <br/>
                    <asp:Button ID="Button1" runat="server" Text="Create My Account" OnClick="Button1_Click" Width="458px"/>
                     
					   <br /> <br/>
                     


			    <asp:Label ID="warning" runat="server" style="color: #0000CC; font-size: medium"></asp:Label>
			</div>  
			 
		</div>
	</div>

 </center>


</asp:Content>

