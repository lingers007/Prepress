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
using System.Collections.Generic;

public partial class Send : System.Web.UI.Page
{
    SqlCommand cmd22 = new SqlCommand();
    SqlConnection dbConn22 = new SqlConnection();
    SqlDataReader dr22;
    SqlCommand cmd1 = new SqlCommand();

    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
    SqlCommand cmd = new SqlCommand();




    SqlConnection dbConn1 = new SqlConnection();
 

    protected void Page_Load(object sender, EventArgs e)
    {
        


        string selectSQL;
        selectSQL = " SELECT Top 1 packinglist FROM stocktracking order by id desc ";
        dbConn1.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;
        try
        {
            dbConn1.Open();
            dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["packinglist"].ToString();
                // Label1.Text = "WT0008918";
                int nextNumber = Convert.ToInt32(Label1.Text.Replace("PK", "")) + 1;
                TextBox1.Text = "PK" + nextNumber.ToString().PadLeft(6, '0');


            }
            dr.Close();
        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn1.Close();
        }
        List<string> stockid = (List<string>)Session["id"];
        //Response.Write(Session["id"]);
        // Response.Write(string.Join(" ", stockid));


        // Response.Write(Session["Time1"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        List<string> stockid = (List<string>)Session["id"];
        int added = 0;
        for (int i = 0; i < stockid.Count; i++)
        {
            string insertSQL = "INSERT INTO stocktracking (stockid,packinglist,datesent,location,comment,status) VALUES (@stockid,@packinglist,@datesent,@location,@comment,@status)";
            String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            cmd.Parameters.AddWithValue("@stockid", stockid[i]);
            cmd.Parameters.AddWithValue("@packinglist", TextBox1.Text);
            cmd.Parameters.AddWithValue("@datesent", Session["Time1"].ToString());
            cmd.Parameters.AddWithValue("@location", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@comment", TextBox2.Text);
            cmd.Parameters.AddWithValue("@status", 0);
            try
            {
                con.Open();
                added += cmd.ExecuteNonQuery();

              //  
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
                
            }
           
        }
        Response.Redirect("Conf3.aspx");
    }
    protected void LinkButton41_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton42_Click(object sender, EventArgs e)
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