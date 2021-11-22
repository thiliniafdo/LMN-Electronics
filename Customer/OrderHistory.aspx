<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/LMN_Customer.master" AutoEventWireup="true" CodeFile="OrderHistory.aspx.cs" Inherits="OrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .hide {
            visibility: hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
            
                <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse" />
            </div>
            <div align="center">
                <asp:GridView ID="gvorderHistory" runat="server"  CaptionAlign="Top"
                    AutoGenerateColumns="False"  class="table datatable" CellPadding="4" GridLines="None"
                    EmptyDataText="There Are no Orders" OnRowCommand="gvorderHistory_RowCommand" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Order Code">
                            <ItemTemplate>
                                <asp:Label ID="lblOCde" runat="server" Text='<%# Eval("order_code") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OrderDateTime">
                            <ItemTemplate>
                                <asp:Label ID="lblOdt" runat="server" Text='<%# Eval("order_time") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                      <%--  <asp:TemplateField HeaderText="Customer Name">
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="State">
                            <ItemTemplate>
                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="PostalCode">
                            <ItemTemplate>
                                <asp:Label ID="lblPostalCode" runat="server" Text='<%# Eval("PostalCode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="Payable Amount">
                            <ItemTemplate>

                                Rs<asp:Label ID="lblPamnt" runat="server" Text='<%# Bind("GrandTotal") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Details">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnInvoice" runat="server" CommandArgument='<%# Eval("order_Code") %>'>View</asp:LinkButton>
                                <%--  <asp:Button ID ="btnInvoice" runat ="server" Text="View" CommandName="invoice" CommandArgument='<%# Eval("order_id") %>' />--%>
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


            </div>
       
</asp:Content>

