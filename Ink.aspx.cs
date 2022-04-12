

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



public partial class Ink : System.Web.UI.Page
{
    SqlCommand cmd60 = new SqlCommand();

    SqlCommand cmd1 = new SqlCommand();
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

        MainView.ActiveViewIndex = 0;
        MainView1.ActiveViewIndex = 0;
    }




    protected void Tab6_Click(object sender, EventArgs e)
    {

        Tab6.CssClass = "Clicked";

        MainView.ActiveViewIndex = 0;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);
    }

    protected void Tab2_Click(object sender, EventArgs e)
    {

        Tab2.CssClass = "Clicked";

        MainView1.ActiveViewIndex = 0;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup1()", true);
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



    private void BindDummyRow()
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("id");
        dummy.Columns.Add("inkcode");
        dummy.Columns.Add("description");
        dummy.Columns.Add("gsm");
        dummy.Columns.Add("pid");
        dummy.Columns.Add("price");


        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
        //gvDetails.UseAccessibleHeader = true;
        //gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
    }


    [WebMethod]
    public static string GetCustomers(int pageIndex, string searchTerm, int pageSize)
    {
        string query = "[ink]";

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
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM job_ink WHERE id = @id"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@id", empid);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds, "job_ink");

                        return ds.GetXml();
                    }
                }
            }
        }
    }
    [WebMethod]
    public static string GetCustomersDetails1(int empid)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM job_ink WHERE id = @id"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@id", empid);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds, "job_ink");

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
                    sda.Fill(ds, "job_ink");
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



    protected void ImageButton1_Click(object sender, object e)
    {


        Label71.Visible = false;
        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;

        updateSQL = "UPDATE job_ink set ";




        updateSQL += " inkcode=@inkcode,description=@description,gsm=@gsm,price=@price   WHERE id=@id ";

        dbConn2.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;




        cmd1.Parameters.AddWithValue("@inkcode", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@description", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@gsm", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@price", TextBox4.Text);

        cmd1.Parameters.AddWithValue("@id", Session["DatakeyValue"]);



        try
        {
            dbConn2.Open();
            int updated = cmd1.ExecuteNonQuery();
            Label71.Visible = true;
            Label71.Text = updated.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.
            BindDummyRow();


            // Or Set UseAccessibleHeader and HeaderRow TableSection
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn2.Close();
        }




    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


        updateSQL = "update usertracking set loggedout='" + date1 + "' where username='" + Session["username"].ToString() + "' and loggedin='" + Session["date"].ToString() + "' ";

        dbConn.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";
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

