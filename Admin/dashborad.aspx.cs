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


            pendingOrders(); totoalorders(); delivedOrders(); profit();
          

        }
    }


 

    protected void totoalorders()
    {
        dtable = new DataTable();

        con.Open();
        adp = new SqlDataAdapter("Select *  from  [order]", con);
        adp.Fill(dtable);
        if (dtable.Rows.Count > 0)
        {
            Label5.Text = dtable.Rows.Count.ToString();

        }
        con.Close();

    }

    protected void pendingOrders()
    {
        dtable = new DataTable();

        con.Open();
        adp = new SqlDataAdapter("Select *  from  [order]  where Status ='pending'  ", con);
        adp.Fill(dtable);
        if (dtable.Rows.Count > 0)
        {
            Label6.Text = dtable.Rows.Count.ToString();

        }
        con.Close();

    }
    protected void delivedOrders()
    {
        dtable = new DataTable();

        con.Open();
        adp = new SqlDataAdapter("Select *  from  [order]  where Status ='Delivered'  ", con);
        adp.Fill(dtable);
        if (dtable.Rows.Count > 0)
        {
            Label7.Text = dtable.Rows.Count.ToString();

        }
        con.Close();

    }

    protected void profit()
    {
      


        SqlCommand cmd = new SqlCommand("SELECT SUM (GrandTotal) as profit FROM [order] ", con);
        cmd.CommandType = CommandType.Text;
        cmd.Connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {

                Label3.Text = dr["profit"].ToString();

            }
        }









    }

 
 

}