

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

using System.IO;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;

using System.Globalization;


public partial class IssueSheet1 : System.Web.UI.Page
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

                    //Response.Write(Label26.Text);
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

            BindUserDetails();
            BindUserDetails1();
            BindUserDetails2();
            BindUserDetails3();

            Label30.Text = DateTime.Today.ToString("MM/dd/yyyy", CultureInfo.InvariantCulture);
           
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
                {  Label1.Text = dr1["workdocket"].ToString();
                      Session["wd"] = dr1["workdocket"].ToString();
                    Label2.Text = dr1["pid"].ToString();
                    Label3.Text = dr1["pack"].ToString();
                    Label4.Text = dr1["customer"].ToString();
                     //Label5.Text = dr1["date"].ToString();
                   Label6.Text = dr1["orderqty"].ToString();
                   Label7.Text = dr1["machine"].ToString();
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
                   
                  //  Response.Write(Session["yields"]);
                    Label22.Text = dr1["qtyaround"].ToString();
                    Label23.Text = dr1["qtyacross"].ToString();
                    Label24.Text = dr1["qtyperrevolution"].ToString();
                    Session["qpr"] = dr1["qtyperrevolution"].ToString();


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



    protected void BindUserDetails1()
    {
        string constr1 = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con1 = new SqlConnection(constr1))
        {
            using (SqlDataAdapter sda1 = new SqlDataAdapter(" SELECT  distinct j.pid, j.Description, s.no,s.totalrev, js.id,js.posino,js.Colour,s.qtyprod,s.lastprod,js.screen,js.depth,js.circumference ,o.deliverydate,o.supplier FROM Stock s INNER JOIN Job j ON j.Id = s.pid inner join orders o  on  o.orderid =s.orderid INNER JOIN (SELECT id,posino,colour,screen,depth,circumference FROM job_cylinder WHERE posino IN (SELECT posino FROM job_cylinder WHERE pid = '" + Label27.Text + "') AND PosiNo <> '') js ON js.id = s.typeid  where s.type='3' and s.active='1' ", con1))
            {

                // Response.Write(sda1);
                using (DataTable dt1 = new DataTable())
                {
                    sda1.Fill(dt1);
                    avDetails.DataSource = dt1;
                    avDetails.DataSource = dt1;
                    avDetails.DataBind();
                }
            }
        }

        //Required for jQuery DataTables to work.
        if (avDetails.Rows.Count > 0)
        {
            avDetails.UseAccessibleHeader = true;
            avDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }

    protected void BindUserDetails2()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con2 = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda2 = new SqlDataAdapter("SELECT  distinct s.no,e.embid, e.mandrel, e.type,e.circmale,e.circfemale,e.diameter,e.supplier,j.pid,s.lastprod,s.qtyprod,s.totalrev  FROM stock s   INNER JOIN Job j ON j.Id = s.pid inner  join (SELECT id, embid, mandrel, type,circmale,circfemale,diameter,supplier FROM job_emboss WHERE embid IN (SELECT embid FROM job_emboss WHERE id ='" + Label25.Text + "') AND embid <> '') e ON e.id = s.typeid  where s.type='6' and s.active='1'   ", con2))
            {

                // Response.Write(sda);
                using (DataTable dt2 = new DataTable())
                {
                    sda2.Fill(dt2);
                    bvDetails.DataSource = dt2;
                    bvDetails.DataSource = dt2;
                    bvDetails.DataBind();
                }
            }
        }
    }
    protected void BindUserDetails3()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con3 = new SqlConnection(constr))
        {
            using (SqlDataAdapter sda3 = new SqlDataAdapter("SELECT  distinct  s.no,d.dieno,d.templateno,d.model,d.type,d.brassfemaleembossin,d.brassmaleembossing,d.supplier,d.lcutterlength,d.lcutterwidth,d.noofrerule,s.lastprod,s.qtyprod,s.totalrev,o.deliverydate  from stock s   INNER JOIN Job j ON j.Id = s.pid inner join orders o  on  o.orderid =s.orderid inner  join (SELECT id,dieno,templateno,model,type,brassfemaleembossin,brassmaleembossing,supplier,lcutterlength,lcutterwidth,noofrerule FROM job_die WHERE dieno IN (SELECT dieno FROM job_die WHERE id ='" + Label26.Text + "') AND dieno <> '') d ON d.id = s.typeid  where s.type='4' and s.active='1'", con3))
            {

                // Response.Write(sda);
                using (DataTable dt3 = new DataTable())
                {
                    sda3.Fill(dt3);
                    dvDetails2.DataSource = dt3;
                    dvDetails2.DataSource = dt3;
                    dvDetails2.DataBind();
                }
            }
        }

        //Required for jQuery DataTables to work.
        if (dvDetails2.Rows.Count > 0)
        {
            dvDetails2.UseAccessibleHeader = true;
            dvDetails2.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
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
                Document pdfDoc = new Document(PageSize.A3, 0f, 0f, 0f, 0f);
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

        GridViewRow row = (sender as TextBox).NamingContainer as GridViewRow;
        string inp  = (row.FindControl("txtcomment1") as TextBox).Text.Trim();
        Session["inp1"] =  inp;
        string name = row.Cells[0].Text;
       // ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + name + "')", true);

        selectSQL = " select Top 1 *  from   docket where base_no='" + name + "'  and docket_no ='" + Session["wd"] + "' order by   id desc  ";
        dbConn1.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;
        try
        {
            dbConn1.Open();
           // Response.Write(selectSQL);
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {

                Session["tq"] = dr1["total_qty"].ToString();
                Session["oq"] = dr1["order_qty"].ToString();

                double tq = Convert.ToDouble(Session["tq"]);
                double oq = Convert.ToDouble(Session["oq"]);
                double input = Convert.ToDouble(Session["inp1"]);
                double  rev1 = Convert.ToDouble(Session["qpr"]);


                double tq1 = tq + input;
                double oq1 = oq + input;
                double yi = tq1 / rev1;

           // Response.Write(yi);
                string insertSQL;
                insertSQL = "INSERT INTO  docket (";
                insertSQL += "docket_no,type,product_code,base_no,description,order_qty,total_qty,date )";
                insertSQL += "VALUES('";
                insertSQL += Label1.Text + "','";
                insertSQL += 3 + "','";
                insertSQL += Label27.Text + "','";
                insertSQL += name  + "','";
                
                insertSQL += Label11.Text + "','";
                insertSQL += oq1 + "','";
                insertSQL += tq1 + "','";

                insertSQL += Label30.Text + "')";




                String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con67 = new SqlConnection(connectionString);
                SqlCommand cmd67 = new SqlCommand(insertSQL, con67);
                int added67 = 0;

                try
                {
                    con67.Open();
                 // Response.Write(insertSQL);


                    added67 = cmd67.ExecuteNonQuery();


                    //  Label007.Text = added.ToString();


                    if (added67 == 1)
                    {
                        inp = "";
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
                string updateSQL;
                updateSQL = "update stock  set qtyprod ='" + tq1 + "' , lastprod ='" + oq1+ "' ,totalrev='" + yi + "'  where no='" + name + "' and active ='1' ";

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

           }
            else
            {
                double input1 = Convert.ToDouble(Session["inp1"]);
               
                string insertSQL;
                insertSQL = "INSERT INTO  docket (";
                insertSQL += "docket_no,type,product_code,base_no,description,order_qty,total_qty,date )";
                insertSQL += "VALUES('";
                insertSQL += Label1.Text + "','";
                insertSQL += 3 + "','";
                insertSQL += Label27.Text + "','";
                insertSQL += name + "','";

                insertSQL += Label11.Text + "','";
                insertSQL += input1 + "','";
                insertSQL += input1 + "','";

                insertSQL += Label30.Text + "')";




                String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con67 = new SqlConnection(connectionString);
                SqlCommand cmd67 = new SqlCommand(insertSQL, con67);
                int added67 = 0;

                try
                {
                    con67.Open();
                   // Response.Write(insertSQL);


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
                    inp = "";
                }

                double yield1 = Convert.ToDouble(Session["qpr"]);
                double yi1 = input1 / yield1;

                string updateSQL;
                updateSQL = "update stock  set qtyprod ='" + input1 + "' , lastprod ='" + input1 + "' ,totalrev='" + yi1 + "'  where no='" + name + "' and active ='1' ";

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


        BindUserDetails1();


    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

        GridViewRow row = (sender as TextBox).NamingContainer as GridViewRow;
        string inp = (row.FindControl("txtcomment2") as TextBox).Text.Trim();
        Session["inp1"] = inp;
        string name1 = row.Cells[0].Text;
        // ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + name + "')", true);

        selectSQL = " select Top 1 *  from   docket where base_no='" + name1 + "' and docket_no ='" + Session["wd"] + "' order by   id desc  ";
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

                Session["tq"] = dr1["total_qty"].ToString();
                Session["oq"] = dr1["order_qty"].ToString();

                double tq = Convert.ToDouble(Session["tq"]);
                double oq = Convert.ToDouble(Session["oq"]);
                double input = Convert.ToDouble(Session["inp1"]);
                double rev1 = Convert.ToDouble(Session["qpr"]);




                double tq1 = tq + input;
                double oq1 = oq + input;
                double yi = tq1 / rev1;

                //Response.Write(yi);
                string insertSQL;
                insertSQL = "INSERT INTO  docket (";
                insertSQL += "docket_no,type,product_code,base_no,description,order_qty,total_qty,date )";
                insertSQL += "VALUES('";
                insertSQL += Label1.Text + "','";
                insertSQL += 6 + "','";
                insertSQL += Label27.Text + "','";
                insertSQL += name1 + "','";

                insertSQL += Label11.Text + "','";
                insertSQL += oq1 + "','";
                insertSQL += tq1 + "','";

                insertSQL += Label30.Text + "')";




                String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con67 = new SqlConnection(connectionString);
                SqlCommand cmd67 = new SqlCommand(insertSQL, con67);
                int added67 = 0;

                try
                {
                    con67.Open();
                    // Response.Write(insertSQL);


                    added67 = cmd67.ExecuteNonQuery();


                    //  Label007.Text = added.ToString();


                    if (added67 == 1)
                    {
                        inp = "";
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
                string updateSQL;
                updateSQL = "update stock  set qtyprod ='" + tq1 + "' , lastprod ='" + oq1 + "' ,totalrev='" + yi + "'  where no='" + name1 + "' and active ='1' ";

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

            }
            else
            {
                double input1 = Convert.ToDouble(Session["inp1"]);

                string insertSQL;
                insertSQL = "INSERT INTO  docket (";
                insertSQL += "docket_no,type,product_code,base_no,description,order_qty,total_qty,date )";
                insertSQL += "VALUES('";
                insertSQL += Label1.Text + "','";
                insertSQL += 3 + "','";
                insertSQL += Label27.Text + "','";
                insertSQL += name1 + "','";

                insertSQL += Label11.Text + "','";
                insertSQL += input1 + "','";
                insertSQL += input1 + "','";

                insertSQL += Label30.Text + "')";




                String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con67 = new SqlConnection(connectionString);
                SqlCommand cmd67 = new SqlCommand(insertSQL, con67);
                int added67 = 0;

                try
                {
                    con67.Open();
                    // Response.Write(insertSQL);


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
                    inp = "";
                }

                double yield1 = Convert.ToDouble(Session["qpr"]);
                double yi1 = input1 / yield1;

                string updateSQL;
                updateSQL = "update stock  set qtyprod ='" + input1 + "' , lastprod ='" + input1 + "' ,totalrev='" + yi1 + "'  where no='" + name1 + "' and active ='1' ";

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


        BindUserDetails2();


    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        GridViewRow row = (sender as TextBox).NamingContainer as GridViewRow;
        string inp = (row.FindControl("txtcomment3") as TextBox).Text.Trim();
        Session["inp1"] = inp;
        string name2= row.Cells[0].Text;
        // ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + name + "')", true);

        selectSQL = " select Top 1 *  from   docket where base_no='" + name2 + "'and docket_no ='" + Session["wd"] + "' order by   id desc  ";
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

                Session["tq"] = dr1["total_qty"].ToString();
                Session["oq"] = dr1["order_qty"].ToString();

                double tq = Convert.ToDouble(Session["tq"]);
                double oq = Convert.ToDouble(Session["oq"]);
                double input = Convert.ToDouble(Session["inp1"]);
                double rev1 = Convert.ToDouble(Session["qpr"]);


                double tq1 = tq + input;
                double oq1 = oq + input;
                double yi = tq1 / rev1;

                //Response.Write(yi);
                string insertSQL;
                insertSQL = "INSERT INTO  docket (";
                insertSQL += "docket_no,type,product_code,base_no,description,order_qty,total_qty,date )";
                insertSQL += "VALUES('";
                insertSQL += Label1.Text + "','";
                insertSQL += 6 + "','";
                insertSQL += Label27.Text + "','";
                insertSQL += name2 + "','";

                insertSQL += Label11.Text + "','";
                insertSQL += oq1 + "','";
                insertSQL += tq1 + "','";

                insertSQL += Label30.Text + "')";




                String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con67 = new SqlConnection(connectionString);
                SqlCommand cmd67 = new SqlCommand(insertSQL, con67);
                int added67 = 0;

                try
                {
                    con67.Open();
                    // Response.Write(insertSQL);


                    added67 = cmd67.ExecuteNonQuery();


                    //  Label007.Text = added.ToString();


                    if (added67 == 1)
                    {
                        inp = "";
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
                string updateSQL;
                updateSQL = "update stock  set qtyprod ='" + tq1 + "' , lastprod ='" + oq1 + "' ,totalrev='" + yi + "'  where no='" + name2 + "' and active ='1' ";

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

            }
            else
            {
                double input1 = Convert.ToDouble(Session["inp1"]);

                string insertSQL;
                insertSQL = "INSERT INTO  docket (";
                insertSQL += "docket_no,type,product_code,base_no,description,order_qty,total_qty,date )";
                insertSQL += "VALUES('";
                insertSQL += Label1.Text + "','";
                insertSQL += 3 + "','";
                insertSQL += Label27.Text + "','";
                insertSQL += name2 + "','";

                insertSQL += Label11.Text + "','";
                insertSQL += input1 + "','";
                insertSQL += input1 + "','";

                insertSQL += Label30.Text + "')";




                String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con67 = new SqlConnection(connectionString);
                SqlCommand cmd67 = new SqlCommand(insertSQL, con67);
                int added67 = 0;

                try
                {
                    con67.Open();
                    // Response.Write(insertSQL);


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
                    inp = "";
                }

                double yield1 = Convert.ToDouble(Session["qpr"]);
                double yi1 = input1 / yield1;

                string updateSQL;
                updateSQL = "update stock  set qtyprod ='" + input1 + "' , lastprod ='" + input1 + "' ,totalrev='" + yi1 + "'  where no='" + name2 + "' and active ='1' ";

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
        BindUserDetails3();
    }






    protected void OnChckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = (CheckBox)sender;
        GridViewRow row = (GridViewRow)chk.NamingContainer;

        string number = row.Cells[0].Text;
        string pid = Label27.Text;
        if (chk.Checked)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "UPDATE stock  SET  active='0' WHERE no='"+ number+ "'  and active='1' ";

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@no", number);
                    cmd.Parameters.AddWithValue("@active", 0);

                    con.Open();

                  
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        else
        {

        }
        BindUserDetails1();
    }
    protected void OnChckedChanged1(object sender, EventArgs e)
    {
        CheckBox chk2 = (CheckBox)sender;
        GridViewRow row = (GridViewRow)chk2.NamingContainer;

        string number1 = row.Cells[0].Text;
        string pid = Label27.Text;
        if (chk2.Checked)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "UPDATE stock  SET  active='0' WHERE no='" + number1 + "'  and active='1' ";

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@no", number1);
                    cmd.Parameters.AddWithValue("@active", 0);

                    con.Open();


                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        else
        {

        }
        BindUserDetails2();
    }
    protected void OnChckedChanged2(object sender, EventArgs e)
    {
        CheckBox chk2 = (CheckBox)sender;
        GridViewRow row = (GridViewRow)chk2.NamingContainer;

        string number2 = row.Cells[0].Text;
        string pid = Label27.Text;
        if (chk2.Checked)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "UPDATE stock  SET  active='0' WHERE no='" + number2 + "'  and active='1' ";

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@no", number2);
                    cmd.Parameters.AddWithValue("@active", 0);

                    con.Open();


                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        else
        {

        }
        BindUserDetails3();
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