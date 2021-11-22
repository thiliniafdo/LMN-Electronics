<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="OrderDetails.aspx.cs" Inherits="OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .hide {
            visibility: hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
                    <table>
                        <tr>
                            <td><b>Order Code :</b> </td>
                            <td>
                                <asp:Label ID="lblOrderCode" runat="server" />
                                </td>
                        </tr>
                       <tr>
                            <td><b>Order Time :</b> </td>
                            <td>
                                <asp:Label ID="lblOrderTime" runat="server" />
                                </td>
                        </tr>
                        <tr>
                            <td><b>Customer Name :</b>
                            </td>
                            <td>
                                <asp:Label ID="lblCustomerName" runat="server" />
                                </td>
                         </tr>
                        <tr>
                            <td><b>Address :</b></td>
                            <td>
                                <asp:Label ID="lblAddress" runat="server" />
                                </td>

                        </tr>
                        
                       

                    </table>

            <div align="Left">
                <asp:GridView ID="gvorderHistory" runat="server"  class="table datatable" CaptionAlign="Top"
                    AutoGenerateColumns="False" CellPadding="4" GridLines="None"
                    EmptyDataText="There Are no Orders" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="imgPd" runat="server" Height="60px"
                                ImageUrl='<%#"~/2021/"+Eval("ImageUrl").ToString() %>' Width="60px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUploadGV" runat="server" />


                        </EditItemTemplate>
                    </asp:TemplateField>
                        
                          <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:Label ID="lblQty" runat="server" Text='<%# Eval("Qty") %>'></asp:Label> 

                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                               Rs <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Price">
                            <ItemTemplate>
                                Rs <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("TotalAmount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataRowStyle BackColor="#eeeeee" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="1px" Font-Size="Large" ForeColor="#851010"
                        HorizontalAlign="Center" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                  <div  id="divtotal" runat="server">
                    <div style="float: right; width: 283px; margin-right: 150px; height: 16px;">
                        Grand Total :
                   Rs <asp:Label ID="lblGrandTotal" runat="server" Text='<%# Eval("GrandTotal") %>'></asp:Label>
         
                    </div>

            </div>
     
    </div>
</asp:Content>

