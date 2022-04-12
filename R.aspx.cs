using System;

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


public partial class R : System.Web.UI.Page
{
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd = new SqlCommand();

    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3;
    string selectSQL, selectSQL1, updateSQL;
    private static int PageSize = 20;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindDummyRow();
        }

    }


    private void BindDummyRow()
    {



        DataTable dummy = new DataTable();
        dummy.Columns.Add("orderid");
        dummy.Columns.Add("posino");
        dummy.Columns.Add("producttype");
        dummy.Columns.Add("pid");
        dummy.Columns.Add("description");
        dummy.Columns.Add("dateordered");
        dummy.Columns.Add("dateexpected");
        dummy.Columns.Add("deliverydate");

        dummy.Columns.Add("quantity");
        dummy.Columns.Add("qtyaccepted");
        dummy.Columns.Add("qtyrejected");
        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
    }

    [WebMethod]
    public static string GetCustomers(int pageIndex)
    {
        string query = "[koko]";
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


    protected void Inkview_Click(object sender, EventArgs e)
    {

        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["go"] = id;

        Response.Redirect("Received1.aspx");
    }
    protected void Inkview_Click1(object sender, EventArgs e)
    {
        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["go"] = id;

        Response.Redirect("Received2.aspx");
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
            dbConn.Close();
        }

    }
}