using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

public partial class productReports : System.Web.UI.Page
{
    DataTable dtable;
    SqlDataAdapter adp;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


          
          

        }
    }


   
    
    protected void gvCustomer_RowEditing(object sender, GridViewEditEventArgs e)
    {
     


    }
    protected void gvCustomer_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
         

    }
    protected void gvCustomer_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void gvCustomer_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
         
       
    }
    protected void gvCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvCustomer_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("Select *  from  Product", con);

        DataTable dt = new DataTable("table1");
        da.Fill(dt);
        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("productreport.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
        ReportViewer1.LocalReport.Refresh();
    }
}