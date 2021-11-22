<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="LMS_Products.aspx.cs" Inherits="LMS_Products" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .imgclass {
            width:205px;
            height:272px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Search</h3>  
			<div class="login-body">
                <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Product Name" CssClass="textBox"/>
                <asp:Button ID="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click" CausesValidation="false" CssClass="searchbutton" /><br />
                <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse" />
            </div>
            <asp:DataList runat="server" ID="gvSearch" RepeatDirection="Horizontal" RepeatColumns="6" BackColor="#6699FF" BorderColor="White"   GridLines="Horizontal">
                <AlternatingItemStyle BackColor="#F7F7F7" />
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <ItemTemplate>
                    <asp:Label Visible="false" ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    <br />

                    <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("Category") %>' Visible="false" />
                    <br />
                    <table>
                        <tr>
                            <td style="border-style: dashed; border-width: 1px;">
                                <asp:Image ID="imgPd" CssClass="imgclass" runat="server" ImageUrl='<%#"~/2021/"+Eval("ImageUrl").ToString() %>' /><br />
                                <br />
                                Product:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                                <br />
                      
                          
                                Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%#""+ Eval("Price") %>' />
                                <br />
                                                           Qty:&nbsp;
            <asp:TextBox Type="number" ID="txtQty" runat="server" Width="62px" Height="20" Text="1" style="text-align:center" ></asp:TextBox>
                               
                                <center>
                                    <br />
            <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart"  CssClass="button" onClick="btnAddToCart_Click" causesvalidation="false"/></center>

                            </td>

                        </tr>

                    </table>
                </ItemTemplate>



                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />



            </asp:DataList>
         </div>
        </div>
    
</asp:Content>

