

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




public partial class Die : System.Web.UI.Page
{


    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();


    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3;
    string selectSQL, selectSQL1, updateSQL;

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






    private void BindDummyRow()
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("id");
        dummy.Columns.Add("dieno");
        dummy.Columns.Add("templateno");
        dummy.Columns.Add("type");
        dummy.Columns.Add("model");
        dummy.Columns.Add("lmacross");
        dummy.Columns.Add("lmaround");
        dummy.Columns.Add("pid");
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
        string query = "[die]";
        SqlCommand cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SearchTerm", searchTerm);
        cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
        cmd.Parameters.AddWithValue("@PageSize", pageSize);
        cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;

        return GetData(cmd, pageIndex, pageSize).GetXml();

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
                    sda.Fill(ds, "job_die");
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

    //for get record

    [WebMethod]
    public static string GetCustomersDetails(int empid)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM job_die WHERE id = @id"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@id", empid);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds, "job_die");

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
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM job_die WHERE id = @id"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@id", empid);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds, "job_die");

                        return ds.GetXml();
                    }
                }
            }
        }
    }



    protected void Button1_Click(object sender, object e)
    {


        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;

        updateSQL = "UPDATE job_die set ";
        updateSQL += "dieno=@dieno,templateno=@templateno,model=@model,type=@type,brassfemaleembossin=@brassfemaleembossin,";
        updateSQL += "brassmaleembossing=@brassmaleembossing,supplier=@supplier,lcutterwidth=@lcutterwidth,lcutterlength=@lcutterlength,comment=@comment,";
        updateSQL += "lmacross=@lmacross,lmaround=@lmaround,caditemidno=@caditemidno,cadrefno=@cadrefno ,cadnoups=@cadnoups,cadpackheight=@cadpackheight,";
        updateSQL += "cadpackwidth=@cadpackwidth,cadpackbreadth=@cadpackbreadth,caddesignheight=@caddesignheight,caddesignwidth=@caddesignwidth,cadgripperwidth=@cadgripperwidth ,";
        updateSQL += "cadgripperlenth=@cadgripperlenth,cadchargenno=@cadchargenno  WHERE id=@id ";
        // updateSQL += "";
        dbConn2.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;



        cmd1.Parameters.AddWithValue("@dieno", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@templateno", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@model", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@type", TextBox4.Text);
        cmd1.Parameters.AddWithValue("@brassfemaleembossin", TextBox5.Text);

        cmd1.Parameters.AddWithValue("@brassmaleembossing", TextBox6.Text);
        cmd1.Parameters.AddWithValue("@supplier", TextBox7.Text);
        cmd1.Parameters.AddWithValue("@lcutterwidth", TextBox8.Text);
        cmd1.Parameters.AddWithValue("@lcutterlength", TextBox9.Text);
        cmd1.Parameters.AddWithValue("@comment", TextBox10.Text);
        cmd1.Parameters.AddWithValue("@lmacross", TextBox11.Text);
        cmd1.Parameters.AddWithValue("@lmaround", TextBox12.Text);
        cmd1.Parameters.AddWithValue("@caditemidno", TextBox13.Text);
        cmd1.Parameters.AddWithValue("@id", Session["DatakeyValue"].ToString());
        cmd1.Parameters.AddWithValue("@cadrefno", TextBox14.Text);
        cmd1.Parameters.AddWithValue("@cadnoups", TextBox15.Text);
        cmd1.Parameters.AddWithValue("@cadpackheight", TextBox16.Text);
        cmd1.Parameters.AddWithValue("@cadpackwidth", TextBox17.Text);
        cmd1.Parameters.AddWithValue("@cadpackbreadth", TextBox18.Text);

        cmd1.Parameters.AddWithValue("@caddesignheight", TextBox19.Text);
        cmd1.Parameters.AddWithValue("@caddesignwidth", TextBox20.Text);
        cmd1.Parameters.AddWithValue("@cadgripperwidth", TextBox21.Text);
        cmd1.Parameters.AddWithValue("@cadgripperlenth", TextBox22.Text);
        cmd1.Parameters.AddWithValue("@cadchargenno", TextBox23.Text);






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




