using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Data;
using System.Web.Services;
using System.Configuration;
using System.Security.Cryptography;
public partial class Users : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
    private static int PageSize = 20;
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

        var code = (24 + "AZp4NY3Wq" + 24 + "lp78tsI5g" + 1 + 24).ToString();
        string encrypt = Encrypt(code);
        string decrypt = Decrypt(encrypt);

        if (!IsPostBack)
        {


            BindUserDetails();
            BindDummyRow();
        }

        MainView.ActiveViewIndex = 0;


        try
        {
            if (Convert.ToInt32(Session["privilege"]) == null)
            {
                Response.Redirect("Welcome.aspx");

            }

            else   if(Convert.ToInt32(Session["privilege"]) ==2)
           
            
            {
                Response.Redirect("Home.aspx");
           
            }
            else if (Convert.ToInt32(Session["privilege"]) == 3)
            {

                Response.Redirect("Home.aspx");

            }
            else if (Convert.ToInt32(Session["privilege"]) == 4)
            {

                Response.Redirect("Home.aspx");
            }


            else
            {
            // Response.Redirect("Setting.aspx");
            }


            
        }

        catch
        {
            Response.Redirect("Home.aspx");
        }


    }
    protected void Tab1_Click(object sender, EventArgs e)
   {
        Label8.Text ="";
        Tab1.CssClass = "Clicked";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";




        MainView.ActiveViewIndex = 0;
    }

    protected void Tab2_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Clicked";
        Tab3.CssClass = "Initial";

        MainView.ActiveViewIndex = 1;

    }

    protected void Tab3_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Clicked";

        MainView.ActiveViewIndex = 2;
    }

    protected void BindUserDetails()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("Select id, username,privilege  FROM users ORDER BY id ASC", con))
            {
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    gvDetails0.DataSource = dt;
                    gvDetails0.DataSource = dt;
                    gvDetails0.DataBind();
                }
            }
        }
    }

   
    protected void Inkview_Click(object sender, EventArgs e)
    {
        //Getting UserId of particular row using datakey value
        int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
        int usrid = Convert.ToInt32(gvDetails0.DataKeys[rowIndex].Values[0]);
        SqlConnection con = new SqlConnection("Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;");

        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Users where id=" + usrid, con);
        cmd.ExecuteNonQuery();
        con.Close();

        BindUserDetails();



        MainView.ActiveViewIndex = 1;






    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }


    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            encryptor.Mode = CipherMode.CBC;
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }

    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

        string insertSQL;
        insertSQL = "INSERT INTO users (";
        insertSQL += "username,password,privilege)";
        insertSQL += "VALUES('";

        insertSQL += TextBox1.Text + "','";
        insertSQL += Encrypt(TextBox3.Text.Trim()) + "','";
        insertSQL += DropDownList1.SelectedValue.ToString() + "')";




        String connectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";
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
               // BindUserDetails1();
                MainView.ActiveViewIndex = 0;
                Tab1.CssClass = "Initial";
                Tab2.CssClass = "Initial";
                Tab3.CssClass = "Clicked";

                Label8.Text = "User Added";
               TextBox3.Text = "";
               TextBox1.Text = "";
               TextBox6.Text = "";
               DropDownList1.SelectedIndex = 0;

            }                   

            else
            {
                Label7.Text = "Error @ unit 7";
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

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


        updateSQL = "update usertracking set loggedout='" + date1 + "' where username='" + Session["username"].ToString() + "' and loggedin='" + Session["date"].ToString() + "' ";

        dbConn.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";
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


    private void BindDummyRow()
    {
       
        DataTable dummy = new DataTable();
        dummy.Columns.Add("id");
        dummy.Columns.Add("username");
        dummy.Columns.Add("loggedin");
        dummy.Columns.Add("loggedout");





        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
        //gvDetails.UseAccessibleHeader = true;
        //gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
    }



    [WebMethod]
    public static string GetCustomers(int pageIndex)
    {
        string query = "[usertracking1]";
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
                    sda.Fill(ds, "usertracking");
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

}