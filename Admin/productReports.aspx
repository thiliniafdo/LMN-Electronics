<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LMN_ADMIN.master" AutoEventWireup="true" CodeFile="productReports.aspx.cs" Inherits="productReports"  EnableEventValidation="false" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <ul class="breadcrumb">
                    <li><a href="#">LMN ELECTRONICS </a></li>
                    <li><a href="#">  REPORT </a></li>
             
                </ul>
                            <form class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>PRODUCT </strong> REPORT</h3>
                                    
                                </div>
                                <div class="panel-body">
   
     <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    &nbsp;<asp:Button ID="Button1" runat="server" Text="View"   class="btn btn-info pull-right" OnClick="Button1_Click" Width="129px" />


    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1150px"></rsweb:ReportViewer>
</div></div></form>
</asp:Content>

