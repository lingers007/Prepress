
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



public partial class Cylinder : System.Web.UI.Page
{
    SqlCommand cmd60 = new SqlCommand();
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
        dummy.Columns.Add("posino");
        dummy.Columns.Add("colour");
        dummy.Columns.Add("screen");
        dummy.Columns.Add("stylusangle");
        dummy.Columns.Add("channel");
        dummy.Columns.Add("cylinderdiameter");
        dummy.Columns.Add("pid");
        dummy.Columns.Add("referencecolour");



        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
        //gvDetails.UseAccessibleHeader = true;
        //gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
    }




    [WebMethod]
    public static string GetCustomers(int pageIndex, string searchTerm, int pageSize)
    {
        string query = "[cylinder]";

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
    [WebMethod]
    public static string GetCustomersDetails1(int empid)
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




    //for get record
    protected void Inkview_Click(object sender, EventArgs e)
    {
        MainView1.ActiveViewIndex = 0;
        Tab2.CssClass = "Clicked";

        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ScriptManager.RegisterStartupScript((sender as Control), this.GetType(), "Popup", "ShowPopup();", true);

        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        // Session["DatakeyValue"] = Label2.Text;
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job_cylinder WHERE id=@id ";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        TextBox1.Text = Convert.ToString(cm.ExecuteScalar());
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        Session["sidd1"] = Label1.Text;

        Label71.Visible = false;



        selectSQL = " SELECT *  FROM job_cylinder where id ='" + Session["sidd1"].ToString() + "' ";
        dbConn1.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;

        try
        {
            dbConn1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {


                TextBox6.Text = dr1["posino"].ToString();
                TextBox7.Text = dr1["colour"].ToString();
                TextBox8.Text = dr1["screen"].ToString();
                TextBox9.Text = dr1["stylusangle"].ToString();
                TextBox10.Text = dr1["Depth"].ToString();
                TextBox11.Text = dr1["cellwallvolume"].ToString();
                TextBox12.Text = dr1["xdiagonal"].ToString();
                TextBox13.Text = dr1["engravingtype"].ToString();
                TextBox14.Text = dr1["stretchfactor"].ToString();
                TextBox15.Text = dr1["channel"].ToString();
                TextBox16.Text = dr1["cylinderdiameter"].ToString();
                TextBox17.Text = dr1["circumference"].ToString();
                TextBox18.Text = dr1["printwidth"].ToString();
                TextBox19.Text = dr1["referencecolour"].ToString();
                TextBox20.Text = dr1["cylinderfacewidth"].ToString();
                TextBox21.Text = dr1["roughness"].ToString();
                TextBox22.Text = dr1["chromelayerthickness"].ToString();


            }
            else
            {

            }

            dr1.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn1.Close();
        }

        con.Close();






    }

    protected void Inkview_Click1(object sender, EventArgs e)
    {
        MainView1.ActiveViewIndex = 0;
        Tab2.CssClass = "Clicked";

        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ScriptManager.RegisterStartupScript((sender as Control), this.GetType(), "Popup", "ShowPopup1();", true);

        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job_cylinder WHERE id=@id ";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);

        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        Session["sidd1"] = Label1.Text;

        Label71.Visible = false;



        selectSQL = " SELECT *  FROM job_cylinder where id ='" + Session["sidd1"].ToString() + "' ";
        dbConn1.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;

        try
        {
            dbConn1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {


                TextBox1.Text = dr1["posino"].ToString();
                TextBox2.Text = dr1["colour"].ToString();
                TextBox3.Text = dr1["screen"].ToString();
                TextBox4.Text = dr1["stylusangle"].ToString();
                TextBox5.Text = dr1["Depth"].ToString();
                TextBox23.Text = dr1["cellwallvolume"].ToString();
                TextBox24.Text = dr1["xdiagonal"].ToString();
                TextBox25.Text = dr1["engravingtype"].ToString();
                TextBox26.Text = dr1["stretchfactor"].ToString();
                TextBox27.Text = dr1["channel"].ToString();
                TextBox28.Text = dr1["cylinderdiameter"].ToString();
                TextBox29.Text = dr1["circumference"].ToString();
                TextBox30.Text = dr1["printwidth"].ToString();
                TextBox31.Text = dr1["referencecolour"].ToString();
                TextBox32.Text = dr1["cylinderfacewidth"].ToString();
                TextBox33.Text = dr1["roughness"].ToString();
                TextBox34.Text = dr1["chromelayerthickness"].ToString();


            }
            else
            {

            }

            dr1.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn1.Close();
        }

        con.Close();
    }

    protected void ImageButton1_Click(object sender, object e)
    {
        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;




        updateSQL = "UPDATE job_cylinder set ";




        updateSQL += "posino=@posino,colour=@colour,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,xdiagonal=@xdiagonal,engravingtype=@engravingtype,";
        updateSQL += " stretchfactor=@stretchfactor,channel=@channel,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,";
        updateSQL += "cylinderfacewidth=@cylinderfacewidth,roughness=@roughness,chromelayerthickness=@chromelayerthickness  WHERE id=@id ";

        dbConn2.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;


        cmd1.Parameters.AddWithValue("@posino", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@colour", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@screen", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@stylusangle", TextBox4.Text);
        cmd1.Parameters.AddWithValue("@depth", TextBox5.Text);
        cmd1.Parameters.AddWithValue("@cellwallvolume", TextBox23.Text);

        cmd1.Parameters.AddWithValue("@xdiagonal", TextBox24.Text);
        cmd1.Parameters.AddWithValue("@engravingtype", TextBox25.Text);
        cmd1.Parameters.AddWithValue("@stretchfactor", TextBox26.Text);
        cmd1.Parameters.AddWithValue("@channel", TextBox27.Text);


        cmd1.Parameters.AddWithValue("@cylinderdiameter", TextBox28.Text);
        cmd1.Parameters.AddWithValue("@circumference", TextBox29.Text);

        cmd1.Parameters.AddWithValue("@printwidth", TextBox30.Text);
        cmd1.Parameters.AddWithValue("@referencecolour", TextBox31.Text);
        cmd1.Parameters.AddWithValue("@cylinderfacewidth", TextBox32.Text);
        cmd1.Parameters.AddWithValue("@roughness", TextBox33.Text);

        cmd1.Parameters.AddWithValue("@chromelayerthickness", TextBox34.Text);
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

