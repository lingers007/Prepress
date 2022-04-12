



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

public partial class Receive : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();

    SqlCommand cmd2 = new SqlCommand();

    SqlCommand cmd3 = new SqlCommand();
    
    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlConnection dbConn22 = new SqlConnection();
    SqlConnection dbConn222 = new SqlConnection();
    SqlConnection dbConn2222 = new SqlConnection();
    SqlConnection dbConn33 = new SqlConnection();
    SqlConnection dbConn333 = new SqlConnection();
    SqlConnection dbConn3333 = new SqlConnection();
    SqlConnection dbConn44 = new SqlConnection();
    SqlConnection dbConn444 = new SqlConnection();
    SqlConnection dbConn4444 = new SqlConnection();
    SqlDataReader dr1, dr2, dr3, dr;
    string selectSQL;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label2.Text = "";
        Label4.Text = "";
    }
    [WebMethod]
    public static List<string> GetAutoCompleteData(string purchaseorderno)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
            using (SqlCommand cmd = new SqlCommand("select orderid,purchaseorderno from orders where purchaseorderno LIKE '%'+@SearchText+'%'", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText", purchaseorderno);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1}", dr["purchaseorderno"], dr["orderid"]));
                }
                return result;
            }
        }
    }


    [WebMethod]
    public static List<string> GetAutoCompleteData1(string requisitioncode)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
            using (SqlCommand cmd = new SqlCommand("select orderid,requisitioncode from orders where requisitioncode LIKE '%'+@SearchText2+'%'", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText2", requisitioncode);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1}", dr["requisitioncode"], dr["orderid"]));
                }
                return result;
            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       // Session["po"] = txtSearch.Text;

        selectSQL = "select purchaseorderno,producttype  from orders  WHERE     purchaseorderno = '" + txtSearch.Text + "'  ";
        dbConn.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;

        
        cmd.Connection = dbConn;


        try
        {
            dbConn.Open();
//  Response.Write(selectSQL);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["purchaseorderno"].ToString();
                Session["po"] = Label2.Text;
                Label4.Text = dr["producttype"].ToString();

             if (dr["producttype"].ToString() == "3")
                {
                    Response.Redirect("Receive1.aspx");
                }
                else if
                    (dr["producttype"].ToString() == "1")
                {
                    Response.Redirect("Receiveof.aspx");
                }
                else if
                    (dr["producttype"].ToString() == "4")
                {
                    Response.Redirect("Receivecd.aspx");
                }
                else if
                   (dr["producttype"].ToString() == "6")
                {
                    Response.Redirect("Receiveem.aspx");
                }

               
            }
            else
            {
                Label2.Text = "No Records  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label2.Text = "Error  Logging in  ";
            Label2.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        selectSQL = "select purchaseorderno,producttype  from orders  WHERE     requisitioncode = '" + txtSearch2.Text + "'  ";
        dbConn.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;


        cmd.Connection = dbConn;


        try
        {
            dbConn.Open();
    
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr["purchaseorderno"].ToString();
                Session["po"] = Label2.Text;
                Label4.Text = dr["producttype"].ToString();


                if (dr["producttype"].ToString() == "3")
                {
                    Response.Redirect("Receive1.aspx");
                }
                else if
                    (dr["producttype"].ToString() == "1")
                {
                    Response.Redirect("Receiveof.aspx");
                }
                else if
                    (dr["producttype"].ToString() == "4")
                {
                    Response.Redirect("Receivecd.aspx");
                }
                else if
                   (dr["producttype"].ToString() == "6")
                {
                    Response.Redirect("Receiveem.aspx");
                }

            }
            else
            {
                Label2.Text = "No Records  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label2.Text = "Error  Logging in  ";
            Label2.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }







    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));

        string updateSQL;
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
            dbConn.Close();
        }

    }
    
}