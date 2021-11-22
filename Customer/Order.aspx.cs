using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.Net.Mail;

public partial class Order : System.Web.UI.Page
{
    public static int show = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if(show==1)
        {
           
            show = 0;
        }
        if (Session["User"] != null)
        {
            if (Session["Cart"] != null)
            {
                DataTable dt = (DataTable)Session["Cart"];
                if (!Page.IsPostBack)
                {
                    if (!dt.Columns.Contains("OrderNumber"))
                    {
                       
                        DataColumn dc = new DataColumn();
                        dc.ColumnName = "OrderNumber";
                        dt.Columns.Add(dc);
                    }
                }
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Random rn = new Random();
                    dt.Rows[i]["OrderNumber"] = rn.Next();

                } 
                gvorder.DataSource = dt;
                gvorder.DataBind();
                Totalprice();
                Session["Cart"] = dt;
             
            }
            else
            {
            
                divmain.Visible = false;
                dvempty.Visible = true;
            }
        }
        else
        {
            Button1.Visible = false;
            divmain.Visible = false;
            divLogin.Visible = true;
        }
    }
    private void Totalprice()
    {
        Decimal totalprice = 0;
        for (int i = 0; i < gvorder.Rows.Count; i++)
        {
            Label lb = this.gvorder.Rows[i].FindControl("lbltotPriceGv") as Label;
            Decimal VALUE = Convert.ToDecimal(lb.Text);
            totalprice = totalprice + VALUE;
        }
        lbltotPrice.Text = totalprice.ToString();
    }
    public static string GetUniqueKey(int maxSize)
    {
        char[] chars = new char[62];
        chars =
        "123456789".ToCharArray();
        byte[] data = new byte[1];
        RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
        crypto.GetNonZeroBytes(data);
        data = new byte[maxSize];
        crypto.GetNonZeroBytes(data);
        StringBuilder result = new StringBuilder(maxSize);
        foreach (byte b in data)
        {
            result.Append(chars[b % (chars.Length)]);
        }
        return result.ToString();
    }
 
    
    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = (DataTable)Session["Cart"];
        Label lbluid = new Label();
        Label lbluname = new Label();
        Label lblemailid = new Label();
        Label lbluaddress = new Label();
        Label lblucountry = new Label();
        Label lblustate = new Label();
        Label lblucity = new Label();
        lblOrderCode.Text = GetUniqueKey(6);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.CommandText = "insert into [Order] (order_code,order_time,User_Id,Status,GrandTotal) values ('" + lblOrderCode.Text + "',getdate(),'" + Session["User"].ToString() + "','pending'," + lbltotPrice.Text + ") ";
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        for (int j = 0; j < dt.Rows.Count; j++)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con1;
            cmd1.Connection.Open();
            cmd1.CommandText = "insert into [OrderedProducts] (OrderCode,Prod_ID,Qty,Price,TotalAmount) values ('" + lblOrderCode.Text + "'," + dt.Rows[j]["product_ID"].ToString() + "," + dt.Rows[j]["Qty"].ToString() + "," + dt.Rows[j]["ProductPrice"].ToString() + "," + dt.Rows[j]["TotalPrice"].ToString() + ") ";
            cmd1.CommandType = CommandType.Text;
            cmd1.ExecuteNonQuery();
            cmd1.Connection.Close();

        }

        Session.Remove("Cart");
        Response.Redirect(Request.RawUrl);
        lblMsg.Text = "Order Placed Successfully, Please see Order History For Order Details!!";
    }
}