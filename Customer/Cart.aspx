<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login-page">
		 
			<h3 class="w3ls-title w3ls-title1">Cart View</h3>  


            <div id="dvMain" runat="server">
                <div style="width: 100%;" align="center">
                    <asp:Label ID="lblmess" runat="server" BackColor="#EEEEEE" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="1px" Font-Bold="false" ForeColor="#851010"
                        Text="Please Enter Quantity" Visible="False"></asp:Label>
                </div>

                <div style="margin-top: 10px; width: 100%; text-align: center; background-color: red" id="divtotal" runat="server">
                    <div style="float: right; width: 350px; margin-right: 135px;">
                    </div>

                    <asp:GridView ID="gvCart" runat="server"  class="table datatable" CaptionAlign="Top"
                        AutoGenerateColumns="False"  
                        EmptyDataText="There Are no items in Your Cart" OnRowCancelingEdit="gvCart_RowCancelingEdit"
                        OnRowUpdating="gvCart_RowUpdating" OnRowEditing="gvCart_RowEditing" OnRowDeleting="gvCart_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="imgPd" runat="server" Height="60px"
                                        ImageUrl='<%# Eval("Product_img") %>' Width="60px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Product Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             
                            <asp:TemplateField HeaderText="Qty">
                                <ItemTemplate>
                                    <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label> <asp:Label ID="lblUnit" runat="server" Text='<%# Eval("Unit") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtQty" runat="server" Height="25px"
                                        Text='<%# Bind("Qty") %>' Width="41px"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                   Rs<asp:Label ID="lblPrice" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total Price">
                                <ItemTemplate>
                                    &nbsp;Rs<asp:Label ID="lbltotPriceGv" runat="server" Text='<%#Bind("TotalPrice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Edit/Remove" ShowDeleteButton="True"
                                ShowEditButton="True" DeleteText="Remove" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <EmptyDataRowStyle BackColor="#eeeeee" BorderColor="Black"
                            BorderStyle="Solid" BorderWidth="1px" Font-Size="Large" ForeColor="#851010"
                            HorizontalAlign="Center" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle HorizontalAlign="Center" BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>

                        <span>TOTAL AMOUNT : Rs <asp:Label ID="lbltotPrice" runat="server" Text=""></asp:Label></span>
                        <asp:Button ID="btnChekout" runat="server" CssClass="button" Font-Bold="True" Text="PROCEED TO CHECK OUT"
                            OnClick="btnChekout_Click" />

                </div>
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
        	</div>
</asp:Content>

