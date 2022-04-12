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

public partial class AcceptConf1 : System.Web.UI.Page
{
   
    SqlConnection dbConn9999 = new SqlConnection();
    SqlConnection dbConn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
   
    SqlCommand cmd9999 = new SqlCommand();
    SqlDataReader dr90, dr9999;
    SqlConnection dbConn53 = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        string selectSQL9999;
        selectSQL9999 = " SELECT   baseno  from assets  where baseno = '" + Session["no"].ToString() + "'  ";
        dbConn9999.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd9999.Connection = dbConn9999;
        cmd9999.CommandText = selectSQL9999;
        cmd9999.CommandType = CommandType.Text;

        try
        {
            dbConn9999.Open();

            dr9999 = cmd9999.ExecuteReader();
            //  Response.Write(selectSQL9999);
            if (dr9999.Read())
            {


                Label2.Text = "Item Has Been Succesfully Returned  Back To Stock";




            }
            else
            {
                Label2.Text = "Item Has Been Succesfully Added To Stock";

            }

        }
        catch (Exception err)
        {
            Response.Write(err.ToString());

        }
        finally
        {
            dbConn9999.Close();
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