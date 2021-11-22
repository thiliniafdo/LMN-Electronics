<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .lblresponse {
            font-size:16px !important;
            color:#851010;
        }
        .auto-style1 {
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
            <div class="login-page">
		 
			<h3 class="w3ls-title w3ls-title1">Checkout </h3>   
    
    
    <asp:Label ID="lblMsg"   runat="server" CssClass="lblresponse"/>
        </div>
            <div id="divmain" runat="server">
                 <div style="width: 100%;" align="center">
                <asp:GridView class="table datatable" ID="gvorder" runat="server"   CaptionAlign="Top"
                    AutoGenerateColumns="False"   BackColor="White"
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                    EmptyDataText="There Are no items in Your Cart">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="imgPd" runat="server" Height="60px"
                                    ImageUrl='<%# Eval("Product_img") %>' Width="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Order Number" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblOrderNum" runat="server" Text='<%# Eval("OrderNumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>  <asp:Label ID="lblUnit" runat="server" Text='<%# Eval("Unit") %>'></asp:Label>
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                               Rs <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="TotalPrice">
                            <ItemTemplate>
                                &nbsp;Rs <asp:Label ID="lbltotPriceGv" runat="server" Text='<%#Bind("TotalPrice") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle BackColor="#eeeeee" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="1px" Font-Size="Large" ForeColor="#851010"
                        HorizontalAlign="Center" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                        <span><span class="auto-style1">Cart Total&nbsp; Amount</span>&nbsp; <asp:Label ID="lbltotPrice" runat="server" Text="" style="color: #FF3300"></asp:Label></span>
                     <br />
            </div>





          
                                 <asp:Label ID="lblOrderCode" runat="server"  ></asp:Label>
                            
                         
               
                 
                 
              </div>

    <div align="right">
      
        <asp:Button ID="Button1" runat="server" Text="Confirm Order" OnClick="Button1_Click" />
    </div>
                
           

            <div style="width: 100%;" align="center" id="dvempty" runat="server" visible="false">
                <div>
                    <table cellspacing="2" cellpadding="3" rules="cols" style="background-color: White; border-color: #999999; border-width: 1px; border-style: None; height: 100px; width: 574px;">
                        <tr align="center" style="color: #851010; background-color: #EEEEEE; border-color: Black; border-width: 1px; border-style: Solid; font-size: Large;">
                            <td colspan="6">There Are no items in Your Cart</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div style="width: 100%;" align="center" id="divLogin" runat="server" visible="false">
                <div>
                    <table cellspacing="2" cellpadding="3" rules="cols" style="background-color: White; border-color: #999999; border-width: 1px; border-style: None; height: 100px; width: 574px;">
                        <tr align="center" style="color: #851010; background-color: #EEEEEE; border-color: Black; border-width: 1px; border-style: Solid; font-size: Large;">
                            <td colspan="6">Please Login To Continue...</td>
                        </tr>
                    </table>
                </div>
            </div>
       
</asp:Content>

