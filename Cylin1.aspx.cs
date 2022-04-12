using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;
using System.Text;
using System.Linq;
using System.Web.Services;
using System.Collections.Generic;


public partial class Cylin1 : System.Web.UI.Page
{
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3;
    string selectSQL, updateSQL, selectSQL1;

    protected void Page_Load(object sender, EventArgs e)
    {

       try
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Welcome.aspx");
            }


            else
            {


            }
        }

        catch
        {
            Response.Redirect("Welcome.aspx");
        }
        if (!IsPostBack)
        {
            BindDummyRow();
        }
        string timeStamp = GetTimestamp(DateTime.Now);
        string today = DateTime.Now.ToString("dd/MM/yyyy");
        Label1.Text = timeStamp;
        Label1.Text = today;
        Session["Time"] = timeStamp;

        Session["Time1"] = today;
    }

    public static String GetTimestamp(DateTime value)
    {
        return value.ToString("yyyyMMddHHmmssffff");
    }

    private void BindDummyRow()
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("id");
        dummy.Columns.Add("no");
        dummy.Columns.Add("pid");
        dummy.Columns.Add("posino");
        dummy.Columns.Add("description");
        dummy.Columns.Add("colour");

        dummy.Columns.Add("deliverydate");
        dummy.Columns.Add("purchaseorderno");
        dummy.Columns.Add("supplier");
        dummy.Columns.Add("waybillno");
        dummy.Columns.Add("totalrev");
        dummy.Columns.Add("circumference");
        dummy.Columns.Add("comment");

        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
    }

    [WebMethod]
    public static string GetCustomers(int pageIndex, string searchTerm, int pageSize)
    {
        string query = "[cylin13]";
        SqlCommand cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SearchTerm", searchTerm);
        cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
        cmd.Parameters.AddWithValue("@PageSize", pageSize);
        cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
        return GetData(cmd, pageIndex, pageSize).GetXml();
    }

    [WebMethod]
    public static string GetCustomersDetails(int empid)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM job_cylinder WHERE id = @id"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@id", empid);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds, "job_cylinder");

                        return ds.GetXml();
                    }
                }
            }
        }
    }

    private static DataSet GetData(SqlCommand cmd, int pageIndex, int pageSize)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds, "job_cylinder");
                    DataTable dt = new DataTable("Pager");
                    dt.Columns.Add("PageIndex");
                    dt.Columns.Add("PageSize");
                    dt.Columns.Add("RecordCount");
                    dt.Rows.Add();
                    dt.Rows[0]["PageIndex"] = pageIndex;
                    dt.Rows[0]["PageSize"] = pageSize;
                    dt.Rows[0]["RecordCount"] = cmd.Parameters["@RecordCount"].Value;
                    ds.Tables.Add(dt);

                    return ds;
                }
            }
        }
    }
    [WebMethod]
    public static string UpdateCustomer(int empid)
    {
        string status = "";
        HttpContext.Current.Session["DatakeyValue"] = empid;
        string updateSQL = "update stock set active='1' where id='" + empid + "'and type='3' ";
        SqlConnection dbConn = new SqlConnection();
        dbConn.ConnectionString =  "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;
        try
        {
            dbConn.Open();
            int updated = cmd.ExecuteNonQuery();
            if (updated == 1)
            {
                status = "working";
            }
            else
            {
                status = "Not working";
            }

        }
        catch (Exception err)
        {

        }
        finally
        {
            dbConn.Close();
        }

        return status;


    }

  
protected void OnRowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[1].CssClass = "hiddencol";
        }
        else if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[1].CssClass = "hiddencol";
        }
       else

        {

        }

      


           
    }
    
protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button Button1 = (e.Row.FindControl("Button1") as Button);
            if (Convert.ToInt32(Session["privilege"]) == 2)
            {
                Button1.Enabled = false;
                

            }
            else if (Convert.ToInt32(Session["privilege"]) == 4)
            {
              Button1.Enabled = false;
             
               

            }



            else
            {

            }
        }
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {



        Response.Redirect("UseableCyl.aspx");


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {


        Response.Redirect("Cylin.aspx");


    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Response.Redirect("Cylin1.aspx");


    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cylin2.aspx");


    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {


        Response.Redirect("Cdie.aspx");


    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {

        Response.Redirect("Cdie1.aspx");


    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {

        Response.Redirect("Cdie2.aspx");


    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {

        Response.Redirect("Cdie3.aspx");


    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {


        Response.Redirect("Ofdie.aspx");


    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {

        Response.Redirect("Ofdie1.aspx");


    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {

        Response.Redirect("Ofdie2.aspx");


    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {

        Response.Redirect("Ofdie3.aspx");


    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {


        Response.Redirect("Embosin.aspx");


    }
    protected void LinkButton14_Click(object sender, EventArgs e)
    {

        Response.Redirect("Embosin1.aspx");



    }
    protected void LinkButton15_Click(object sender, EventArgs e)
    {

        Response.Redirect("Embosin2.aspx");



    }
    protected void LinkButton16_Click(object sender, EventArgs e)
    {

        Response.Redirect("Embosin3.aspx");



    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton18_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


        updateSQL = "update usertracking set loggedout='" + date1 + "' where username='" + Session["username"].ToString() + "' and loggedin='" + Session["date"].ToString() + "' ";

        dbConn.ConnectionString =  "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;
        try
        {

            dbConn.Open();
            //  Response.Write(updateSQL);

            int updated = cmd.ExecuteNonQuery();
            if (updated == 1)
            {
                Response.Redirect("Welcome.aspx");
            }
            else
            {


                //Label1.Text = "Process not Completed";
            }

            dbConn.Close();
        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
           Session.Clear();
            Session.Abandon();
            dbConn.Close();
        }

    }

}