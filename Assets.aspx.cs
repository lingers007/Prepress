
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

public partial class Assets : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlCommand cmd1 = new SqlCommand();
    SqlConnection dbConn1 = new SqlConnection();
    SqlDataReader dr, dr1;
    private static int PageSize = 35;
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


        MainView.ActiveViewIndex = 0;
        Session["myDatatable"] = null;

        if (this.GridView1.Rows.Count > 0 && Session["myDatatable"] != null)
        {


            DataTable dt = (DataTable)Session["myDatatable"];
            dt.Clear();
            foreach (GridViewRow row in this.GridView1.Rows)
            {
                string baseno = (row.FindControl("base") as TextBox).Text;
                string description = (row.FindControl("descrip") as TextBox).Text;
                string type = (row.FindControl("DropDownList2") as DropDownList).SelectedItem.Text;
                dt.Rows.Add(baseno, description, type);
                (row.FindControl("DropDownList2") as DropDownList).Items.FindByText(type).Selected = true;
            }
            Session["myDatatable"] = dt;
        }

        string today = DateTime.Now.ToString("dd/MM/yyyy");
       
        Label5.Text = today;
     

        Session["Time1"] = today;


    }
   
 protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button Inkview = (e.Row.FindControl("Inkview") as Button);
            Button lnkView1 = (e.Row.FindControl("lnkView1") as Button);
            if (Convert.ToInt32(Session["privilege"]) == 2)
            {
                lnkView1.Enabled = false;
                Inkview.Enabled = false;
                Tab1.Enabled = false;
                Tab3.Enabled = false;
               

            }
            else if (Convert.ToInt32(Session["privilege"]) == 4)
            {
                lnkView1.Enabled = false;
                Inkview.Enabled = false;
                Tab1.Enabled = false;
                Tab3.Enabled = false;
               

            }



            else
            {

            }
        }
    }


    protected void Tab1_Click(object sender, EventArgs e)
    {




        Label71.Visible = false;
       
      
       
        Tab1.CssClass = "Clicked";
      
        Tab3.CssClass = "Initial";
         MainView.ActiveViewIndex = 0;



      
    }

   

    protected void Tab3_Click(object sender, EventArgs e)
    {
       Label50.Text = " ";
        GridView1.Visible = false;
      
        TextBox3.Visible = true;
        TextBox4.Visible = true;
        DropDownList2.Visible = true;
        Button2.Visible = true;
        Button12.Visible = false;
        txtNo.Text = "";
        Label72.Visible = true;
        Label73.Visible = true;
        Label74.Visible = true;


        Label71.Visible = false;
        Tab1.CssClass = "Initial";
       
        Tab3.CssClass = "Clicked";

        MainView.ActiveViewIndex = 1;

       
    }

    private void BindDummyRow()
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("id");
        dummy.Columns.Add("baseno");
        dummy.Columns.Add("type");
        dummy.Columns.Add("date");
        dummy.Columns.Add("description");   
     


        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
        //gvDetails.UseAccessibleHeader = true;
        //gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
    }





    [WebMethod]
    public static string GetCustomers(int pageIndex)
    {
        string query = "[Test]";
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
                    sda.Fill(ds, "assets");
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


        Label71.Visible = false;

        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;




        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);
        SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM assets  WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        con.Close();

        string selectSQL12;
        selectSQL12 = "SELECT  * from assets where id='" + Label1.Text + "'    ";
        dbConn1.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL12;
        cmd1.CommandType = CommandType.Text;

        try
        {
            dbConn1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                TextBox1.Text = dr1["baseno"].ToString();
                TextBox2.Text = dr1["description"].ToString();

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





    }

    protected void Inkview_Click1(object sender, EventArgs e)
    {

        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;


        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from assets where id='" + Session["DatakeyValue"] .ToString()+ "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        BindDummyRow();

    }

    public void AddNewData()
    {
        DataTable dt = new DataTable();
        if (Session["myDatatable"] != null)
        {
            dt = (DataTable)Session["myDatatable"];
        }
        else
        {
            dt.Columns.Add("baseno");
            dt.Columns.Add("description");
            dt.Columns.Add("type");
        }

        DataRow drow = dt.NewRow();
        drow["baseno"] = "";
        drow["description"] = "";
        drow["type"] = "";
        dt.Rows.Add(drow);
        Session["myDatatable"] = dt;
    }

    public void BindGridview()
    {
        if (Session["myDatatable"] != null)
        {
            DataTable dt = (DataTable)Session["myDatatable"];

            if ((dt != null) && (dt.Rows.Count > 0))
            {
                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Button12.Visible = true;
               
            }
            else
            {
                GridView1.Visible = false;
            }
        }
    }

   
    protected void OnSave(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            string baseno = (row.FindControl("base") as TextBox).Text;
            string description = (row.FindControl("descrip") as TextBox).Text;
            string type = (row.FindControl("DropDownList2") as DropDownList).SelectedItem.Text;
            if (!string.IsNullOrEmpty(baseno) && !string.IsNullOrEmpty(description))
            {
                string conString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                string query = "INSERT INTO assets VALUES(@baseno,@type,@date,@description)";
                using (SqlConnection con = new SqlConnection(conString))
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@baseno", baseno);
                        cmd.Parameters.AddWithValue("@description", description);
                        cmd.Parameters.AddWithValue("@type", type);
                        cmd.Parameters.AddWithValue("@date", Session["Time1"]);
                        con.Open();

                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                }
            }
        }

        Session["myDatatable"] = null;
        Response.Redirect("Conf1.aspx");
    }
protected void Add(object sender, EventArgs e)
{
    Label50.Text = IsDoubleNaN(txtNo.Text) ? " " : "Enter a valid number";
    TextBox3.Visible = false;
    TextBox4.Visible = false;
    DropDownList2.Visible = false;
    Button2.Visible = false;
    Label72.Visible = false;
    Label73.Visible = false;
    Label74.Visible = false;
 
    if (IsDoubleNaN(txtNo.Text))
    {
        for (int i = 0; i < Convert.ToInt32(txtNo.Text); i++)
        {
            AddNewData();
        }
    }
    BindGridview();
    MainView.ActiveViewIndex = 1;
}
public bool IsDoubleNaN(string text)
{
    if (string.IsNullOrEmpty(text))
    {
        return false;
    }
    Double num = 0;
    bool isDouble = Double.TryParse(text, out num);
 
    return isDouble;
}
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
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

    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);
        updateSQL = "UPDATE assets set ";

        updateSQL += "baseno=@baseno,description=@description,type=@type   WHERE id ='" + Label1.Text + "' ";

        dbConn1.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";


        cmd1.Connection = dbConn1;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;



        cmd1.Parameters.AddWithValue("@baseno", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@description", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Value);





        try
        {
            dbConn1.Open();
            int updated = cmd1.ExecuteNonQuery();
            Label71.Visible = true;
            Label71.Text = " records updated.";
            MainView.ActiveViewIndex = 0;
            //Tab1.CssClass = "Clicked";




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
            dbConn1.Close();
        }

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string today = DateTime.Now.ToString("dd/MM/yyyy");
        string insertSQL;
        insertSQL = "INSERT INTO Assets(";
        insertSQL += "baseno,description,type,date)";
        insertSQL += "VALUES('";

        insertSQL += TextBox3.Text + "','";
        insertSQL += TextBox4.Text + "','";
        insertSQL += DropDownList2.SelectedItem.ToString() + "','";
        insertSQL += today + "')";




        String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, con);
        int added = 0;

        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();


            //Label5.Text = added.ToString();


            if (added == 1)
            {
                Label50.Text = "Asset Added .";
                //BindGridview();
                MainView.ActiveViewIndex = 1;
                TextBox3.Text = "";
                TextBox4.Text = "";
                DropDownList2.SelectedIndex = 0;
              
               
                  
               
            }
            else
            {
               Label50.Text = "no  Added .";
            }
                 

        }
        catch (Exception err)
        {
            Response.Write(err.ToString());

        }
        finally
        {

            con.Close();

        }

 //Label50.Text = " ";
    }
   
   
}