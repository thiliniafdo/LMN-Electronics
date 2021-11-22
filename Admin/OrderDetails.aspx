<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LMN_ADMIN.master" AutoEventWireup="true" CodeFile="OrderDetails.aspx.cs" Inherits="OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
              <ul class="breadcrumb">
                    <li><a href="#">LMN ELECTRONICS </a></li>
                    <li><a href="#">  CUSTOMER ORDERS </a></li>
             
                </ul>
                            <form class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>CUSTOMER </strong> INVOICE</h3>
                                    
                                </div>
                                <div class="panel-body">
     
                    <table>
                        <tr>
                            <td class="auto-style3">Shopping Code : </td>
                            <td class="auto-style4">
                                <asp:Label ID="lblOrderCode" runat="server" />
                                </td>
                        </tr>
                       <tr>
                            <td class="auto-style3">shopping Time : </td>
                            <td class="auto-style4">
                                <asp:Label ID="lblOrderTime" runat="server" />
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Customer Name :
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="lblCustomerName" runat="server" />
                                </td>
                         </tr>
                        <tr>
                            <td class="auto-style3">Address :</td>
                            <td class="auto-style4">
                                <asp:Label ID="lblAddress" runat="server" />
                                </td>

                        </tr>
                        <tr>
                
                    </table>

            <div align="Left">
                <asp:GridView class="table" ID="gvorderHistory" runat="server" CaptionAlign="Top"
                    AutoGenerateColumns="False"  
                    EmptyDataText="There Are no Orders" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="Image" Visible="False">
                        <ItemTemplate>
                            <asp:Image ID="imgPd" runat="server" Height="60px"
                                ImageUrl='<%#"~/2021/"+Eval("ImageUrl").ToString() %>' Width="60px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUploadGV" runat="server" />


                        </EditItemTemplate>
                    </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:Label ID="lblQty" runat="server" Text='<%# Eval("Qty") %>'></asp:Label> 
                             
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                RS<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Price">
                            <ItemTemplate>
                                Rs<asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("TotalAmount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                    </Columns>
                    <EmptyDataRowStyle BackColor="#eeeeee" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="1px" Font-Size="Large" ForeColor="#851010"
                        HorizontalAlign="Center" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle HorizontalAlign="Center" BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                 <div  id="divtotal" runat="server">
                    <div style="float: right; width: 283px; margin-right: 150px; height: 16px;">
                        &nbsp;Total :
                   Rs<asp:Label ID="lblGrandTotal" runat="server" Text='<%# Eval("GrandTotal") %>'></asp:Label>
         
                    </div>

            </div>
      </div>
    </div></div></form>
</asp:Content>
