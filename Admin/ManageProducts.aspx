<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LMN_ADMIN.master" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="Admin_ManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


     
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>  Add New</strong> Electronic Product</h3>
                                     
                                </div>
                                
                                <div class="panel-body">                                                                        
                                    
									
									
									
                                    <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Category  </label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                              
 

<asp:DropDownList ID="ddlcategory" runat="server" Height="30px" Width="370px"  class="form-control" >
                                <asp:ListItem>-- Select --</asp:ListItem>
                                <asp:ListItem Value="Home_Use">Home_Use</asp:ListItem>
                                <asp:ListItem Value="Office_Use">Office_Use</asp:ListItem>
                            </asp:DropDownList>
 

                                                    </div>                                            
                                                   
                                                </div>
                                            </div>
                                            
                                           
                                            <br/><br/> 
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Product Image</label>
                                                <div class="col-md-9 col-xs-12">                                            
           <asp:FileUpload ID="FileUpload1" runat="server" class="fileinput btn-primary" />
                                                </div>
                                            </div>
                                            
                                             
                                            
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Product Name</label>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                      <asp:TextBox   class="form-control" ID="txtproductname"    runat="server" onkeypress="return IsNumeric(event);" placeholder="Product Name" Width="370px"></asp:TextBox>
                                
                                                    </div>
                                                    <br/>
                                                   <%-- <span class="help-block"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtproductname" ErrorMessage="Required" ForeColor="#990000"></asp:RequiredFieldValidator></span>--%>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Price</label>
                                                <div class="col-md-9">
     <asp:TextBox class="form-control" ID="txtprice" runat="server"  placeholder="Enter Price"></asp:TextBox>
                                                      <span class="help-block">  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtprice" ValidationExpression="^[0-9]*$" runat="server" ForeColor="#990000" ErrorMessage="Enter Only Number" Display="Dynamic"></asp:RegularExpressionValidator></span>
                                                </div>
                                            </div>
                                            
                                            
                                           
                                            
                                        </div>
                                        
                                    </div>

                                </div>
                                <div class="panel-footer">
                                    

   <asp:Label ID="lblMsg" runat="server"   />
                                                      

   <asp:Button runat="server" Text="Add Product" ID="btnAddProduct"  class="btn btn-primary pull-right" OnClick="btnAddProduct_Click" />




                                </div>
                            </div>
                          

 

 
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Electronic </strong> Products</h3>
                                    <ul class="panel-controls">
                                                                    
                                               
                                                <div class="col-md-12">
                                                    <div class="input-group">
    <asp:TextBox   class="form-control" ID="TextBox6"    runat="server"  placeholder="Search Product Name" Width="370px"></asp:TextBox>
                                                         <asp:Button runat="server" Text="Search" ID="Button3"  class="btn btn-primary" OnClick="Button3_Click"  />

                                                    </div>
                                                 </div>
                                            
                                    </ul>
                                </div>
                                <div class="panel-body">
        <div align="center">
            <asp:GridView class="table" ID="gvproduct" runat="server"   CaptionAlign="Top"
                AutoGenerateColumns="False" 
                EmptyDataText="There Are no Products" OnRowCancelingEdit="gvproduct_RowCancelingEdit" OnRowDeleting="gvproduct_RowDeleting" OnRowEditing="gvproduct_RowEditing" OnRowUpdating="gvproduct_RowUpdating"   OnSelectedIndexChanged="gvproduct_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Code" Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="lblpid" Visible="false" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Products">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Productname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtproductname" runat="server" Height="25px"
                                Text='<%# Bind("Productname") %>' Width="41px"></asp:TextBox>

                        </EditItemTemplate>
                    </asp:TemplateField>
                  


                    <asp:TemplateField HeaderText="Picture">
                        <ItemTemplate>
                            <asp:Image ID="imgPd" runat="server" Height="60px"
                                ImageUrl='<%#"~/2021/"+Eval("ImageUrl").ToString() %>' Width="60px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUploadGV" runat="server" />


                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Types">
                        <ItemTemplate>
                            <asp:Label ID="lblcategory" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlcategoryGV" runat="server">
                      
                                     <asp:ListItem>-- Select --</asp:ListItem>
                                <asp:ListItem Value="Home_Use">Home_Use</asp:ListItem>
                                <asp:ListItem Value="Office_Use">Office_Use</asp:ListItem>

                            </asp:DropDownList>





                        </EditItemTemplate>
                    </asp:TemplateField>
                    


                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPrice" runat="server" Height="25px"
                                Text='<%# Bind("Price") %>' Width="41px"></asp:TextBox>

                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Edit/Remove" ShowDeleteButton="True"
                        ShowEditButton="True" DeleteText="Remove" CausesValidation="false"/>
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
               
            </asp:GridView>
                  </div>
                                <div class="panel-body">     
                                                                                              
      
 

                                </div>
                                
                            </div>
                           
</asp:Content>

