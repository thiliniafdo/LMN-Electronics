using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderHistory : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
 
    protected void fillgrid()
    {
        if (Session["User"] != null)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
            SqlCommand cmd = new SqlCommand(@"SELECT Order_Code,Order_Time,GrandTotal,Status from [Order] where [Order].user_id='" + Session["User"].ToString() + "' order by Order_Time", cn);
            //Name,Address,City,State,PostalCode
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            gvorderHistory.DataSource = ds;
            gvorderHistory.DataBind();
        }
        else
        {

            Page.ClientScript.RegisterStartupScript(typeof(Page), "<script>", "<script>alert ('Please Login')</script>");
            Response.Redirect("~/Home.aspx");
        }
    }
    protected void gvorderHistory_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        int odid = Convert.ToInt32(e.CommandArgument);
        Response.Redirect("~/Customer/OrderDetails.aspx?invo=" + odid + "");


    }
}