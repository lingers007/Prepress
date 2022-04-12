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

using System.Web.Services;

public partial class ViewOrd : System.Web.UI.Page
{
SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd = new SqlCommand();

    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3;
    string selectSQL, updateSQL, selectSQL1;
    private static int PageSize = 45;
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

    }

 protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button Inkview = (e.Row.FindControl("Inkview") as Button);
            if (Convert.ToInt32(Session["privilege"]) == 2)
            {
                HyperLink1.Enabled = false;
                HyperLink2.Enabled = false;
               
                HyperLink6.Enabled = false;
                Inkview.Enabled = false;
               

            }
            else if (Convert.ToInt32(Session["privilege"]) == 4)
            {
                HyperLink1.Enabled = false;
                HyperLink2.Enabled = false;
                
                HyperLink6.Enabled = false;
                Inkview.Enabled = false;
               

            }



            else
            {

            }
        }
    }



    private void BindDummyRow()
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("orderid");
        dummy.Columns.Add("purchaseorderno");
        dummy.Columns.Add("pid");
        dummy.Columns.Add("description");
        dummy.Columns.Add("producttype");
        dummy.Columns.Add("quantity");
        dummy.Columns.Add("dateordered");
        dummy.Columns.Add("dateexpected");
        dummy.Columns.Add("deliverydate");
        dummy.Columns.Add("supplier");
          dummy.Columns.Add("comment");
          dummy.Columns.Add("qtyreceived");

 



        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
        //gvDetails.UseAccessibleHeader = true;
        //gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
    }




    [WebMethod]
    public static string GetCustomers(int pageIndex)
    {
        string query = "[orders1]";
        SqlCommand cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
        cmd.Parameters.AddWithValue("@PageSize", PageSize);
        cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;

        return GetData(cmd, pageIndex).GetXml();
    }

    private static DataSet GetData(SqlCommand cmd, int pageIndex)
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
                    sda.Fill(ds, "orders");
                    DataTable dt = new DataTable("Pager");
                    dt.Columns.Add("PageIndex");
                    dt.Columns.Add("PageSize");
                    dt.Columns.Add("RecordCount");
                    dt.Rows.Add();
                    dt.Rows[0]["PageIndex"] = pageIndex;
                    dt.Rows[0]["PageSize"] = PageSize;
                    dt.Rows[0]["RecordCount"] = cmd.Parameters["@RecordCount"].Value;
                    ds.Tables.Add(dt);
                    return ds;
                }
            }
        }
    }

   protected void OnRowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[0].CssClass = "hiddencol";
        }
        else if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].CssClass = "hiddencol";
        }
    }
    protected void Inkview_Click1(object sender, EventArgs e)
    {
       
    }

    protected void Inkview_Click(object sender, EventArgs e)
    {

        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        //Response.Redirect("rrrr.aspx");






        using (SqlConnection con = new SqlConnection("data source=NERO-SIGBENU\\SQLEXPRESS01; Initial Catalog=kaging;Integrated Security=True;"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from orders where orderid='" + id + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        BindDummyRow();

       



    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


        updateSQL = "update usertracking set loggedout='" + date1 + "' where username='" + Session["username"].ToString() + "' and loggedin='" + Session["date"].ToString() + "' ";

        dbConn.ConnectionString = "Data Source=NERO-SIGBENU\\SQLEXPRESS01; Initial Catalog= kaging;Integrated Security=True";
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

