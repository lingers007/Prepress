
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

public partial class Choose : System.Web.UI.Page
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

        dbConn.ConnectionString ="data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {

            int b = 1;
            Session["1"] = b;
         
        }
        else
        {
            int b = 2;
            Session["1"] = b;
          
        }

        if (CheckBox2.Checked == true)
        {

            int c = 11;
            Session["22"] = c;
           
        }
        else
        {
            int c = 22;
            Session["22"] = c;
            
        }
        if (CheckBox3.Checked == true)
        {

            int d = 11;
            Session["33"] = d;
        }
        else
        {
            int d = 22;
            Session["33"] = d;
            
        }
     

        if (CheckBox4.Checked == true)
        {

            int f = 11;
            Session["44"] = f;
        }
        else
        {
            int f = 22;
            Session["44"] = f;
            
        }

        if (CheckBox5.Checked == true)
        {

            int G = 11;
            Session["55"] = G;
        }
        else
        {
            int G = 22;
            Session["55"] = G;

        }

        if (CheckBox6.Checked == true)
        {

            int h = 11;
            Session["66"] = h;
        }
        else
        {
            int h = 22;
            Session["66"] = h;

        }





        if (CheckBox7.Checked == true)
        {

            int k= 77;
            Session["77"] = k;
        }
        else
        {
            int k = 88;
            Session["77"] = k;

        }

        Response.Redirect("All.aspx");
    }
    

}