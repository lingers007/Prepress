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

public partial class StockList : System.Web.UI.Page
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
    }

    protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button btnPending = (e.Row.FindControl("btnPending") as Button);
            if (Convert.ToInt32(Session["privilege"]) == 2)
            {

                btnPending.Enabled = false;


            }
            else if (Convert.ToInt32(Session["privilege"]) == 4)
            {
                btnPending.Enabled = false;


            }



            else
            {

            }
        }
    }


    private void BindDummyRow()
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("id");
        dummy.Columns.Add("no");
        dummy.Columns.Add("packinglist");
        
        dummy.Columns.Add("type");
        dummy.Columns.Add("location");
        dummy.Columns.Add("datesent");
        dummy.Columns.Add("datereceived");
        dummy.Columns.Add("waybillno");
        dummy.Columns.Add("status");
        dummy.Columns.Add("comment");
       


        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
        //gvDetails.UseAccessibleHeader = true;
        //gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
    }




   
        
        [WebMethod]
        public static string GetCustomers(int pageIndex, string searchTerm, int pageSize)
        {
            string query = "[stktrk]";

            SqlCommand cmd = new SqlCommand(query);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SearchTerm", searchTerm);
            cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
            cmd.Parameters.AddWithValue("@PageSize", pageSize);
            cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;

            return GetData(cmd, pageIndex, pageSize).GetXml();


      
        }
       
        [WebMethod]
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
                    sda.Fill(ds, "stocktracking");
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


     
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton18_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


        updateSQL = "update usertracking set loggedout='" + date1 + "' where username='" + Session["username"].ToString() + "' and loggedin='" + Session["date"].ToString() + "' ";

        dbConn.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
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
    protected void Inkview_Click(object sender, EventArgs e)
    {

          int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;


        SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT stockid FROM stocktracking WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label2.Text = Convert.ToString(cm.ExecuteScalar());
        Session["stockdd"] = Label2.Text;
        con.Close();

        updateSQL = "update stock set active='2' where id='" + Session["stockdd"].ToString() + "' ";

        dbConn.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;
        try
        {

            dbConn.Open();
            Response.Write(updateSQL);
            int updated = cmd.ExecuteNonQuery();
            if (updated == 1)
            {

               //  Response.Redirect("yes.aspx");
            }
            else
            {


              //  Response.Redirect("no.aspx");
            }


        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn.Close();
        }
        //BindDummyRow();

        updateSQL = "update stocktracking set status='1' where id='" + Session["DatakeyValue"].ToString() + "' ";

        dbConn.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;
        try
        {

            dbConn.Open();
            int updated = cmd.ExecuteNonQuery();
            if (updated == 1)
            {

                // Response.Redirect("Cylin.aspx");
            }
            else
            {


                // Label1.Text = "Process not Completed";
            }


        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn.Close();
        }
        BindDummyRow();


}




    protected void gvDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
 


}