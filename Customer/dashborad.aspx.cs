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

public partial class dashborad : System.Web.UI.Page
{
    DataTable dtable;
    SqlDataAdapter adp;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            totoalorders1(); totoalorders2();


        }
       
    }



    protected void totoalorders1()
    {
        dtable = new DataTable();

        con.Open();
        adp = new SqlDataAdapter("Select *  from  [order] where Status ='pending' and  [Order].user_id='" + Session["User"].ToString() + "' order by Order_Time", con);
        adp.Fill(dtable);
        if (dtable.Rows.Count > 0)
        {
            Label1.Text = dtable.Rows.Count.ToString();

        }
        con.Close();

    }


    protected void totoalorders2()
    {
        dtable = new DataTable();

        con.Open();
        adp = new SqlDataAdapter("Select *  from [Order]  where   Status ='Delivered' and  [Order].user_id='" + Session["User"].ToString() + "' order by Order_Time", con);
        adp.Fill(dtable);
        if (dtable.Rows.Count > 0)
        {
            Label2.Text = dtable.Rows.Count.ToString();

        }
        con.Close();

    }



    public void BindGrid()
    {
        
    }

    protected void gvCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        
    }
    protected void gvCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
         
    }
    
    protected void gvCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
       
    }
    protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
    }
    protected void btnChekout_Click(object sender, EventArgs e)
    {
         
    }
}