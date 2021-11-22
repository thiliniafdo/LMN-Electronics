<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LMN_ADMIN.master" AutoEventWireup="true" CodeFile="ManageOrders1.aspx.cs" Inherits="ManageOrders1" EnableEventValidation="false" %>

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
                                    <h3 class="panel-title"><strong>CUSTOMER </strong> ORDERS</h3>
                                    
                                </div>
                                <div class="panel-body">

       
        <div style="overflow:auto">
            <div align="center" style="height: 30px;">
                <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse" />
            </div>
            <div align="center">
                <asp:GridView ID="gvManageOrders" runat="server" class="table" CaptionAlign="Top"
                    AutoGenerateColumns="False"  
                    EmptyDataText="There Are no Orders" OnRowCancelingEdit="gvManageOrders_RowCancelingEdit"
                    OnRowDeleting="gvManageOrders_RowDeleting" OnRowEditing="gvManageOrders_RowEditing"
                    OnRowUpdating="gvManageOrders_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="gvManageOrders_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Shopping Code">
                            <ItemTemplate>
                                <asp:Label ID="lblOCode" runat="server" Text='<%# Eval("order_code") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Shopping DateTime">
                            <ItemTemplate>
                                <asp:Label ID="lblOdt" runat="server" Text='<%# Eval("order_time") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cus ID">
                            <ItemTemplate>
                                <asp:Label ID="lblUId" runat="server" Text='<%# Bind("User_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <%-- <asp:TemplateField HeaderText="Customer Name">
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="lblAdress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtAdd" runat="server" Text='<%#Eval("Address") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCity" runat="server" Text='<%#Eval("City") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtState" runat="server" Text='<%#Eval("State") %>' />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblState" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Postal Code">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPc" runat="server" Text='<%#Eval("PostalCode") %>' />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPC" runat="server" Text='<%# Bind("PostalCode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="Payable Amount">
                            <ItemTemplate>
                                Rs <asp:Label ID="lblPamnt" runat="server" Text='<%# Bind("GrandTotal") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <%-- <asp:TemplateField HeaderText="Comment">
                            <ItemTemplate>
                                <asp:Label ID="lblComment" runat="server" Text='<%# Bind("Comment") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                     <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlStatusGV" runat="server">
                                <asp:ListItem Value="-1">--Select--</asp:ListItem>
                                  <asp:ListItem Value="Confirmed">Confirmed</asp:ListItem>
                            <asp:ListItem Value="Cancelled">Cancelled</asp:ListItem>
                                <asp:ListItem Value="Delivered">Delivered</asp:ListItem>
                             <asp:ListItem Value="Returned">Returned</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>

                          

                        <asp:CommandField HeaderText="Edit/Remove" ShowDeleteButton="True"
                            ShowEditButton="True" DeleteText="Remove" />
  <asp:TemplateField HeaderText="More">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnInvoice" runat="server" CommandArgument='<%# Eval("order_Code") %>'>View</asp:LinkButton>
                             </ItemTemplate>
                        </asp:TemplateField>


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
            </div>
        </div>
   </div></div></form>
</asp:Content>

