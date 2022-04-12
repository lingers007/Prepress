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

public partial class Received2 : System.Web.UI.Page
{

    SqlCommand cmd = new SqlCommand();

    SqlConnection dbConn = new SqlConnection();

    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3;
    string selectSQL, selectSQL1, updateSQL;
    SqlCommand cmd53 = new SqlCommand();
    SqlCommand cmd90 = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd9999 = new SqlCommand();
    SqlDataReader dr90, dr9999;
    SqlConnection dbConn53 = new SqlConnection();
    SqlConnection dbConn90 = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();

    SqlConnection dbConn9999 = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        string selectSQL90;
        selectSQL90 = " SELECT * FROM orders   where orderid = '" + Session["go"].ToString() + "'   ";
        dbConn90.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd90.Connection = dbConn90;
        cmd90.CommandText = selectSQL90;
        cmd90.CommandType = CommandType.Text;

        try
        {
            dbConn90.Open();
            dr90 = cmd90.ExecuteReader();
            if (dr90.Read())
            {

                Session["Pty"] = dr90["producttype"].ToString();
                Session["posino"] = dr90["posino"].ToString();

                Session["pc"] = dr90["productcode"].ToString();


                // Response.Write(Session["Pt"]);








                if (Session["Pty"].ToString() == "3")
                {
                    string selectSQL9999;
                    selectSQL9999 = " SELECT * FROM orders_cylinder   where orderid = '" + Session["go"].ToString() + "'   ";
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

                            TextBox2.Text = dr9999["baseno"].ToString();

                            Session["no"] = TextBox2.Text;
                            // Response.Write(TextBox2.Text);

                        }
                        else
                        {
                            Label1.Text = "Error @ Emboss";
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

                else
                {

                    string selectSQL9999;
                    selectSQL9999 = " SELECT * FROM orders_others   where orderid = '" + Session["go"].ToString() + "'   ";
                    dbConn9999.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd9999.Connection = dbConn9999;
                    cmd9999.CommandText = selectSQL9999;
                    cmd9999.CommandType = CommandType.Text;

                    try
                    {
                        dbConn9999.Open();
                        dr9999 = cmd9999.ExecuteReader();
                        if (dr9999.Read())
                        {
                            TextBox2.Text = dr9999["assetcodes"].ToString();
                            Session["no"] = TextBox2.Text;
                        }
                        else
                        {
                            //  Label007.Text = "Error @ Emboss";
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



            }
            else
            {
                //  Label007.Text = "Error @ Emboss";
            }

        }
        catch (Exception err)
        {
            Response.Write(err.ToString());

        }
        finally
        {
            dbConn90.Close();
        }





    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            string query = "UPDATE orders SET rejected = @rejected, stockable ='2',qtyrejected=@qtyrejected  WHERE orderid = @orderid";
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@orderid", Session["go"].ToString());
                cmd.Parameters.AddWithValue("@rejected", TextBox2.Text);
                cmd.Parameters.AddWithValue("@qtyrejected", TextBox1.Text);


                // cmd.Parameters.AddWithValue("@accepted", accepted);
                // cmd.Parameters.AddWithValue("@clicked", clicked);
                con.Open();
                cmd.ExecuteNonQuery();


                con.Close();

            }
        }

        Response.Redirect("RejectConf1.aspx");  


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
            dbConn.Close();
        }

    }
}