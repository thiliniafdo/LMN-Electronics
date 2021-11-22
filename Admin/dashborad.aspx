<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LMN_ADMIN.master" AutoEventWireup="true" CodeFile="dashborad.aspx.cs" Inherits="dashborad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <ul class="breadcrumb">
                    <li><a href="#">LMN ELECTRONICS </a></li>
                    <li><a href="#">  DASHBOARD </a></li>
             
                </ul>
                            <form class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>ADMIN </strong> DASHBOARD</h3>
                                    
                                </div>
                                <div class="panel-body">
 

    <div class="row">



           <div class="row">
                  
                        <div class="col-md-3">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-default widget-item-icon"  >
                                <div class="widget-item-left">
                                    <span class="fa fa-rub"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count"> <asp:Label ID="Label3" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title">Total Profit</div>
                                  
                                </div>      
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip" data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <div class="col-md-3">
                            
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-envelope"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"> <asp:Label ID="Label5" runat="server" Text="0"></asp:Label></div>
                                    <div class="widget-title">  Total Orders</div>
                          
                                </div>
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip" data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                                </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>
                    
            <div class="col-md-3">
                            
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-envelope"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"> <asp:Label ID="Label6" runat="server" Text="0"></asp:Label></div>
                                    <div class="widget-title">Pending Orders</div>
                            
                                </div>
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip" data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                                </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>

                <div class="col-md-3">
                            
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon"  >
                                <div class="widget-item-left">
                                    <span class="fa fa-envelope"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"> <asp:Label ID="Label7" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title">Delivered orders   </div>
                                   
                                </div>
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip" data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                                </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>

                    </div>
                    <!-- END WIDGETS -->  


         
 
        <!-- ./col -->
      </div>
                                    </div></div></form>
      <!-- /.row -->
</asp:Content>

