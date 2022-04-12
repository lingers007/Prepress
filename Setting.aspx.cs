
using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Setting : System.Web.UI.Page
{
    string selectSQL;
    string updateSQL;
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
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
       Response.Write(Session["username"]);
        if (!IsPostBack)
        {
         
        
            BindUserDetails();
            BindUserDetails1();
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

        Label1.Text = " ";

        Label2.Text = " ";

        Label3.Text = " ";
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
            using (SqlDataAdapter sda = new SqlDataAdapter("Select id, category  FROM AssetsCategory ORDER BY id ASC", con))
            {
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    gvDetails.DataSource = dt;
               
                    gvDetails.DataBind();
                }
            }
        }
    }

    protected void BindUserDetails1()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con1 = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda1 = new SqlDataAdapter("Select id, Company  FROM  Suppliers ORDER BY id ASC", con1))
            {
                using (DataTable dt1 = new DataTable())
                {
                    sda1.Fill(dt1);
                    grid1.DataSource = dt1;
                    grid1.DataSource = dt1;
                    grid1.DataBind();
                }
            }
        }
    }



    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void Inkview_Click(object sender, EventArgs e)
    {
        //Getting UserId of particular row using datakey value
        int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
        int usrid = Convert.ToInt32(gvDetails.DataKeys[rowIndex].Values[0]);
        SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");

        con.Open();
        SqlCommand cmd = new SqlCommand("delete from AssetsCategory where id=" + usrid, con);
        cmd.ExecuteNonQuery();
        con.Close();

        BindUserDetails();



        MainView.ActiveViewIndex = 1;


     




    }



    protected void Inkview_Click1(object sender, EventArgs e)
    {
        //Getting UserId of particular row using datakey value
        int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
        int usrid = Convert.ToInt32(grid1.DataKeys[rowIndex].Values[0]);
        SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");

        con.Open();
        SqlCommand cmd = new SqlCommand("delete from Suppliers where id=" + usrid, con);
        cmd.ExecuteNonQuery();
        con.Close();

        BindUserDetails1();



        MainView.ActiveViewIndex = 2;






    }
    protected void Button4_Click(object sender, EventArgs e)
    {
         
                    string insertSQL;
                    insertSQL = "INSERT INTO AssetsCategory (";
                    insertSQL += "Category)";
                    insertSQL += "VALUES('";
                    
             
                    insertSQL += TextBox4.Text + "')";




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
                            BindUserDetails();
                            MainView.ActiveViewIndex = 1;
                            Tab1.CssClass = "Initial";
                            Tab2.CssClass = "Clicked";
                            Tab3.CssClass = "Initial";
                            TextBox4.Text = "";
                        }
                        else
                        {
                           Label5.Text = "Error @ unit 7";
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


    protected void Button5_Click(object sender, EventArgs e)
    {
        string insertSQL;
        insertSQL = "INSERT INTO Suppliers (";
        insertSQL += "Company)";
        insertSQL += "VALUES('";


        insertSQL += TextBox5.Text + "')";




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
                BindUserDetails1();
                MainView.ActiveViewIndex = 2;
                Tab1.CssClass = "Initial";
                Tab2.CssClass = "Initial";
                Tab3.CssClass = "Clicked";
                TextBox5.Text = "";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        updateSQL = "update Settings set FinYear='" + TextBox1.Text + "' where id='1'  ";

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
                Label1.Text = "Finanacial Year Updated ";
                TextBox1.Text = "";
            }
            else
            {


            Label8.Text = "Process not Completed";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        updateSQL = "update Settings set Year='" + TextBox2.Text + "'   where id='1'  "; 

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

                Label2.Text = "Calendar Year Updated ";
                TextBox2.Text = "";
            }
            else
            {


                Label8.Text = "Process not Completed";
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        updateSQL = "update Settings set Vat='" + TextBox3.Text + "'    where id='1'  ";

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
                Label3.Text = "Vat Updated  ";
                TextBox3.Text = "";
            }
            else
            {


                Label8.Text = "Process not Completed";
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



}


