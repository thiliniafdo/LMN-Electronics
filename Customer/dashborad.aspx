<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="dashborad.aspx.cs" Inherits="dashborad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login-page">
		 
 

        <center>
          <div class="row">
        <div class="col-lg-6 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>  <asp:Label ID="Label1" runat="server" Text="0"></asp:Label></h3>

              <p>  Pending Orders</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
           </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-6 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>  <asp:Label ID="Label2" runat="server" Text="0"></asp:Label></h3>

              <p>  Delivered  Orders  </p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
           </div>
        </div>
        <!-- ./col -->
         
        <!-- ./col -->
        
        <!-- ./col -->
      </div> </center>
      <!-- /.row -->

        	</div>
</asp:Content>

