
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Text;
using System.Globalization;
using System.IO;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;



public partial class IssueSheet : System.Web.UI.Page
{
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd58 = new SqlCommand();
    SqlCommand cmd77 = new SqlCommand();
    SqlConnection con58 = new SqlConnection();
    SqlConnection dbConn22 = new SqlConnection();
    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlConnection dbConn77 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr58, dr3;
    string selectSQL, selectSQL1, updateSQL;

   
    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {


            string selectSQL1;
            selectSQL1 = " Select *  FROM job where pid= '" + Session["pid"].ToString() + "'    ";
            dbConn1.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd2.Connection = dbConn1;
            cmd2.CommandText = selectSQL1;
            cmd2.CommandType = CommandType.Text;

            try
            {
                dbConn1.Open();
                dr1 = cmd2.ExecuteReader();
                if (dr1.Read())
                {
                    Label27.Text = dr1["id"].ToString();
                    Session["pid1"] = dr1["pid"].ToString();
                    Label25.Text = dr1["embid"].ToString();
                    Label26.Text = dr1["diereferneceno"].ToString();

                    
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
                dbConn1.Close();
            }


            string selectSQL = "SELECT workdocket  FROM job where pid ='" + Session["pid"].ToString() + "' ";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = selectSQL;
            cmd.CommandType = CommandType.Text;
            try
            {
                con.Open();
                string name = Convert.ToString(cmd.ExecuteScalar());
                lblName.Text = !string.IsNullOrEmpty(name) ? name : "&nbsp;";
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            finally
            {
                con.Close();
            }

            string selectSQL2 = "SELECT machine FROM job where id ='" + Label27.Text + "'";
            SqlConnection con32 = new SqlConnection();
            con32.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlCommand cmd32 = new SqlCommand();
            cmd32.Connection = con32;
            cmd32.CommandText = selectSQL2;
            cmd32.CommandType = CommandType.Text;
            try
            {
                con32.Open();
                string name = Convert.ToString(cmd32.ExecuteScalar());
                lblName1.Text = !string.IsNullOrEmpty(name) ? name : "&nbsp;";
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            finally
            {
                con32.Close();
            }

            string selectSQL44 = "SELECT orderqty FROM job where id ='" + Label27.Text + "'";
            SqlConnection con44 = new SqlConnection();
            con44.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlCommand cmd44 = new SqlCommand();
            cmd44.Connection = con44;
            cmd44.CommandText = selectSQL44;
            cmd44.CommandType = CommandType.Text;
            try
            {
                con44.Open();
                string name = Convert.ToString(cmd44.ExecuteScalar());
                lblName2.Text = !string.IsNullOrEmpty(name) ? name : "&nbsp;";
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            finally
            {
                con44.Close();
            }

            selectSQL = " SELECT * FROM job where id ='" + Label27.Text + "' ";
            dbConn1.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd1.Connection = dbConn1;
            cmd1.CommandText = selectSQL;
            cmd1.CommandType = CommandType.Text;
            try
            {
                dbConn1.Open();
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    //  Label1.Text = dr1["workdocket"].ToString();
                    Label2.Text = dr1["pid"].ToString();
                    Label3.Text = dr1["pack"].ToString();
                    Label4.Text = dr1["customer"].ToString();
                    //Label5.Text = dr1["date"].ToString();
                    // Label6.Text = dr1["orderqty"].ToString();
                    // Label7.Text = dr1["machine"].ToString();
                    Label8.Text = dr1["jobnumber"].ToString();
                    Label9.Text = dr1["templateno"].ToString();
                    Label10.Text = dr1["printtype"].ToString();
                    Label11.Text = dr1["description"].ToString();
                    Label12.Text = dr1["variant"].ToString();
                    Label13.Text = dr1["country"].ToString();
                    Label14.Text = dr1["artworknumber"].ToString();
                    Label15.Text = dr1["artworkdate"].ToString();
                    Label16.Text = dr1["reprodate"].ToString();
                    Label17.Text = dr1["nampakcodeno"].ToString();
                    Label18.Text = dr1["stretchdoublecut"].ToString();
                    Label19.Text = dr1["reproapproveddate"].ToString();
                    Label20.Text = dr1["artworkreceiveddate"].ToString();
                    Label21.Text = dr1["yields"].ToString();
                    Label22.Text = dr1["qtyaround"].ToString();
                    Label23.Text = dr1["qtyacross"].ToString();
                    Label24.Text = dr1["qtyperrevolution"].ToString();

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


            BindUserDetails();
            avDetails.DataSource = BindUserDetails1("");
            avDetails.DataBind();
            bvDetails.DataSource = BindUserDetails2("");
            bvDetails.DataBind();
            dvDetails2.DataSource = BindUserDetails3("");
            dvDetails2.DataBind();
        
            


        }
                Label5.Text = DateTime.Now.ToString("dd/MM/yyyy",new CultureInfo("en-US"));
             
      //  Label5.Text =  DateTime.UtcNow.ToString("dd/mm/yyyy");





        //Label5.Text = DateTime.Today.ToString("dd/mm/yyyy", CultureInfo.InvariantCulture);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

    }

    protected void BindUserDetails()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("select distinct  c.unit,c.colour,i.inkcoverage,i.inkcode,c.posino,c.referencecolour,c.screen,c.stylusangle,c.depth,c.xdiagonal,c.stretchfactor,c.engravingtype   from job_cylinder c inner join   job_ink i on c.unit =i.unit and c.pid= i.pid  where  c.pid ='" + Label27.Text + "' order by unit asc  ", con))
            {

                // Response.Write(sda);
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







    private DataTable BindUserDetails1(string sortExpression)
    {
        DataTable table = new DataTable();
        string conn_str = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        using (SqlConnection conn = new SqlConnection(conn_str))
        {
            StringBuilder sql = new StringBuilder(" SELECT  distinct j.pid,s.qtyprod,s.lastprod, j.Description, s.no,s.totalrev, js.id,js.posino,js.Colour,js.screen,js.depth,js.circumference ,o.deliverydate,o.supplier FROM Stock s INNER JOIN Job j ON j.Id = s.pid inner join orders o  on  o.orderid =s.orderid INNER JOIN (SELECT id,posino,colour,screen,depth,circumference FROM job_cylinder WHERE posino IN (SELECT posino FROM job_cylinder WHERE pid = '" + Label27.Text + "') AND PosiNo <> '') js ON js.id = s.typeid  where s.type='3' and s.active='1'");
            if (!string.IsNullOrEmpty(sortExpression))
            {
                this.SortDirection = this.SortDirection == "ASC" ? "DESC" : "ASC";
                sql.Append(" Order By " + sortExpression + " " + SortDirection);
            }
            using (SqlCommand cmd = new SqlCommand(sql.ToString(), conn))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(table);
                }
            }
        }
        return table;
    }


    private string SortDirection
    {
        get
        {
            return ViewState["SortDirection"] != null ? ViewState["SortDirection"].ToString() : "ASC";
        }
        set
        {
            ViewState["SortDirection"] = value;
        }
    }
    private string SortDirection1
    {
        get
        {
            return ViewState["SortDirection1"] != null ? ViewState["SortDirection1"].ToString() : "ASC";
        }
        set
        {
            ViewState["SortDirection1"] = value;
        }
    }
    private string SortDirection2
    {
        get
        {
            return ViewState["SortDirection2"] != null ? ViewState["SortDirection2"].ToString() : "ASC";
        }
        set
        {
            ViewState["SortDirection2"] = value;
        }
    }

    protected void OnSorting(object sender, GridViewSortEventArgs e)
    {
        avDetails.DataSource = BindUserDetails1(e.SortExpression);
        avDetails.DataBind();
    

    }

    protected void OnSorting1(object sender, GridViewSortEventArgs e)
    {
     
        bvDetails.DataSource = BindUserDetails2(e.SortExpression);
        bvDetails.DataBind();
      

    }
    protected void OnSorting2(object sender, GridViewSortEventArgs e)
    {
    
        dvDetails2.DataSource = BindUserDetails3(e.SortExpression);
        dvDetails2.DataBind();

    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        avDetails.PageIndex = e.NewPageIndex;
        BindUserDetails1(SortDirection);
        bvDetails.PageIndex = e.NewPageIndex;
        BindUserDetails2(SortDirection);
        dvDetails2.PageIndex = e.NewPageIndex;
        BindUserDetails3(SortDirection);
    }




    private DataTable BindUserDetails2(string sortExpression5)
    {
        DataTable table5 = new DataTable();
        string conn_str5 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        using (SqlConnection conn5 = new SqlConnection(conn_str5))
        {
            StringBuilder sql = new StringBuilder(" SELECT  distinct s.no,e.embid, e.mandrel, e.type,e.circmale,e.circfemale,s.totalrev,e.diameter,e.supplier,j.pid  FROM stock s   INNER JOIN Job j ON j.Id = s.pid inner  join (SELECT id, embid, mandrel, type,circmale,circfemale,diameter,supplier FROM job_emboss WHERE embid IN (SELECT embid FROM job_emboss WHERE id ='" + Label25.Text + "') AND embid <> '') e ON e.id = s.typeid  where s.type='6' and s.active='1'  ");
            if (!string.IsNullOrEmpty(sortExpression5))
            {
                this.SortDirection1 = this.SortDirection1 == "ASC" ? "DESC" : "ASC";
                sql.Append(" Order By " + sortExpression5 + " " + SortDirection1);
            }
            using (SqlCommand cmd5 = new SqlCommand(sql.ToString(), conn5))
            {
                using (SqlDataAdapter da5 = new SqlDataAdapter(cmd5))
                {
                    da5.Fill(table5);
                }
            }
        }
        return table5;
    }

    private DataTable BindUserDetails3(string sortExpression1)
    {
        DataTable table2 = new DataTable();
        string conn_str2 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        using (SqlConnection conn2 = new SqlConnection(conn_str2))
        {
            StringBuilder sql = new StringBuilder("SELECT  distinct  d.dieno,s.no,d.templateno,d.model,d.type,d.brassfemaleembossin,d.brassmaleembossing,d.supplier,d.lcutterlength,d.lcutterwidth,d.noofrerule,s.totalrev,o.deliverydate  from stock s   INNER JOIN Job j ON j.Id = s.pid inner join orders o  on  o.orderid =s.orderid inner  join (SELECT id,dieno,templateno,model,type,brassfemaleembossin,brassmaleembossing,supplier,lcutterlength,lcutterwidth,noofrerule FROM job_die WHERE dieno IN (SELECT dieno FROM job_die WHERE id ='" + Label26.Text + "') AND dieno <> '') d ON d.id = s.typeid  where s.type='4' and s.active='1'   ");
            if (!string.IsNullOrEmpty(sortExpression1))
            {
                this.SortDirection2 = this.SortDirection2 == "ASC" ? "DESC" : "ASC";
                sql.Append(" Order By  " + sortExpression1 + " " + SortDirection2);
            }
            using (SqlCommand cmd2 = new SqlCommand(sql.ToString(), conn2))
            {
                using (SqlDataAdapter da2 = new SqlDataAdapter(cmd2))
                {
                    da2.Fill(table2);
                }
            }
        }
        return table2;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


    }


    protected void ExportToPDF(object sender, EventArgs e)
    {

        using (StringWriter sw = new StringWriter())
        {


            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {

          
                Panel2.RenderControl(hw);
                StringReader sr = new StringReader(sw.ToString());
                Document pdfDoc = new Document(PageSize.A4, 0f, 0f, 0f,0f);
                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                pdfDoc.Open();
                XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf");
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Write(pdfDoc);
                Response.End();
            }

              



            
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void PRINT(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this.Page, typeof(string), "print", "window.print();", true);
    }



    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {



        string name = Request.Form["txtName"];
        lblName.Text = name;
        SqlConnection dbConn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        string updateSQL;
        updateSQL = "update job set workdocket ='" + name + "' where id='" + Label27.Text + "' ";

        dbConn.ConnectionString = WebConfigurationManager.ConnectionStrings["DB_SCH"].ConnectionString;
        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;
        try
        {
            dbConn.Open();
            int updated = cmd.ExecuteNonQuery();
            if (updated == 1)
            {


            }
            else
            {
                // Label101.Text = "Process not Completed";
            }


        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn.Close();
        }

        string insertSQL;
        insertSQL = "INSERT INTO issuesheet (";
        insertSQL += "pid, workdocket )";
        insertSQL += "VALUES('";
        insertSQL += Label27.Text + "','";
        insertSQL += name + "')";




        String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        SqlConnection con67 = new SqlConnection(connectionString);
        SqlCommand cmd67 = new SqlCommand(insertSQL, con67);
        int added67 = 0;

        try
        {
            con67.Open();
            //Response.Write(insertSQL);


            added67 = cmd67.ExecuteNonQuery();


            //  Label007.Text = added.ToString();


            if (added67 == 1)
            {
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
            con67.Close();

        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        string name1 = Request.Form["txtName1"];
        lblName1.Text = name1;
        SqlConnection dbConn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        string updateSQL;
        updateSQL = "update job set machine ='" + name1 + "' where id='" + Label27.Text + "' ";

        dbConn.ConnectionString = WebConfigurationManager.ConnectionStrings["DB_SCH"].ConnectionString;
        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL;
        cmd.CommandType = CommandType.Text;
        try
        {
            dbConn.Open();
            int updated = cmd.ExecuteNonQuery();
            if (updated == 1)
            {
                // Response.Redirect("changepassw.aspx");
            }
            else
            {
                // Label101.Text = "Process not Completed";
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

        string updateSQL2;
        updateSQL2 = "update issuesheet set  machine ='" + name1 + "' where pid='" + Label27.Text + "' ";

        dbConn77.ConnectionString = WebConfigurationManager.ConnectionStrings["DB_SCH"].ConnectionString;
        cmd77.Connection = dbConn77;
        cmd77.CommandText = updateSQL2;
        cmd77.CommandType = CommandType.Text;

        try
        {
            dbConn77.Open();
            Response.Write(updateSQL2);
            int updated = cmd77.ExecuteNonQuery();
            if (updated == 1)
            {
                // Response.Redirect("changepassw.aspx");
            }
            else
            {
                // Label101.Text = "Process not Completed";
            }


        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn77.Close();
        }

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        string name2 = Request.Form["txtName2"];
        lblName2.Text = name2;

        SqlConnection dbConn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        string updateSQL1;
        updateSQL1 = "update job set orderqty ='" + name2 + "' where id='" + Label27.Text + "' ";

        dbConn.ConnectionString = WebConfigurationManager.ConnectionStrings["DB_SCH"].ConnectionString;
        cmd.Connection = dbConn;
        cmd.CommandText = updateSQL1;
        cmd.CommandType = CommandType.Text;

        try
        {
            dbConn.Open();
            int updated = cmd.ExecuteNonQuery();
            if (updated == 1)
            {
                // Response.Redirect("changepassw.aspx");
            }
            else
            {
                // Label101.Text = "Process not Completed";
            }


        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn.Close();
        }

        string updateSQL2;
        updateSQL2 = "update issuesheet set  orderquantity ='" + name2 + "' where pid='" + Label27.Text + "' ";

        dbConn77.ConnectionString = WebConfigurationManager.ConnectionStrings["DB_SCH"].ConnectionString;
        cmd77.Connection = dbConn77;
        cmd77.CommandText = updateSQL2;
        cmd77.CommandType = CommandType.Text;

        try
        {
            dbConn77.Open();
            Response.Write(updateSQL2);
            int updated = cmd77.ExecuteNonQuery();
            if (updated == 1)
            {
                // Response.Redirect("changepassw.aspx");
            }
            else
            {
                // Label101.Text = "Process not Completed";
            }


        }
        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn77.Close();
        }

    }
   

 protected void OnChckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = (CheckBox)sender;
        GridViewRow row = (GridViewRow)chk.NamingContainer;

        string number = row.Cells[2].Text;
        string pid = Label27.Text;

        string constring = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constring))
        {
            string acceptedCylinder = GetAcceptedCylinder(pid);
            if (chk.Checked)
            {
                if (acceptedCylinder == "[]")
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET cylinders=@cylinders where pid='" + pid + "'", con))
                    {
                        cmd.Parameters.AddWithValue("@cylinders", "[\"" + number.Trim() + "\"]");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Inserted successfully.');", true);
                }
                else
                {
                    List<string> CylinderNo = acceptedCylinder.Replace("[", "").Replace("]", "").Replace("\"", "").Split(',').ToList();
                    CylinderNo.Add(number);
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET cylinders=@cylinders where pid='" + pid + "'", con))
                    {
                        cmd.Parameters.AddWithValue("@cylinders", "[\"" + string.Join("\",\"", CylinderNo.Distinct()) + "\"]");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Updated Successfully.');", true);
                }
            }
            else
            {
                if (!string.IsNullOrEmpty(acceptedCylinder))
                {
                    List<string> CylinderNo = acceptedCylinder.Replace("[", "").Replace("]", "").Replace("\"", "").Split(',').ToList();
                    CylinderNo.Remove(number);
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET cylinders=@cylinders where pid='" + pid + "' ", con))
                    {
                        cmd.Parameters.AddWithValue("@cylinders", CylinderNo.Distinct().Count() > 0 ? "[\"" + string.Join("\",\"", CylinderNo.Distinct()) + "\"]" : "[]");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Deleted Successfully.');", true);
                }
            }
        }
    }

    private string GetAcceptedCylinder(string pid)
    {
        string acceptCylinder = "";
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT cylinders FROM issuesheet WHERE pid=@pid ";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@pid", Label27.Text);
                con.Open();
                acceptCylinder = Convert.ToString(cmd.ExecuteScalar());
                con.Close();
            }
        }

        return acceptCylinder;
    }
 protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {

    if (e.Row.RowType == DataControlRowType.DataRow)
        {
            float cid = (float)Convert.ToDouble(e.Row.Cells[7].Text);
            string id = Label27.Text;
            string[] cylinders = GetAcceptedCylinder(id).Replace("[", "").Replace("]", "").Split(',');
            CheckBox chkSelect = e.Row.FindControl("chkSelect") as CheckBox;
            if (cylinders.Contains("'" + e.Row.Cells[2].Text + "'"))
            {
                chkSelect.Checked = true;
            }
            else
            {
                chkSelect.Checked = false;
            }
            TableCell statusCell = e.Row.Cells[11];
            if (cid > 1)
            {
                statusCell.Text = "Used";
            }
            else
            {
                statusCell.Text = "New";
            }
  // e.Row.Cells[5].Text = Convert.ToDateTime(e.Row.Cells[5].Text).ToString("dd/MM/yyyy");
    
    // e.Row.Cells[5].Text = Convert.ToDateTime(e.Row.Cells[5].Text).ToString("dd/MM/yyyy");



        string _date = e.Row.Cells[5].Text;
        DateTime dt;
        if (DateTime.TryParse(_date, out dt))
        {
            e.Row.Cells[5].Text = dt.ToString("dd/MM/yyyy");
        }
        else if (DateTime.TryParse(_date, CultureInfo.CreateSpecificCulture("en-US"), DateTimeStyles.None, out dt))
        {
            e.Row.Cells[5].Text = dt.ToString("dd/MM/yyyy");
        }


        }
}

    protected void OnRowDataBound2(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string id = Label27.Text;
            string[] dies = GetAcceptedDies(id).Replace("[", "").Replace("]", "").Split(',');
            CheckBox chkSelect02 = e.Row.FindControl("chkSelect02") as CheckBox;
            if (dies.Contains("'" + e.Row.Cells[1].Text + "'"))
            {
                chkSelect02.Checked = true;
            }
            else
            {
                chkSelect02.Checked = false;
            }

           
          string _date = e.Row.Cells[12].Text;
        DateTime dt;
        if (DateTime.TryParse(_date, out dt))
        {
            e.Row.Cells[12].Text = dt.ToString("dd/MM/yyyy");
        }
        else if (DateTime.TryParse(_date, CultureInfo.CreateSpecificCulture("en-US"), DateTimeStyles.None, out dt))
        {
            e.Row.Cells[12].Text = dt.ToString("dd/MM/yyyy");
        }


        }
        
    }
    protected void OnRowDataBound1(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string id = Label27.Text;
            string[] embossings = GetAcceptedEmbossings(id).Replace("[", "").Replace("]", "").Split(',');
            CheckBox chkSelect01 = e.Row.FindControl("chkSelect01") as CheckBox;
            if (embossings.Contains("'" + e.Row.Cells[1].Text + "'"))
            {
                chkSelect01.Checked = true;
            }
            else
            {
                chkSelect01.Checked = false;
            }

             string _date = e.Row.Cells[5].Text;
        DateTime dt;
        if (DateTime.TryParse(_date, out dt))
        {
            e.Row.Cells[5].Text = dt.ToString("dd/MM/yyyy");
        }
        else if (DateTime.TryParse(_date, CultureInfo.CreateSpecificCulture("en-US"), DateTimeStyles.None, out dt))
        {
            e.Row.Cells[5].Text = dt.ToString("dd/MM/yyyy");
        }


        
        }
    }
    protected void OnChckedChanged2(object sender, EventArgs e)
    {
        CheckBox chk2 = (CheckBox)sender;
        GridViewRow row = (GridViewRow)chk2.NamingContainer;

        string number = row.Cells[1].Text;
        string pid = Label27.Text;

        string constring = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constring))
        {
            string acceptedDies = GetAcceptedDies(pid);
            if (chk2.Checked)
            {
                if (acceptedDies == "[]")
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET dies=@dies where pid='" + pid + "'", con))
                    {
                        cmd.Parameters.AddWithValue("@dies", "['" + number.Trim() + "']");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Inserted successfully.');", true);
                }
                else
                {
                    List<string> DiesNo = acceptedDies.Replace("[", "").Replace("]", "").Replace("'", "").Split(',').ToList();
                    DiesNo.Add(number);
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET dies=@dies where pid='" + pid + "'", con))
                    {
                        cmd.Parameters.AddWithValue("@dies", "['" + string.Join("','", DiesNo.Distinct()) + "']");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Updated Successfully.');", true);
                }
            }
            else
            {
                if (!string.IsNullOrEmpty(acceptedDies))
                {
                    List<string> DiesNo = acceptedDies.Replace("[", "").Replace("]", "").Replace("'", "").Split(',').ToList();
                    DiesNo.Remove(number);
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET dies=@dies where pid='" + pid + "' ", con))
                    {
                        cmd.Parameters.AddWithValue("@Dies", DiesNo.Distinct().Count() > 0 ? "['" + string.Join("','", DiesNo.Distinct()) + "']" : "[]");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Deleted Successfully.');", true);
                }
            }
        }
    }

    private string GetAcceptedDies(string pid)
    {
        string acceptDies = "";
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT dies FROM issuesheet WHERE pid=@pid ";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@pid", Label27.Text);
                con.Open();
                acceptDies = Convert.ToString(cmd.ExecuteScalar());
                con.Close();
            }
        }

        return acceptDies;
    }

    protected void OnChckedChanged1(object sender, EventArgs e)
    {
        CheckBox chk2 = (CheckBox)sender;
        GridViewRow row = (GridViewRow)chk2.NamingContainer;

        string number = row.Cells[1].Text;
        string pid = Label27.Text;

        string constring = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constring))
        {
            string acceptedEmbossings = GetAcceptedEmbossings(pid);
            if (chk2.Checked)
            {
                if (acceptedEmbossings == "[]")
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET embossings = @embossings where pid='" + pid + "'", con))
                    {
                        cmd.Parameters.AddWithValue("@embossings", "['" + number.Trim() + "']");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Inserted successfully.');", true);
                }
                else
                {
                    List<string> EmbossingsNo = acceptedEmbossings.Replace("[", "").Replace("]", "").Replace("'", "").Split(',').ToList();
                    EmbossingsNo.Add(number);
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET embossings = @embossings where pid='" + pid + "'", con))
                    {
                        cmd.Parameters.AddWithValue("@embossings", "['" + string.Join("','", EmbossingsNo.Distinct()) + "']");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Updated Successfully.');", true);
                }
            }
            else
            {
                if (!string.IsNullOrEmpty(acceptedEmbossings))
                {
                    List<string> EmbossingsNo = acceptedEmbossings.Replace("[", "").Replace("]", "").Replace("'", "").Split(',').ToList();
                    EmbossingsNo.Remove(number);
                    using (SqlCommand cmd = new SqlCommand("UPDATE issuesheet SET embossings = @embossings where pid='" + pid + "' ", con))
                    {
                        cmd.Parameters.AddWithValue("@Embossings", EmbossingsNo.Distinct().Count() > 0 ? "['" + string.Join("','", EmbossingsNo.Distinct()) + "']" : "[]");
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Record Deleted Successfully.');", true);
                }
            }
        }
    }

    private string GetAcceptedEmbossings(string pid)
    {
        string acceptEmbossings = "";
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT Embossings FROM issuesheet WHERE pid=@pid ";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@pid", Label27.Text);
                con.Open();
                acceptEmbossings = Convert.ToString(cmd.ExecuteScalar());
                con.Close();
            }
        }

        return acceptEmbossings;
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