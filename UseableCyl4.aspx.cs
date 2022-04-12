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


public partial class UseableCyl4 : System.Web.UI.Page
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
        dummy.Columns.Add("comment");

        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
    }

    [WebMethod]
    public static string GetCustomers(int pageIndex, string searchTerm, int pageSize)
    {
        string query = "[cylin11]";
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
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
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
        string updateSQL = "update stock101 set active='0' where id='" + empid + "'and type='3' ";
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
}