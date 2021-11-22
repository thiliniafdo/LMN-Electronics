using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    public static int i = 0;
    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod]
    protected void Page_Load(object sender, EventArgs e)
    {
        if (i == 1)
        {
            warning.Text = "UserName Or Password is Incorrect";
            i = 0;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        SqlCommand cmd = new SqlCommand(@"select 1 from [Login] where UserEmail='" + TextBox1.Text.Trim() + "' and Password='" + TextBox2.Text.Trim() + "'", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["User"] = TextBox1.Text.Trim();
            Response.Redirect("dashborad.aspx");
        }
        else
        {
            i = 1;
        }
        cn.Close();
    }
}