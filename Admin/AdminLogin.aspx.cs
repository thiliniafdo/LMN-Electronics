using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }
    protected void btnAdlogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        SqlCommand cmd = new SqlCommand(@"select 1 from [AdminUsers] where UserName='" + txtUnameAd.Text.Trim() + "' and Password='" + txtPassAd.Text.Trim() + "'", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["Admin"] = txtUnameAd.Text.Trim();
            Response.Redirect("~/Admin/dashborad.aspx");
        }
        else
        {
            spnmsg.Visible = true;
        }
        cn.Close();
    }
}