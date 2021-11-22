using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Customer_LMN_Customer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cartcount();
        }
    
        if (Request.Url.ToString().Contains("/Login.aspx") || Request.Url.ToString().Contains("/Registration.aspx"))
        {
            if (Session["User"] != null)
            {
                lbluname.Text = Session["User"].ToString();
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
                logout.Visible = true;
                lbtoredrhistory.Visible = true;
            }

        }
        else
        {
            if (Session["User"] != null)
            {
                lbluname.Text = Session["User"].ToString();
                Response.ClearHeaders();
                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
                ltHi.Visible = true;
                logout.Visible = true;
                lbtoredrhistory.Visible = true;
                LinkButton1.Visible = false;
                LinkButton2.Visible = false;

            }
        }

    }
    public void cartcount()
    {
        if (Session["Cart"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Cart"];
            int coun = dt.Rows.Count;
            ltitemCount.Text = coun.ToString();
        }
    }
    protected void lbtoredrhistory_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Customer/OrderHistory.aspx");
    }
}
