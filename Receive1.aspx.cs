﻿
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

public partial class Receive1 : System.Web.UI.Page
{
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd = new SqlCommand();

    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3;
    string selectSQL, selectSQL1, updateSQL;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindUserDetails();
        }
                    int b = 3;
        Session["tt"] = b;

    }


    protected void BindUserDetails()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter(" Select o.orderid,o.purchaseorderno,o.requisitioncode,c.posino,j.pid,j.description,o.dateordered,o.dateexpected,o.quantity,o.qtyreceived,o.supplier FROM orders o inner join job_cylinder c on o.posino = c.id  inner join job j on c.pid= j.id  where purchaseorderno='" + Session["po"].ToString() + "'   ORDER BY orderid ASC", con))
            {
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    gvDetails.DataSource = dt;
                   
                    gvDetails.DataBind();
                }
            }
        }

        //Required for jQuery DataTables to work.
       if (gvDetails.Rows.Count > 0)
        {
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[4]
    {
        new DataColumn("orderid"),
        new DataColumn("purchaseorderno"),
          new DataColumn("posino"),
        new DataColumn("quantity"), });
        foreach (GridViewRow row in gvDetails.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                string orderid = row.Cells[0].Text;
                string purchaseorderno = row.Cells[1].Text;
                 string posino = row.Cells[3].Text;
                string quantity = row.Cells[8].Text;

                dt.Rows.Add(orderid, purchaseorderno,posino,quantity);
            }
        }
        Session["Data"] = dt;

        Response.Redirect("Rec2.aspx");
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