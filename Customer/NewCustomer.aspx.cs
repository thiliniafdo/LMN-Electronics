using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class NewCustomer : System.Web.UI.Page
{
    public static string show = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (show == "Add")
        {
            warning.Text = "Registration Success";
            show = string.Empty;
        }
        else if (show == "Exists")
        {
            warning.Text = "User Email Already Exists , pelase Register with new EMail !!";
            show = string.Empty;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        SqlCommand cmd0 = new SqlCommand(@"select case when (select 1 from Login where UserEmail='" + TextBox1.Text.Trim() + "')=1 then 1 else 0 end", cn);
        SqlCommand cmd = new SqlCommand(@"Insert into Login values ('" + TextBox1.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox4.Text.Trim() + "')", cn);
        cn.Open();
        int i = (int)cmd0.ExecuteScalar();
        if (i == 1)
        {
            show = "Exists";
        }
        else
        {
            cmd.ExecuteNonQuery();
            show = "Add";
        }
        cn.Close();
        Response.Redirect(Request.RawUrl);
        
    }
}