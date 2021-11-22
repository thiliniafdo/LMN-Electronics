<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LMN_ADMIN.master" AutoEventWireup="true" CodeFile="LMNCustomers.aspx.cs" Inherits="LMNCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <ul class="breadcrumb">
                    <li><a href="#">LMN ELECTRONICS </a></li>
                    <li><a href="#">  CUSTOMERS </a></li>
             
                </ul>
                            <form class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>CUSTOMERS </strong> LIST</h3>
                                    
                                </div>
                                <div class="panel-body">

 

            <div align="center" style="height: 30px;">            <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse" />
        </div><center>


           <asp:GridView class="table" ID="gvCustomer" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." Height="150px" HorizontalAlign="Center" Width="1100px" CellPadding="4" ForeColor="#333333" GridLines="None"    >
                                            <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                    <asp:BoundField DataField="name" HeaderText="Customer Name" SortExpression="name" />
                    <asp:BoundField DataField="UserEmail" HeaderText="Email Address" SortExpression="UserEmail" />
                    <asp:BoundField DataField="mobile" HeaderText="Contact Number" SortExpression="mobile" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                                            <EditRowStyle BackColor="#2461BF" />
                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#EFF3FB" />
                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView></center>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LMNDB2021ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:LMNDB2021ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [name], [UserEmail], [mobile], [Password] FROM [Login]"></asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LMNDB2021ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:LMNDB2021ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [UserEmail], [Password] FROM [Login]"></asp:SqlDataSource>
      
                                    
                                    
        
                                </div>
                                
                                
                            </div>
                            </form>                            
                                    
                                    
                                    
                                    
                                       
</asp:Content>

