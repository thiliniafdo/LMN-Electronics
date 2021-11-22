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

public partial class Admin_ManageProducts : System.Web.UI.Page
{
    DataSet ds;
    public static string show = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (show == "Add")
        {
            lblMsg.Text = "Product Added Successfully !!";
            show = string.Empty;
        }
        else if (show == "Update")
        {
            lblMsg.Text = "Product Updated Successfully !!";
            show = string.Empty;
        }
        else if(show=="Delete")
        {
            lblMsg.Text = "Product Deleted Successfully !!";
            show = string.Empty;
        }
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    protected void fillgrid()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        SqlCommand cmd = new SqlCommand(@"select * from Product ", cn);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        gvproduct.DataSource = ds;
        gvproduct.DataBind();

    }

    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            fileName = Guid.NewGuid() + fileName;
            if (Path.GetExtension(FileUpload1.PostedFile.FileName) == ".jpg" || Path.GetExtension(FileUpload1.PostedFile.FileName) == ".jpeg" || Path.GetExtension(FileUpload1.PostedFile.FileName) == ".png" || Path.GetExtension(FileUpload1.PostedFile.FileName) == ".bmp")
            {
               
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
                //SqlCommand cmd = new SqlCommand(@"Insert into Product values (" + ddlcategory + ",'" + txtproductname.Text.Trim() + "','" + fileName + "'," + txtprice.Text.Trim() + ")", cn);

                SqlCommand cmd = new SqlCommand("insert into Product (ProductName,ImageUrl,Price,Category) values (@pname,@url,@price,@category1)", cn);

                cmd.Parameters.AddWithValue("pname", txtproductname.Text);
                cmd.Parameters.AddWithValue("url", fileName);
                cmd.Parameters.AddWithValue("price", txtprice.Text);
                cmd.Parameters.AddWithValue("category1", ddlcategory.Text);  

                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                if (Directory.Exists(Server.MapPath("~/2021")))
                {
                    string s = Server.MapPath("~/2021/" + fileName);


                    FileUpload1.PostedFile.SaveAs(s);
                }
                ClientScript.RegisterStartupScript(typeof(Page), "Script", "<Script>alert ('Product Added Sucessfuly')</Script>");
                fillgrid();
            }
            else
            {
                ClientScript.RegisterStartupScript(typeof(Page), "Script", "<Script>alert ('Please Upload Only .Jpg .Jpeg .Bmp .Png File')</Script>");
            }
        }
        show = "Add";
        Response.Redirect(Request.RawUrl);
    }
    protected void gvproduct_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        e.Cancel = true;
        gvproduct.EditIndex = -1;
        fillgrid();
    }
    protected void gvproduct_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = gvproduct.Rows[e.RowIndex];
        Label pid = (Label)row.FindControl("lblpid");
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        SqlCommand cmd = new SqlCommand(@"delete from Product where ProductId=" + pid.Text.Trim(), cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        fillgrid();
        show = "Delete";
        Response.Redirect(Request.RawUrl);

    }
    protected void gvproduct_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //update function
        GridViewRow row = gvproduct.Rows[e.RowIndex];
        Label pid = (Label)row.FindControl("lblpid");
        FileUpload fup = (FileUpload)row.FindControl("FileUploadGV");
        DropDownList ddlcategory = (DropDownList)row.FindControl("ddlcategoryGV");
        TextBox Pnam = (TextBox)row.FindControl("txtproductname");
        TextBox price = (TextBox)row.FindControl("txtPrice");

        string fileName = Path.GetFileName(fup.PostedFile.FileName);
        fileName = Guid.NewGuid() + fileName;

        if (Path.GetExtension(fup.PostedFile.FileName) == ".jpg" || Path.GetExtension(fup.PostedFile.FileName) == ".jpeg" || Path.GetExtension(fup.PostedFile.FileName) == ".bmp" || Path.GetExtension(fup.PostedFile.FileName) == ".png")
        {


            if (Directory.Exists(Server.MapPath("~/")))
            {
                string s = Server.MapPath("~/2021/" + fileName);
                fup.PostedFile.SaveAs(s);
            }

            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
            SqlCommand cmd = new SqlCommand(@"update Product set Category = " + ddlcategory.Text + ",ProductName='" + Pnam.Text.Trim() + "',ImageUrl='" + fileName + "',Price=" + price.Text.Trim() +  "'  where ProductId=" + pid.Text.Trim(), cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            gvproduct.EditIndex = -1;
            fillgrid();
            show = "Update";
        }

        Response.Redirect(Request.RawUrl);
    }
    protected void gvproduct_RowEditing(object sender, GridViewEditEventArgs e)
    { //enable editting
        gvproduct.EditIndex = e.NewEditIndex;
        fillgrid();
    }
    protected void gvproduct_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       //code for search the Project
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["LMNDB2021"].ConnectionString);
        string qry = " select * from Product where ProductName like '" + TextBox6.Text + "%'";
        cn.Open();
        SqlDataAdapter ad = new SqlDataAdapter(qry, cn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        gvproduct.DataSource = ds;
        gvproduct.DataBind();
        cn.Close();

    }
}