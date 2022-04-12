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
using System.Globalization;

public partial class Rec2 : System.Web.UI.Page
{
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd = new SqlCommand();

    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3;

    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!this.IsPostBack)
        {
            GridView1.DataSource = GetData();
            GridView1.DataBind();
        }


        foreach (GridViewRow row in GridView1.Rows)
        {
            foreach (TableCell cell in row.Cells)
            {
                cell.Attributes.CssStyle["text-align"] = "center";
            }
        }
        //  txtdate.Text = DateTime.Today.ToString("DD/MM/yyyy", CultureInfo.InvariantCulture);
    }

    [WebMethod]











 
    public static string[] GetCustomers()
    {
        List<string> customers = new List<string>();
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT baseno FROM assets WHERE baseno NOT IN (SELECT no FROM stock )UNION ALL SELECT no FROM stock WHERE Active ='2'";
                cmd.Connection = conn;
                conn.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(sdr["baseno"].ToString());
                    }
                }
                conn.Close();
            }
        }

        return customers.ToArray();
    }

    protected void OnUpdate(object sender, EventArgs e)
    {




        if (Session["tt"].ToString() == "3")
        {
            List<string> tags = hfCustomerIds.Value.Split(new char[] { ',', '|' }).ToList();
            List<string> duplicates = tags.Where(x => x != "").GroupBy(x => x).SelectMany(g => g.Skip(1)).ToList();
            if (duplicates.Count == 0)
            {

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    GridViewRow row = GridView1.Rows[i];
                    string orderid = row.Cells[0].Text;
                    
                    string deliverydate = (row.FindControl("txtdate") as TextBox).Text.Trim();
                    string waybillno = (row.FindControl("txtwaybill") as TextBox).Text.Trim();
                    string comment = (row.FindControl("txtcomment") as TextBox).Text.Trim();
                    string qtyreceived = (row.FindControl("txtcomment1") as TextBox).Text.Trim();
                    // string selectedTags = (row.FindControl("hfIds") as HiddenField).Value.Trim().Replace(",", "/");
                    string selectedTags = hfCustomerIds.Value.Split('|')[i];



                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "UPDATE orders SET deliverydate=@deliverydate, qtyreceived=@qtyreceived ,waybillno=@waybillno,comment=@comment,clicked ='2' WHERE orderid=@orderid ";
                        query += " INSERT INTO orders_cylinder (orderid,baseno) VALUES (@orderid,@accepted)";
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.CommandText = query;
                            cmd.Connection = con;
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.AddWithValue("@orderid", orderid);
                            cmd.Parameters.AddWithValue("@deliverydate", deliverydate);
                            cmd.Parameters.AddWithValue("@waybillno", waybillno);
                            cmd.Parameters.AddWithValue("@comment", comment);
                            cmd.Parameters.AddWithValue("@qtyreceived", qtyreceived);
                            cmd.Parameters.AddWithValue("@accepted", selectedTags);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }



                }

                Response.Redirect("Conf.aspx");

            }
            else
            {
                Label1.Text = "You Can't use the same Asset Code Twice";
                //Response.Redirect("2.aspx");
            }

        }
        else if (Session["tt"].ToString() == "1")
        {
            List<string> tags = hfCustomerIds.Value.Split(new char[] { ',', '|' }).ToList();
            List<string> duplicates = tags.Where(x => x != "").GroupBy(x => x).SelectMany(g => g.Skip(1)).ToList();
            if (duplicates.Count == 0)
            {

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    GridViewRow row = GridView1.Rows[i];
                    string orderid = row.Cells[0].Text;
                    string deliverydate = (row.FindControl("txtdate") as TextBox).Text.Trim();
                    string waybillno = (row.FindControl("txtwaybill") as TextBox).Text.Trim();
                    string comment = (row.FindControl("txtcomment") as TextBox).Text.Trim();
                    string qtyreceived = (row.FindControl("txtcomment1") as TextBox).Text.Trim();
                    // string selectedTags = (row.FindControl("hfIds") as HiddenField).Value.Trim().Replace(",", "/");
                    string selectedTags = hfCustomerIds.Value.Split('|')[i];



                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "UPDATE orders SET deliverydate=@deliverydate, qtyreceived=@qtyreceived ,waybillno=@waybillno,comment=@comment,clicked ='22' WHERE orderid=@orderid ";
                        query += " INSERT INTO orders_others (orderid,assetcodes) VALUES (@orderid,@accepted)";
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.CommandText = query;
                            cmd.Connection = con;
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.AddWithValue("@orderid", orderid);
                            cmd.Parameters.AddWithValue("@deliverydate", deliverydate);
                            cmd.Parameters.AddWithValue("@waybillno", waybillno);
                            cmd.Parameters.AddWithValue("@comment", comment);
                            cmd.Parameters.AddWithValue("@qtyreceived", qtyreceived);
                            cmd.Parameters.AddWithValue("@accepted", selectedTags);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }



                }

                Response.Redirect("Conf.aspx");

            }
            else
            {
                Label1.Text = "You Can't use the same Asset Code Twice";
                //Response.Redirect("2.aspx");
            }

        }
        else if (Session["tt"].ToString() == "4")
        {
            List<string> tags = hfCustomerIds.Value.Split(new char[] { ',', '|' }).ToList();
            List<string> duplicates = tags.Where(x => x != "").GroupBy(x => x).SelectMany(g => g.Skip(1)).ToList();
            if (duplicates.Count == 0)
            {

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    GridViewRow row = GridView1.Rows[i];
                    string orderid = row.Cells[0].Text;
                    string deliverydate = (row.FindControl("txtdate") as TextBox).Text.Trim();
                    string waybillno = (row.FindControl("txtwaybill") as TextBox).Text.Trim();
                    string comment = (row.FindControl("txtcomment") as TextBox).Text.Trim();
                    string qtyreceived = (row.FindControl("txtcomment1") as TextBox).Text.Trim();
                    // string selectedTags = (row.FindControl("hfIds") as HiddenField).Value.Trim().Replace(",", "/");
                    string selectedTags = hfCustomerIds.Value.Split('|')[i];



                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "UPDATE orders SET deliverydate=@deliverydate, qtyreceived=@qtyreceived ,waybillno=@waybillno,comment=@comment,clicked ='22' WHERE orderid=@orderid ";
                        query += " INSERT INTO orders_others (orderid,assetcodes) VALUES (@orderid,@accepted)";
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.CommandText = query;
                            cmd.Connection = con;
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.AddWithValue("@orderid", orderid);
                            cmd.Parameters.AddWithValue("@deliverydate", deliverydate);
                            cmd.Parameters.AddWithValue("@waybillno", waybillno);
                            cmd.Parameters.AddWithValue("@comment", comment);
                            cmd.Parameters.AddWithValue("@qtyreceived", qtyreceived);
                            cmd.Parameters.AddWithValue("@accepted", selectedTags);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }



                }

                Response.Redirect("Conf.aspx");

            }
            else
            {
                Label1.Text = "You Can't use the same Asset Code Twice";
                //Response.Redirect("2.aspx");
            }

        }
        else if (Session["tt"].ToString() == "6")
        {
            List<string> tags = hfCustomerIds.Value.Split(new char[] { ',', '|' }).ToList();
            List<string> duplicates = tags.Where(x => x != "").GroupBy(x => x).SelectMany(g => g.Skip(1)).ToList();
            if (duplicates.Count == 0)
            {

                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    GridViewRow row = GridView1.Rows[i];
                    string orderid = row.Cells[0].Text;
                    string deliverydate = (row.FindControl("txtdate") as TextBox).Text.Trim();
                    string waybillno = (row.FindControl("txtwaybill") as TextBox).Text.Trim();
                    string comment = (row.FindControl("txtcomment") as TextBox).Text.Trim();
                    string qtyreceived = (row.FindControl("txtcomment1") as TextBox).Text.Trim();
                    // string selectedTags = (row.FindControl("hfIds") as HiddenField).Value.Trim().Replace(",", "/");
                    string selectedTags = hfCustomerIds.Value.Split('|')[i];



                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "UPDATE orders SET deliverydate=@deliverydate, qtyreceived=@qtyreceived ,waybillno=@waybillno,comment=@comment,clicked ='22' WHERE orderid=@orderid ";
                        query += " INSERT INTO orders_others (orderid,assetcodes) VALUES (@orderid,@accepted)";
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.CommandText = query;
                            cmd.Connection = con;
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.AddWithValue("@orderid", orderid);
                            cmd.Parameters.AddWithValue("@deliverydate", deliverydate);
                            cmd.Parameters.AddWithValue("@waybillno", waybillno);
                            cmd.Parameters.AddWithValue("@comment", comment);
                            cmd.Parameters.AddWithValue("@qtyreceived", qtyreceived);
                            cmd.Parameters.AddWithValue("@accepted", selectedTags);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }



                }

                Response.Redirect("Conf.aspx");

            }
            else
            {
                Label1.Text = "You Can't use the same Asset Code Twice";
                //Response.Redirect("2.aspx");
            }

        }
 }
    private DataTable GetData()
    {
        string conString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        string query = "Select o.orderid,c.posino,o.purchaseorderno,o.quantity FROM orders o inner join job_cylinder c on o.posino = c.id   where purchaseorderno='" + Session["po"].ToString() + "'";
        using (SqlConnection con = new SqlConnection(conString))
        {
            SqlCommand cmd = new SqlCommand(query);
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);

                    return dt;
                }
            }
        }
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));

        string updateSQL;
        updateSQL = "update usertracking set loggedout='" + date1 + "' where username='" + Session["username"].ToString() + "' and loggedin='" + Session["date"].ToString() + "' ";

        dbConn.ConnectionString =  "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
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







