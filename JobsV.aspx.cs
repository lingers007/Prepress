
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

using System.Web.Services;

public partial class  JobsV : System.Web.UI.Page
{

    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd40 = new SqlCommand();
    SqlCommand cmd41 = new SqlCommand();
    SqlCommand cmd42 = new SqlCommand();
    SqlCommand cmd43 = new SqlCommand();
    SqlCommand cmd44 = new SqlCommand();
    SqlCommand cmd45 = new SqlCommand();
    SqlCommand cmd46 = new SqlCommand();
    SqlCommand cmd47 = new SqlCommand();
    SqlCommand cmd48 = new SqlCommand();
    SqlCommand cmd49 = new SqlCommand();
    SqlCommand cmd50 = new SqlCommand();
    SqlCommand cmd51 = new SqlCommand();
    SqlCommand cmd52 = new SqlCommand();
    SqlCommand cmd53 = new SqlCommand();
    SqlCommand cmd54 = new SqlCommand();
    SqlCommand cmd55 = new SqlCommand();
    SqlCommand cmd56 = new SqlCommand();
    SqlCommand cmd57 = new SqlCommand();
    SqlCommand cmd58 = new SqlCommand();
    SqlCommand cmd59 = new SqlCommand();
    SqlCommand cmd60 = new SqlCommand();
    SqlCommand cmd61 = new SqlCommand();
    SqlCommand cmd63 = new SqlCommand();

    SqlCommand cmd13 = new SqlCommand();
    SqlCommand cmd14 = new SqlCommand();
    SqlCommand cmd15 = new SqlCommand();
    SqlCommand cmd16 = new SqlCommand();
    SqlCommand cmd17 = new SqlCommand();
    SqlCommand cmd18 = new SqlCommand();
    SqlCommand cmd19 = new SqlCommand();
    SqlCommand cmd20 = new SqlCommand();
    SqlCommand cmd21 = new SqlCommand();
    SqlCommand cmd22 = new SqlCommand();
    SqlCommand cmd23 = new SqlCommand();
    SqlCommand cmd24 = new SqlCommand();
    SqlCommand cmd25 = new SqlCommand();
    SqlCommand cmd26 = new SqlCommand();







    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd11 = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd12 = new SqlCommand();


    SqlCommand cmd67 = new SqlCommand();
    SqlCommand cmd68 = new SqlCommand();
    SqlCommand cmd72 = new SqlCommand();
    SqlCommand cmd73 = new SqlCommand();
    SqlCommand cmd74 = new SqlCommand();
    SqlCommand cmd75 = new SqlCommand();
    SqlCommand cmd76 = new SqlCommand();
    SqlCommand cmd77 = new SqlCommand();
    SqlCommand cmd78 = new SqlCommand();
    SqlCommand cmd79 = new SqlCommand();

    SqlConnection dbConn67 = new SqlConnection();
    SqlConnection dbConn68 = new SqlConnection();
    SqlConnection dbConn72 = new SqlConnection();
    SqlConnection dbConn73 = new SqlConnection();
    SqlConnection dbConn74 = new SqlConnection();
    SqlConnection dbConn75 = new SqlConnection();
    SqlConnection dbConn76 = new SqlConnection();
    SqlConnection dbConn77 = new SqlConnection();
    SqlConnection dbConn78 = new SqlConnection();
    SqlConnection dbConn79 = new SqlConnection();
    SqlConnection dbConn12 = new SqlConnection();
    SqlConnection dbConn11 = new SqlConnection();
    SqlConnection dbConn13 = new SqlConnection();
    SqlConnection dbConn14 = new SqlConnection();
    SqlConnection dbConn15 = new SqlConnection();
    SqlConnection dbConn16 = new SqlConnection();
    SqlConnection dbConn17 = new SqlConnection();
    SqlConnection dbConn18 = new SqlConnection();
    SqlConnection dbConn19 = new SqlConnection();
    SqlConnection dbConn20 = new SqlConnection();
    SqlConnection dbConn21 = new SqlConnection();
    SqlConnection dbConn22 = new SqlConnection();
    SqlConnection dbConn23 = new SqlConnection();
    SqlConnection dbConn24 = new SqlConnection();
    SqlConnection dbConn25 = new SqlConnection();
    SqlConnection dbConn26 = new SqlConnection();
    SqlConnection dbConn27 = new SqlConnection();
    SqlConnection dbConn28 = new SqlConnection();
    SqlConnection dbConn29 = new SqlConnection();
    SqlConnection dbConn40 = new SqlConnection();
    SqlConnection dbConn41 = new SqlConnection();
    SqlConnection dbConn42 = new SqlConnection();
    SqlConnection dbConn43 = new SqlConnection();
    SqlConnection dbConn44 = new SqlConnection();
    SqlConnection dbConn45 = new SqlConnection();
    SqlConnection dbConn46 = new SqlConnection();
    SqlConnection dbConn47 = new SqlConnection();
    SqlConnection dbConn48 = new SqlConnection();
    SqlConnection dbConn49 = new SqlConnection();
    SqlConnection dbConn50 = new SqlConnection();
    SqlConnection dbConn51 = new SqlConnection();
    SqlConnection dbConn52 = new SqlConnection();
    SqlConnection dbConn53 = new SqlConnection();
    SqlConnection dbConn54 = new SqlConnection();
    SqlConnection dbConn55 = new SqlConnection();
    SqlConnection dbConn56 = new SqlConnection();
    SqlConnection dbConn57 = new SqlConnection();
    SqlConnection dbConn58 = new SqlConnection();
    SqlConnection dbConn59 = new SqlConnection();
    SqlConnection dbConn60 = new SqlConnection();
    SqlConnection dbConn61 = new SqlConnection();

    SqlConnection dbConn3 = new SqlConnection();
    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
    SqlDataReader dr, dr2, dr1, dr3, dr11, dr12, dr13, dr14, dr15, dr16, dr17, dr18, dr19, dr20, dr21, dr22, dr23, dr24, dr25, dr26, dr27, dr28, dr40, dr41, dr42, dr43, dr44, dr45, dr46, dr47, dr48, dr49, dr50, dr51, dr52, dr53, dr54, dr56, dr57, dr58, dr59, dr60, dr6, dr62, dr67, dr68, dr72, dr73, dr74, dr75, dr76, dr77, dr78, dr79;
    string selectSQL, updateSQL, selectSQL1;
 
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

//Response.Write(Session["privilege"]);
        if (!IsPostBack)
        {

            BindDummyRow();
        }


        MainView.ActiveViewIndex = 0;
        MainView2.ActiveViewIndex = 0;

                 int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;

 
    }




protected void gvDetails_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button lnkView1 = (e.Row.FindControl("lnkView1") as Button);
   Button lnkView = (e.Row.FindControl("lnkView") as Button);
            if (Convert.ToInt32(Session["privilege"]) == 2)
            {
                HyperLink1.Enabled = false;
                HyperLink2.Enabled = false;
                HyperLink3.Enabled = false;
                HyperLink4.Enabled = false;
                HyperLink5.Enabled = false;
                HyperLink6.Enabled = false;
                lnkView1.Enabled = false;
              lnkView.Enabled = true;
                ImageButton3.Enabled = false;
                ImageButton4.Enabled = false;
                ImageButton5.Enabled = false;

            }
            else  if (Convert.ToInt32(Session["privilege"]) == 4)
            {
                HyperLink1.Enabled = false;
                HyperLink2.Enabled = false;
                HyperLink3.Enabled = false;
                HyperLink4.Enabled = false;
                HyperLink5.Enabled = false;
                HyperLink6.Enabled = false;
                lnkView1.Enabled = false;
             lnkView.Enabled = true;
                ImageButton3.Enabled = false;
                ImageButton4.Enabled = false;
                ImageButton5.Enabled = false;

            }



            else
            {
               
            }
        }

  if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[1].CssClass = "hiddencol";
        }
        else if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[1].CssClass = "hiddencol";
        }
       else

        {

        }

          
    }



    protected void Tab1_Click(object sender, EventArgs e)
    {

        Tab1.CssClass = "Clicked";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        Tab7.CssClass = "Initial";
        Tab1.Style.Add("background-color", "orange");
        Tab2.Style.Add("background-color", "Silver");
        Tab3.Style.Add("background-color", "Silver");
        Tab4.Style.Add("background-color", "Silver");
        Tab5.Style.Add("background-color", "Silver");
        Tab6.Style.Add("background-color", "Silver");
        Tab7.Style.Add("background-color", "Silver");
        MainView.ActiveViewIndex = 0;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);

        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        con.Close();

        selectSQL = " SELECT * FROM job where id ='" + Session["DatakeyValue"] + "' ";
        dbConn1.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;
        try
        {
            dbConn1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                TextBox7.Text = dr1["pid"].ToString();
                TextBox8.Text = dr1["description"].ToString();
                TextBox9.Text = dr1["variant"].ToString();
                TextBox10.Text = dr1["country"].ToString();
                TextBox11.Text = dr1["pack"].ToString();
                TextBox12.Text = dr1["customer"].ToString();
                TextBox13.Text = dr1["jobnumber"].ToString();
                TextBox14.Text = dr1["templateno"].ToString();
                TextBox15.Text = dr1["artworkdate"].ToString();
                TextBox16.Text = dr1["reprodate"].ToString();
                TextBox17.Text = dr1["artworknumber"].ToString();
                TextBox18.Text = dr1["nampak"].ToString();
                TextBox19.Text = dr1["reproapproveddate"].ToString();
                TextBox20.Text = dr1["artworkreceiveddate"].ToString();
                TextBox21.Text = dr1["yields"].ToString();
                TextBox22.Text = dr1["qtyaround"].ToString();
                TextBox23.Text = dr1["qtyacross"].ToString();
                TextBox24.Text = dr1["stretchdoublecut"].ToString();
                TextBox25.Text = dr1["qtyperrevolution"].ToString();
                TextBox26.Text = dr1["printtype"].ToString();
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
    protected void Tab2_Click(object sender, EventArgs e)
    {


        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Clicked";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        Tab7.CssClass = "Initial";
        Tab2.Style.Add("background-color", "orange");
        Tab1.Style.Add("background-color", "Silver");
        Tab3.Style.Add("background-color", "Silver");
        Tab4.Style.Add("background-color", "Silver");
        Tab5.Style.Add("background-color", "Silver");
        Tab6.Style.Add("background-color", "Silver");
        Tab7.Style.Add("background-color", "Silver");



        MainView.ActiveViewIndex = 1;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        con.Close();

        string selectSQL12;
        selectSQL12 = "SELECT TOP 1 * From (select Top 2 * from job_material  where pid='" + Session["DatakeyValue"] + "' ORDER BY id DESC) x ORDER BY id   ";
        dbConn12.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd12.Connection = dbConn12;
        cmd12.CommandText = selectSQL12;
        cmd12.CommandType = CommandType.Text;

        try
        {
            dbConn12.Open();
            dr12 = cmd12.ExecuteReader();
            if (dr12.Read())
            {
                TextBox27.Text = dr12["boardname"].ToString();
                TextBox28.Text = dr12["materialgsm"].ToString();
                TextBox29.Text = dr12["materialcode"].ToString();
                TextBox30.Text = dr12["materialwebwidth"].ToString();

                TextBox31.Text = dr12["costpersqmeter"].ToString();
            }

            dr12.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn12.Close();
        }



        string selectSQL13;
        selectSQL13 = " SELECT Top 1 * FROM job_material   where pid ='" + Session["DatakeyValue"] + "' order by id desc ";
        dbConn13.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd13.Connection = dbConn13;
        cmd13.CommandText = selectSQL13;
        cmd13.CommandType = CommandType.Text;

        try
        {
            dbConn13.Open();
            dr13 = cmd13.ExecuteReader();
            if (dr13.Read())
            {
                TextBox32.Text = dr13["boardname"].ToString();
                TextBox33.Text = dr13["materialgsm"].ToString();
                TextBox34.Text = dr13["materialcode"].ToString();
                TextBox35.Text = dr13["materialwebwidth"].ToString();

                TextBox36.Text = dr13["costpersqmeter"].ToString();
            }

            dr13.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn13.Close();
        }
    }
    protected void Tab3_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Clicked";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        Tab7.CssClass = "Initial";
        Tab3.Style.Add("background-color", "orange");
        Tab2.Style.Add("background-color", "Silver");
        Tab1.Style.Add("background-color", "Silver");
        Tab4.Style.Add("background-color", "Silver");
        Tab5.Style.Add("background-color", "Silver");
        Tab6.Style.Add("background-color", "Silver");
        Tab7.Style.Add("background-color", "Silver");
        MainView.ActiveViewIndex = 2;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);

        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        Session["use1"] = Convert.ToString(cm.ExecuteScalar());
        con.Close();



        string selectSQL14;
        selectSQL14 = " SELECT * FROM job_cylinder where pid ='" + Session["use1"] + "' and unit='1' ";
        dbConn14.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd14.Connection = dbConn14;
        cmd14.CommandText = selectSQL14;
        cmd14.CommandType = CommandType.Text;

        try
        {
            dbConn14.Open();
            dr14 = cmd14.ExecuteReader();
            if (dr14.Read())
            {
                TextBox46.Text = dr14["posino"].ToString();
                TextBox47.Text = dr14["colour"].ToString();
                TextBox48.Text = dr14["cylinderdiameter"].ToString();
                TextBox49.Text = dr14["circumference"].ToString();
                TextBox50.Text = dr14["printwidth"].ToString();
                TextBox51.Text = dr14["referencecolour"].ToString();
                TextBox52.Text = dr14["cylinderfacewidth"].ToString();
                TextBox53.Text = dr14["roughness"].ToString();
                TextBox54.Text = dr14["screen"].ToString();
                TextBox55.Text = dr14["stylusangle"].ToString();
                TextBox56.Text = dr14["depth"].ToString();
                TextBox57.Text = dr14["cellwallvolume"].ToString();
                TextBox58.Text = dr14["channel"].ToString();
                TextBox59.Text = dr14["engravingtype"].ToString();
                TextBox60.Text = dr14["stretchfactor"].ToString();
                TextBox61.Text = dr14["chromelayerthickness"].ToString();
                TextBox62.Text = dr14["xdiagonal"].ToString();
            }

            dr14.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn14.Close();
        }


        string selectSQL15;
        selectSQL15 = " SELECT * FROM job_cylinder where pid ='" + Session["use1"] + "' and unit='2' ";
        dbConn15.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd15.Connection = dbConn15;
        cmd15.CommandText = selectSQL15;
        cmd15.CommandType = CommandType.Text;

        try
        {
            dbConn15.Open();
            dr15 = cmd15.ExecuteReader();
            if (dr15.Read())
            {
                TextBox63.Text = dr15["posino"].ToString();
                TextBox64.Text = dr15["colour"].ToString();
                TextBox65.Text = dr15["cylinderdiameter"].ToString();
                TextBox66.Text = dr15["circumference"].ToString();
                TextBox67.Text = dr15["printwidth"].ToString();
                TextBox68.Text = dr15["referencecolour"].ToString();
                TextBox69.Text = dr15["cylinderfacewidth"].ToString();
                TextBox70.Text = dr15["roughness"].ToString();
                TextBox71.Text = dr15["screen"].ToString();
                TextBox72.Text = dr15["stylusangle"].ToString();
                TextBox73.Text = dr15["depth"].ToString();
                TextBox74.Text = dr15["cellwallvolume"].ToString();
                TextBox75.Text = dr15["channel"].ToString();
                TextBox76.Text = dr15["engravingtype"].ToString();
                TextBox77.Text = dr15["stretchfactor"].ToString();
                TextBox78.Text = dr15["chromelayerthickness"].ToString();
                TextBox79.Text = dr15["xdiagonal"].ToString();
            }

            dr15.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn15.Close();
        }

        string selectSQL16;
        selectSQL16 = " SELECT * FROM job_cylinder where pid ='" +  Session["use1"] + "' and unit='3' ";
        dbConn16.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd16.Connection = dbConn16;
        cmd16.CommandText = selectSQL16;
        cmd16.CommandType = CommandType.Text;

        try
        {
            dbConn16.Open();
            dr16 = cmd16.ExecuteReader();
            if (dr16.Read())
            {

                TextBox80.Text = dr16["posino"].ToString();
                TextBox81.Text = dr16["colour"].ToString();
                TextBox82.Text = dr16["cylinderdiameter"].ToString();
                TextBox83.Text = dr16["circumference"].ToString();
                TextBox84.Text = dr16["printwidth"].ToString();
                TextBox85.Text = dr16["referencecolour"].ToString();
                TextBox86.Text = dr16["cylinderfacewidth"].ToString();
                TextBox87.Text = dr16["roughness"].ToString();
                TextBox88.Text = dr16["screen"].ToString();
                TextBox89.Text = dr16["stylusangle"].ToString();
                TextBox90.Text = dr16["depth"].ToString();
                TextBox91.Text = dr16["cellwallvolume"].ToString();
                TextBox92.Text = dr16["channel"].ToString();
                TextBox93.Text = dr16["engravingtype"].ToString();
                TextBox94.Text = dr16["stretchfactor"].ToString();
                TextBox95.Text = dr16["chromelayerthickness"].ToString();
                TextBox96.Text = dr16["xdiagonal"].ToString();

            }

            dr16.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn16.Close();
        }



        string selectSQL17;
        selectSQL17 = " SELECT * FROM job_cylinder where pid ='" + Session["use1"] + "' and unit='4' ";
        dbConn17.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd17.Connection = dbConn17;
        cmd17.CommandText = selectSQL17;
        cmd17.CommandType = CommandType.Text;

        try
        {
            dbConn17.Open();
            dr17 = cmd17.ExecuteReader();
            if (dr17.Read())
            {

                TextBox97.Text = dr17["posino"].ToString();
                TextBox98.Text = dr17["colour"].ToString();
                TextBox99.Text = dr17["cylinderdiameter"].ToString();
                TextBox100.Text = dr17["circumference"].ToString();
                TextBox101.Text = dr17["printwidth"].ToString();
                TextBox102.Text = dr17["referencecolour"].ToString();
                TextBox103.Text = dr17["cylinderfacewidth"].ToString();
                TextBox104.Text = dr17["roughness"].ToString();
                TextBox105.Text = dr17["screen"].ToString();
                TextBox106.Text = dr17["stylusangle"].ToString();
                TextBox107.Text = dr17["depth"].ToString();
                TextBox108.Text = dr17["cellwallvolume"].ToString();
                TextBox109.Text = dr17["channel"].ToString();
                TextBox110.Text = dr17["engravingtype"].ToString();
                TextBox111.Text = dr17["stretchfactor"].ToString();
                TextBox112.Text = dr17["chromelayerthickness"].ToString();
                TextBox113.Text = dr17["xdiagonal"].ToString();

            }

            dr17.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn17.Close();
        }

        string selectSQL18;
        selectSQL18 = " SELECT * FROM job_cylinder where pid ='" +  Session["use1"] + "' and unit='5' ";
        dbConn18.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd18.Connection = dbConn18;
        cmd18.CommandText = selectSQL18;
        cmd18.CommandType = CommandType.Text;

        try
        {
            dbConn18.Open();
            dr18 = cmd18.ExecuteReader();
            if (dr18.Read())
            {

                TextBox114.Text = dr18["posino"].ToString();
                TextBox115.Text = dr18["colour"].ToString();
                TextBox116.Text = dr18["cylinderdiameter"].ToString();
                TextBox117.Text = dr18["circumference"].ToString();
                TextBox118.Text = dr18["printwidth"].ToString();
                TextBox119.Text = dr18["referencecolour"].ToString();
                TextBox120.Text = dr18["cylinderfacewidth"].ToString();
                TextBox121.Text = dr18["roughness"].ToString();
                TextBox122.Text = dr18["screen"].ToString();
                TextBox123.Text = dr18["stylusangle"].ToString();
                TextBox124.Text = dr18["depth"].ToString();
                TextBox125.Text = dr18["cellwallvolume"].ToString();
                TextBox126.Text = dr18["channel"].ToString();
                TextBox127.Text = dr18["engravingtype"].ToString();
                TextBox128.Text = dr18["stretchfactor"].ToString();
                TextBox129.Text = dr18["chromelayerthickness"].ToString();
                TextBox130.Text = dr18["xdiagonal"].ToString();

            }

            dr18.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn18.Close();
        }

        string selectSQL19;
        selectSQL19 = " SELECT * FROM job_cylinder where pid ='" +  Session["use1"] + "' and unit='6' ";
        dbConn19.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd19.Connection = dbConn19;
        cmd19.CommandText = selectSQL19;
        cmd19.CommandType = CommandType.Text;

        try
        {
            dbConn19.Open();
            dr19 = cmd19.ExecuteReader();
            if (dr19.Read())
            {

                TextBox131.Text = dr19["posino"].ToString();
                TextBox132.Text = dr19["colour"].ToString();
                TextBox133.Text = dr19["cylinderdiameter"].ToString();
                TextBox134.Text = dr19["circumference"].ToString();
                TextBox135.Text = dr19["printwidth"].ToString();
                TextBox136.Text = dr19["referencecolour"].ToString();
                TextBox137.Text = dr19["cylinderfacewidth"].ToString();
                TextBox138.Text = dr19["roughness"].ToString();
                TextBox139.Text = dr19["screen"].ToString();
                TextBox140.Text = dr19["stylusangle"].ToString();
                TextBox141.Text = dr19["depth"].ToString();
                TextBox142.Text = dr19["cellwallvolume"].ToString();
                TextBox143.Text = dr19["channel"].ToString();
                TextBox144.Text = dr19["engravingtype"].ToString();
                TextBox145.Text = dr19["stretchfactor"].ToString();
                TextBox146.Text = dr19["chromelayerthickness"].ToString();
                TextBox147.Text = dr19["xdiagonal"].ToString();


            }

            dr19.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn19.Close();
        }


        string selectSQL20;
        selectSQL20 = " SELECT * FROM job_cylinder where pid ='" +  Session["use1"] + "' and unit='7' ";
        dbConn20.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd20.Connection = dbConn20;
        cmd20.CommandText = selectSQL20;
        cmd20.CommandType = CommandType.Text;

        try
        {
            dbConn20.Open();
            dr20 = cmd20.ExecuteReader();
            if (dr20.Read())
            {

                TextBox148.Text = dr20["posino"].ToString();
                TextBox149.Text = dr20["colour"].ToString();
                TextBox150.Text = dr20["cylinderdiameter"].ToString();
                TextBox151.Text = dr20["circumference"].ToString();
                TextBox152.Text = dr20["printwidth"].ToString();
                TextBox153.Text = dr20["referencecolour"].ToString();
                TextBox154.Text = dr20["cylinderfacewidth"].ToString();
                TextBox155.Text = dr20["roughness"].ToString();
                TextBox156.Text = dr20["screen"].ToString();
                TextBox157.Text = dr20["stylusangle"].ToString();
                TextBox158.Text = dr20["depth"].ToString();
                TextBox159.Text = dr20["cellwallvolume"].ToString();
                TextBox160.Text = dr20["channel"].ToString();
                TextBox161.Text = dr20["engravingtype"].ToString();
                TextBox162.Text = dr20["stretchfactor"].ToString();
                TextBox163.Text = dr20["chromelayerthickness"].ToString();
                TextBox164.Text = dr20["xdiagonal"].ToString();




            }

            dr20.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn20.Close();
        }





        string selectSQL21;
        selectSQL21 = " SELECT * FROM job_cylinder where pid ='" + Session["use1"] + "' and unit='8' ";
        dbConn21.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd21.Connection = dbConn21;
        cmd21.CommandText = selectSQL21;
        cmd21.CommandType = CommandType.Text;

        try
        {
            dbConn21.Open();
            dr21 = cmd21.ExecuteReader();
            if (dr21.Read())
            {

                TextBox165.Text = dr21["posino"].ToString();
                TextBox166.Text = dr21["colour"].ToString();
                TextBox167.Text = dr21["cylinderdiameter"].ToString();
                TextBox168.Text = dr21["circumference"].ToString();
                TextBox169.Text = dr21["printwidth"].ToString();
                TextBox170.Text = dr21["referencecolour"].ToString();
                TextBox171.Text = dr21["cylinderfacewidth"].ToString();
                TextBox172.Text = dr21["roughness"].ToString();
                TextBox173.Text = dr21["screen"].ToString();
                TextBox174.Text = dr21["stylusangle"].ToString();
                TextBox175.Text = dr21["depth"].ToString();
                TextBox176.Text = dr21["cellwallvolume"].ToString();
                TextBox177.Text = dr21["channel"].ToString();
                TextBox178.Text = dr21["engravingtype"].ToString();
                TextBox179.Text = dr21["stretchfactor"].ToString();
                TextBox180.Text = dr21["chromelayerthickness"].ToString();
                TextBox181.Text = dr21["xdiagonal"].ToString();





            }

            dr21.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn21.Close();
        }


        string selectSQL22;
        selectSQL22 = " SELECT * FROM job_cylinder where pid ='" +  Session["use1"] + "' and unit='9' ";
        dbConn22.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd22.Connection = dbConn22;
        cmd22.CommandText = selectSQL22;
        cmd22.CommandType = CommandType.Text;

        try
        {
            dbConn22.Open();
            dr22 = cmd22.ExecuteReader();
            if (dr22.Read())
            {

                TextBox182.Text = dr22["posino"].ToString();
                TextBox183.Text = dr22["colour"].ToString();
                TextBox184.Text = dr22["cylinderdiameter"].ToString();
                TextBox185.Text = dr22["circumference"].ToString();
                TextBox186.Text = dr22["printwidth"].ToString();
                TextBox187.Text = dr22["referencecolour"].ToString();
                TextBox188.Text = dr22["cylinderfacewidth"].ToString();
                TextBox189.Text = dr22["roughness"].ToString();
                TextBox190.Text = dr22["screen"].ToString();
                TextBox191.Text = dr22["stylusangle"].ToString();
                TextBox192.Text = dr22["depth"].ToString();
                TextBox193.Text = dr22["cellwallvolume"].ToString();
                TextBox194.Text = dr22["channel"].ToString();
                TextBox195.Text = dr22["engravingtype"].ToString();
                TextBox196.Text = dr22["stretchfactor"].ToString();
                TextBox197.Text = dr22["chromelayerthickness"].ToString();
                TextBox198.Text = dr22["xdiagonal"].ToString();






            }

            dr22.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn22.Close();
        }




        string selectSQL23;
        selectSQL23 = " SELECT * FROM job_cylinder where pid ='" +  Session["use1"] + "' and unit='10' ";
        dbConn23.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd23.Connection = dbConn23;
        cmd23.CommandText = selectSQL23;
        cmd23.CommandType = CommandType.Text;

        try
        {
            dbConn23.Open();
            dr23 = cmd23.ExecuteReader();
            if (dr23.Read())
            {
                TextBox199.Text = dr23["posino"].ToString();
                TextBox200.Text = dr23["colour"].ToString();
                TextBox201.Text = dr23["cylinderdiameter"].ToString();
                TextBox202.Text = dr23["circumference"].ToString();
                TextBox203.Text = dr23["printwidth"].ToString();
                TextBox204.Text = dr23["referencecolour"].ToString();
                TextBox205.Text = dr23["cylinderfacewidth"].ToString();
                TextBox206.Text = dr23["roughness"].ToString();
                TextBox207.Text = dr23["screen"].ToString();
                TextBox208.Text = dr23["stylusangle"].ToString();
                TextBox209.Text = dr23["depth"].ToString();
                TextBox210.Text = dr23["cellwallvolume"].ToString();
                TextBox211.Text = dr23["channel"].ToString();
                TextBox212.Text = dr23["engravingtype"].ToString();
                TextBox213.Text = dr23["stretchfactor"].ToString();
                TextBox214.Text = dr23["chromelayerthickness"].ToString();
                TextBox215.Text = dr23["xdiagonal"].ToString();







            }

            dr23.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn23.Close();
        }






    }
    protected void Tab4_Click(object sender, EventArgs e)
    {

        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Clicked";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        Tab7.CssClass = "Initial";
        Tab4.Style.Add("background-color", "orange");
        Tab2.Style.Add("background-color", "Silver");
        Tab1.Style.Add("background-color", "Silver");
        Tab3.Style.Add("background-color", "Silver");
        Tab5.Style.Add("background-color", "Silver");
        Tab6.Style.Add("background-color", "Silver");
        Tab7.Style.Add("background-color", "Silver");
        MainView.ActiveViewIndex = 3;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);


        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        con.Close();






        string selectSQL14;
        selectSQL14 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='1' ";
        dbConn14.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd14.Connection = dbConn14;
        cmd14.CommandText = selectSQL14;
        cmd14.CommandType = CommandType.Text;

        try
        {
            dbConn14.Open();
            dr14 = cmd14.ExecuteReader();
            if (dr14.Read())
            {
                TextBox216.Text = dr14["inkcode"].ToString();
                TextBox217.Text = dr14["inkcoverage"].ToString();
                TextBox218.Text = dr14["description"].ToString();
                TextBox219.Text = dr14["gsm"].ToString();
                TextBox220.Text = dr14["price"].ToString();
                TextBox221.Text = dr14["reducer"].ToString();
                TextBox222.Text = dr14["retarder"].ToString();
                TextBox223.Text = dr14["viscosity"].ToString();
                TextBox224.Text = dr14["mediums"].ToString();
                TextBox225.Text = dr14["toners"].ToString();
                TextBox226.Text = dr14["tonerratio"].ToString();
                TextBox227.Text = dr14["additive"].ToString();
            }

            dr14.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn14.Close();
        }


        string selectSQL15;
        selectSQL15 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='2' ";
        dbConn15.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd15.Connection = dbConn15;
        cmd15.CommandText = selectSQL15;
        cmd15.CommandType = CommandType.Text;

        try
        {
            dbConn15.Open();
            dr15 = cmd15.ExecuteReader();
            if (dr15.Read())
            {


                TextBox233.Text = dr15["inkcode"].ToString();
                TextBox234.Text = dr15["inkcoverage"].ToString();
                TextBox235.Text = dr15["description"].ToString();
                TextBox236.Text = dr15["gsm"].ToString();
                TextBox237.Text = dr15["price"].ToString();
                TextBox238.Text = dr15["reducer"].ToString();
                TextBox239.Text = dr15["retarder"].ToString();
                TextBox240.Text = dr15["viscosity"].ToString();
                TextBox241.Text = dr15["mediums"].ToString();
                TextBox242.Text = dr15["toners"].ToString();
                TextBox243.Text = dr15["tonerratio"].ToString();
                TextBox244.Text = dr15["additive"].ToString();
            }

            dr15.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn15.Close();
        }

        string selectSQL16;
        selectSQL16 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='3' ";
        dbConn16.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd16.Connection = dbConn16;
        cmd16.CommandText = selectSQL16;
        cmd16.CommandType = CommandType.Text;

        try
        {
            dbConn16.Open();
            dr16 = cmd16.ExecuteReader();
            if (dr16.Read())
            {

                TextBox250.Text = dr16["inkcode"].ToString();
                TextBox251.Text = dr16["inkcoverage"].ToString();
                TextBox252.Text = dr16["description"].ToString();
                TextBox253.Text = dr16["gsm"].ToString();
                TextBox254.Text = dr16["price"].ToString();
                TextBox255.Text = dr16["reducer"].ToString();
                TextBox256.Text = dr16["retarder"].ToString();
                TextBox257.Text = dr16["viscosity"].ToString();
                TextBox258.Text = dr16["mediums"].ToString();
                TextBox259.Text = dr16["toners"].ToString();
                TextBox260.Text = dr16["tonerratio"].ToString();
                TextBox261.Text = dr16["additive"].ToString();

            }

            dr16.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn16.Close();
        }



        string selectSQL17;
        selectSQL17 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='4' ";
        dbConn17.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd17.Connection = dbConn17;
        cmd17.CommandText = selectSQL17;
        cmd17.CommandType = CommandType.Text;

        try
        {
            dbConn17.Open();
            dr17 = cmd17.ExecuteReader();
            if (dr17.Read())
            {

                TextBox267.Text = dr17["inkcode"].ToString();
                TextBox268.Text = dr17["inkcoverage"].ToString();
                TextBox269.Text = dr17["description"].ToString();
                TextBox270.Text = dr17["gsm"].ToString();
                TextBox271.Text = dr17["price"].ToString();
                TextBox272.Text = dr17["reducer"].ToString();
                TextBox273.Text = dr17["retarder"].ToString();
                TextBox274.Text = dr17["viscosity"].ToString();
                TextBox275.Text = dr17["mediums"].ToString();
                TextBox276.Text = dr17["toners"].ToString();
                TextBox277.Text = dr17["tonerratio"].ToString();
                TextBox278.Text = dr17["additive"].ToString();

            }

            dr17.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn17.Close();
        }

        string selectSQL18;
        selectSQL18 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='5' ";
        dbConn18.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd18.Connection = dbConn18;
        cmd18.CommandText = selectSQL18;
        cmd18.CommandType = CommandType.Text;

        try
        {
            dbConn18.Open();
            dr18 = cmd18.ExecuteReader();
            if (dr18.Read())
            {


                TextBox284.Text = dr18["inkcode"].ToString();
                TextBox285.Text = dr18["inkcoverage"].ToString();
                TextBox286.Text = dr18["description"].ToString();
                TextBox287.Text = dr18["gsm"].ToString();
                TextBox288.Text = dr18["price"].ToString();
                TextBox289.Text = dr18["reducer"].ToString();
                TextBox290.Text = dr18["retarder"].ToString();
                TextBox291.Text = dr18["viscosity"].ToString();
                TextBox292.Text = dr18["mediums"].ToString();
                TextBox293.Text = dr18["toners"].ToString();
                TextBox294.Text = dr18["tonerratio"].ToString();
                TextBox295.Text = dr18["additive"].ToString();

            }

            dr18.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn18.Close();
        }

        string selectSQL19;
        selectSQL19 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='6' ";
        dbConn19.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd19.Connection = dbConn19;
        cmd19.CommandText = selectSQL19;
        cmd19.CommandType = CommandType.Text;

        try
        {
            dbConn19.Open();
            dr19 = cmd19.ExecuteReader();
            if (dr19.Read())
            {

                TextBox301.Text = dr19["inkcode"].ToString();
                TextBox302.Text = dr19["inkcoverage"].ToString();
                TextBox303.Text = dr19["description"].ToString();
                TextBox304.Text = dr19["gsm"].ToString();
                TextBox305.Text = dr19["price"].ToString();
                TextBox306.Text = dr19["reducer"].ToString();
                TextBox307.Text = dr19["retarder"].ToString();
                TextBox308.Text = dr19["viscosity"].ToString();
                TextBox309.Text = dr19["mediums"].ToString();
                TextBox310.Text = dr19["toners"].ToString();
                TextBox311.Text = dr19["tonerratio"].ToString();
                TextBox312.Text = dr19["additive"].ToString();


            }

            dr19.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn19.Close();
        }


        string selectSQL20;
        selectSQL20 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='7' ";
        dbConn20.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd20.Connection = dbConn20;
        cmd20.CommandText = selectSQL20;
        cmd20.CommandType = CommandType.Text;

        try
        {
            dbConn20.Open();
            dr20 = cmd20.ExecuteReader();
            if (dr20.Read())
            {

                TextBox318.Text = dr20["inkcode"].ToString();
                TextBox319.Text = dr20["inkcoverage"].ToString();
                TextBox320.Text = dr20["description"].ToString();
                TextBox321.Text = dr20["gsm"].ToString();
                TextBox322.Text = dr20["price"].ToString();
                TextBox323.Text = dr20["reducer"].ToString();
                TextBox324.Text = dr20["retarder"].ToString();
                TextBox325.Text = dr20["viscosity"].ToString();
                TextBox326.Text = dr20["mediums"].ToString();
                TextBox327.Text = dr20["toners"].ToString();
                TextBox328.Text = dr20["tonerratio"].ToString();
                TextBox329.Text = dr20["additive"].ToString();





            }

            dr20.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn20.Close();
        }





        string selectSQL21;
        selectSQL21 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='8' ";
        dbConn21.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd21.Connection = dbConn21;
        cmd21.CommandText = selectSQL21;
        cmd21.CommandType = CommandType.Text;

        try
        {
            dbConn21.Open();
            dr21 = cmd21.ExecuteReader();
            if (dr21.Read())
            {




                TextBox335.Text = dr21["inkcode"].ToString();
                TextBox336.Text = dr21["inkcoverage"].ToString();
                TextBox337.Text = dr21["description"].ToString();
                TextBox338.Text = dr21["gsm"].ToString();
                TextBox339.Text = dr21["price"].ToString();
                TextBox340.Text = dr21["reducer"].ToString();
                TextBox341.Text = dr21["retarder"].ToString();
                TextBox342.Text = dr21["viscosity"].ToString();
                TextBox343.Text = dr21["mediums"].ToString();
                TextBox344.Text = dr21["toners"].ToString();
                TextBox345.Text = dr21["tonerratio"].ToString();
                TextBox346.Text = dr21["additive"].ToString();






            }

            dr21.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn21.Close();
        }


        string selectSQL22;
        selectSQL22 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='9' ";
        dbConn22.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd22.Connection = dbConn22;
        cmd22.CommandText = selectSQL22;
        cmd22.CommandType = CommandType.Text;

        try
        {
            dbConn22.Open();
            dr22 = cmd22.ExecuteReader();
            if (dr22.Read())
            {

                TextBox352.Text = dr22["inkcode"].ToString();
                TextBox353.Text = dr22["inkcoverage"].ToString();
                TextBox354.Text = dr22["description"].ToString();
                TextBox355.Text = dr22["gsm"].ToString();
                TextBox356.Text = dr22["price"].ToString();
                TextBox357.Text = dr22["reducer"].ToString();
                TextBox358.Text = dr22["retarder"].ToString();
                TextBox359.Text = dr22["viscosity"].ToString();
                TextBox360.Text = dr22["mediums"].ToString();
                TextBox361.Text = dr22["toners"].ToString();
                TextBox362.Text = dr22["tonerratio"].ToString();
                TextBox363.Text = dr22["additive"].ToString();







            }

            dr22.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn22.Close();
        }




        string selectSQL23;
        selectSQL23 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"]  + "' and unit='10' ";
        dbConn23.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd23.Connection = dbConn23;
        cmd23.CommandText = selectSQL23;
        cmd23.CommandType = CommandType.Text;

        try
        {
            dbConn23.Open();
            dr23 = cmd23.ExecuteReader();
            if (dr23.Read())
            {
              


               TextBox369.Text = dr23["inkcode"].ToString();
                TextBox370.Text = dr23["inkcoverage"].ToString();
                TextBox371.Text = dr23["description"].ToString();
                TextBox372.Text = dr23["gsm"].ToString();
                TextBox373.Text = dr23["price"].ToString();
                TextBox374.Text = dr23["reducer"].ToString();
                TextBox375.Text = dr23["retarder"].ToString();
                TextBox376.Text = dr23["viscosity"].ToString();
                TextBox377.Text = dr23["mediums"].ToString();
                TextBox378.Text = dr23["toners"].ToString();
                TextBox379.Text = dr23["tonerratio"].ToString();
                TextBox380.Text = dr23["additive"].ToString();




            }





            dr23.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
       {
            dbConn23.Close();
        }


        string selectSQL24;
        selectSQL24 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='11' ";
        dbConn24.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd24.Connection = dbConn24;
        cmd24.CommandText = selectSQL24;
        cmd24.CommandType = CommandType.Text;

        try
        {
            dbConn24.Open();
            dr24 = cmd24.ExecuteReader();
            if (dr24.Read())
            {
                TextBox381.Text = dr24["inkcode"].ToString();
                TextBox382.Text = dr24["inkcoverage"].ToString();
                TextBox383.Text = dr24["description"].ToString();
                TextBox384.Text = dr24["gsm"].ToString();
                TextBox385.Text = dr24["price"].ToString();
                TextBox386.Text = dr24["reducer"].ToString();
                TextBox387.Text = dr24["retarder"].ToString();
                TextBox388.Text = dr24["viscosity"].ToString();
                TextBox389.Text = dr24["mediums"].ToString();
                TextBox390.Text = dr24["toners"].ToString();
                TextBox391.Text = dr24["tonerratio"].ToString();
                TextBox392.Text = dr24["additive"].ToString();







            }





            dr24.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn24.Close();
        }




    }
 


 protected void Tab5_Click(object sender, EventArgs e)
    {

        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Clicked";
        Tab6.CssClass = "Initial";
        Tab7.CssClass = "Initial";
        Tab5.Style.Add("background-color", "orange");
        Tab2.Style.Add("background-color", "Silver");
        Tab1.Style.Add("background-color", "Silver");
        Tab3.Style.Add("background-color", "Silver");
        Tab4.Style.Add("background-color", "Silver");
        Tab6.Style.Add("background-color", "Silver");
        Tab7.Style.Add("background-color", "Silver");
        MainView.ActiveViewIndex = 4;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);
        
             int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT embid        FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Labelembos.Text = Convert.ToString(cm.ExecuteScalar());
       Session["Labelembos"] = Labelembos.Text;

        string selectSQL11;
        selectSQL11 = " SELECT * FROM job_emboss where id ='" + Session["Labelembos"] + "' ";
        dbConn11.ConnectionString = " data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";
        cmd11.Connection = dbConn11;
        cmd11.CommandText = selectSQL11;
        cmd11.CommandType = CommandType.Text;

        try
        {
            dbConn11.Open();
            dr11 = cmd11.ExecuteReader();
            if (dr11.Read())
            {
                TextBox393.Text = dr11["embid"].ToString();
                TextBox394.Text = dr11["mandrel"].ToString();
                TextBox395.Text = dr11["type"].ToString();
                TextBox419.Text = dr11["circmale"].ToString();
                TextBox396.Text = dr11["circfemale"].ToString();
                TextBox397.Text = dr11["diameter"].ToString();
                TextBox398.Text = dr11["supplier"].ToString();
                TextBox399.Text = dr11["supplierno"].ToString();
                TextBox400.Text = dr11["depth"].ToString();
                TextBox420.Text = dr11["height"].ToString();
                TextBox401.Text = dr11["artworknumber"].ToString();
                TextBox402.Text = dr11["calyear"].ToString();
                TextBox403.Text = dr11["month"].ToString();
                TextBox404.Text = dr11["datereceived"].ToString();
                TextBox405.Text = dr11["artworkdate"].ToString();
                TextBox421.Text = dr11["country"].ToString();
                TextBox406.Text = dr11["comment"].ToString();
            }

            dr11.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn11.Close();
        }

  con.Close();
    }


    protected void Tab6_Click(object sender, EventArgs e)
    {

        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Clicked";
        Tab7.CssClass = "Initial";
        Tab6.Style.Add("background-color", "orange");
        Tab2.Style.Add("background-color", "Silver");
        Tab1.Style.Add("background-color", "Silver");
        Tab3.Style.Add("background-color", "Silver");
        Tab5.Style.Add("background-color", "Silver");
        Tab4.Style.Add("background-color", "Silver");
        Tab7.Style.Add("background-color", "Silver");
        MainView.ActiveViewIndex = 5;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT diereferneceno FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Labeldie.Text = Convert.ToString(cm.ExecuteScalar());
        Session["Labeldie"]= Labeldie.Text;

        string selectSQL26;
        selectSQL26 = " SELECT * FROM job_die where id ='" +  Session["Labeldie"] + "' ";
        dbConn26.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd26.Connection = dbConn26;
        cmd26.CommandText = selectSQL26;
        cmd26.CommandType = CommandType.Text;

        try
        {
            dbConn26.Open();
            dr26 = cmd26.ExecuteReader();
            if (dr26.Read())
            {
                TextBox407.Text = dr26["dieno"].ToString();
                TextBox408.Text = dr26["templateno"].ToString();
                TextBox409.Text = dr26["model"].ToString();
                TextBox410.Text = dr26["type"].ToString();
                TextBox411.Text = dr26["brassfemaleembossin"].ToString();
                TextBox412.Text = dr26["brassmaleembossing"].ToString();
                TextBox413.Text = dr26["supplier"].ToString();
                TextBox414.Text = dr26["lcutterwidth"].ToString();
                TextBox415.Text = dr26["lcutterlength"].ToString();
                TextBox416.Text = dr26["comment"].ToString();
                TextBox417.Text = dr26["lmacross"].ToString();
                TextBox418.Text = dr26["lmaround"].ToString();
                TextBox422.Text = dr26["caditemidno"].ToString();
                TextBox423.Text = dr26["cadrefno"].ToString();
                TextBox424.Text = dr26["cadnoups"].ToString();
                TextBox425.Text = dr26["cadpackheight"].ToString();
                TextBox426.Text = dr26["cadpackwidth"].ToString();
                TextBox427.Text = dr26["cadpackbreadth"].ToString();
                TextBox428.Text = dr26["caddesignheight"].ToString();
                TextBox429.Text = dr26["caddesignwidth"].ToString();
                TextBox430.Text = dr26["cadgripperwidth"].ToString();
                TextBox431.Text = dr26["cadgripperlenth"].ToString();
                TextBox432.Text = dr26["cadchargenno"].ToString();


            }

            dr26.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn26.Close();
        }

   con.Close();
    }
    protected void Tab7_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        Tab7.CssClass = "Clicked";
        Tab7.Style.Add("background-color", "orange");
        Tab2.Style.Add("background-color", "Silver");
        Tab1.Style.Add("background-color", "Silver");
        Tab3.Style.Add("background-color", "Silver");
        Tab5.Style.Add("background-color", "Silver");
        Tab4.Style.Add("background-color", "Silver");
        Tab6.Style.Add("background-color", "Silver");

        MainView.ActiveViewIndex = 6;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup()", true);

        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
      

        string selectSQL12;
        selectSQL12 = " SELECT * FROM job where id ='" + Session["DatakeyValue"] + "' ";
        dbConn12.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd12.Connection = dbConn12;
        cmd12.CommandText = selectSQL12;
        cmd12.CommandType = CommandType.Text;
        try
        {
            dbConn12.Open();
            dr12 = cmd12.ExecuteReader();
            if (dr12.Read())
            {
                // This columns are in the job table
                TextBox445.Text = dr12["gietzdieref"].ToString();
                TextBox446.Text = dr12["packingperpallet"].ToString();
                TextBox447.Text = dr12["status"].ToString();
                TextBox448.Text = dr12["cadgietzdie"].ToString();
                TextBox449.Text = dr12["hotfoilcoverage"].ToString();
                TextBox450.Text = dr12["blockspersheet"].ToString();
                TextBox451.Text = dr12["blockspercarton"].ToString();
                TextBox452.Text = dr12["foilarea"].ToString();
                TextBox453.Text = dr12["foilsqm"].ToString();
                TextBox454.Text = dr12["sheetlength"].ToString();
                TextBox455.Text = dr12["sheetwidth"].ToString();
            }

            dr12.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn12.Close();
        }
  con.Close();
    }













    protected void Tab9_Click(object sender, EventArgs e)
    {
        Label40.Visible = false;

        Tab9.CssClass = "Clicked";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Initial";
        Tab12.CssClass = "Initial";
        Tab13.CssClass = "Initial";
        Tab14.CssClass = "Initial";
        Tab15.CssClass = "Initial";
        Tab9.Style.Add("background-color", "orange");
        Tab10.Style.Add("background-color", "Silver");
        Tab11.Style.Add("background-color", "Silver");
        Tab12.Style.Add("background-color", "Silver");
        Tab13.Style.Add("background-color", "Silver");
        Tab14.Style.Add("background-color", "Silver");
        Tab15.Style.Add("background-color", "Silver");


        MainView2.ActiveViewIndex = 0;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ScriptManager.RegisterStartupScript((sender as Control), this.GetType(), "Popup", "ShowPopup1();", true);

        selectSQL = " SELECT * FROM job where id ='" + Session["DatakeyValue"] + "' ";
        dbConn1.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;
        try
        {
            dbConn1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                TextBox581.Text = dr1["pid"].ToString();
                TextBox582.Text = dr1["description"].ToString();
                TextBox583.Text = dr1["variant"].ToString();
                TextBox584.Text = dr1["country"].ToString();
                TextBox585.Text = dr1["pack"].ToString();
                TextBox586.Text = dr1["customer"].ToString();
                TextBox587.Text = dr1["jobnumber"].ToString();
                TextBox588.Text = dr1["templateno"].ToString();
                TextBox589.Text = dr1["artworkdate"].ToString();
                TextBox590.Text = dr1["reprodate"].ToString();
                TextBox591.Text = dr1["artworknumber"].ToString();
                TextBox592.Text = dr1["nampak"].ToString();
                TextBox593.Text = dr1["reproapproveddate"].ToString();
                TextBox594.Text = dr1["artworkreceiveddate"].ToString();
                TextBox5941.Text = dr1["yields"].ToString();
                TextBox595.Text = dr1["qtyaround"].ToString();
                TextBox596.Text = dr1["qtyacross"].ToString();
                TextBox597.Text = dr1["stretchdoublecut"].ToString();
                TextBox598.Text = dr1["qtyperrevolution"].ToString();
                TextBox599.Text = dr1["printtype"].ToString();
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
    protected void Tab10_Click(object sender, EventArgs e)
    {
        Label41.Visible = false;

        Tab9.CssClass = "Clicked";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Initial";
        Tab12.CssClass = "Initial";
        Tab13.CssClass = "Initial";
        Tab14.CssClass = "Initial";
        Tab15.CssClass = "Initial";
         Tab10.Style.Add("background-color", "orange");
        Tab9.Style.Add("background-color", "Silver");
        Tab11.Style.Add("background-color", "Silver");
        Tab12.Style.Add("background-color", "Silver");
        Tab13.Style.Add("background-color", "Silver");
        Tab14.Style.Add("background-color", "Silver");
        Tab15.Style.Add("background-color", "Silver");


        MainView2.ActiveViewIndex = 1;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup1()", true);
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
      

        string selectSQL12;
        selectSQL12 = "SELECT TOP 1 * From (select Top 2 * from job_material  where pid='" + Session["DatakeyValue"] + "'  ORDER BY id DESC) x ORDER BY id   ";
        dbConn12.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd12.Connection = dbConn12;
        cmd12.CommandText = selectSQL12;
        cmd12.CommandType = CommandType.Text;

        try
        {
            dbConn12.Open();
            dr12 = cmd12.ExecuteReader();
            if (dr12.Read())
            {
                TextBox600.Text = dr12["boardname"].ToString();
                TextBox601.Text = dr12["materialgsm"].ToString();
                TextBox602.Text = dr12["materialcode"].ToString();
                TextBox603.Text = dr12["materialwebwidth"].ToString();
                TextBox604.Text = dr12["costpersqmeter"].ToString();
            }

            dr12.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn12.Close();
        }



        string selectSQL13;
        selectSQL13 = " SELECT Top 1 * FROM job_material   where pid ='" + Session["DatakeyValue"] + "' order by id desc ";
        dbConn13.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd13.Connection = dbConn13;
        cmd13.CommandText = selectSQL13;
        cmd13.CommandType = CommandType.Text;

        try
        {
            dbConn13.Open();
            dr13 = cmd13.ExecuteReader();
            if (dr13.Read())
            {
                TextBox605.Text = dr13["boardname"].ToString();
                TextBox606.Text = dr13["materialgsm"].ToString();
                TextBox607.Text = dr13["materialcode"].ToString();
                TextBox608.Text = dr13["materialwebwidth"].ToString();
                TextBox609.Text = dr13["costpersqmeter"].ToString();
            }

            dr13.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn13.Close();
        }
  con.Close();
    }
    protected void Tab11_Click(object sender, EventArgs e)
    {
        Label42.Visible = false;
        Tab9.CssClass = "Initial";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Clicked";
        Tab12.CssClass = "Initial";
        Tab13.CssClass = "Initial";
        Tab14.CssClass = "Initial";
        Tab15.CssClass = "Initial";
        Tab11.Style.Add("background-color", "orange");
        Tab10.Style.Add("background-color", "Silver");
        Tab9.Style.Add("background-color", "Silver");
        Tab12.Style.Add("background-color", "Silver");
        Tab13.Style.Add("background-color", "Silver");
        Tab14.Style.Add("background-color", "Silver");
        Tab15.Style.Add("background-color", "Silver");

        MainView2.ActiveViewIndex = 2;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup1()", true);

        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
      



        string selectSQL14;
        selectSQL14 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"] + "' and unit='1' ";
        dbConn14.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd14.Connection = dbConn14;
        cmd14.CommandText = selectSQL14;
        cmd14.CommandType = CommandType.Text;

        try
        {
            dbConn14.Open();
            dr14 = cmd14.ExecuteReader();
            if (dr14.Read())
            {
                TextBox610.Text = dr14["posino"].ToString();
                TextBox611.Text = dr14["colour"].ToString();
                TextBox612.Text = dr14["cylinderdiameter"].ToString();
                TextBox613.Text = dr14["circumference"].ToString();
                TextBox614.Text = dr14["printwidth"].ToString();
                TextBox615.Text = dr14["referencecolour"].ToString();
                TextBox616.Text = dr14["cylinderfacewidth"].ToString();
                TextBox617.Text = dr14["roughness"].ToString();
                TextBox618.Text = dr14["screen"].ToString();
                TextBox619.Text = dr14["stylusangle"].ToString();
                TextBox620.Text = dr14["depth"].ToString();
                TextBox621.Text = dr14["cellwallvolume"].ToString();
                TextBox622.Text = dr14["channel"].ToString();
                TextBox623.Text = dr14["engravingtype"].ToString();
                TextBox624.Text = dr14["stretchfactor"].ToString();
                TextBox625.Text = dr14["chromelayerthickness"].ToString();
                TextBox626.Text = dr14["xdiagonal"].ToString();

            }

            dr14.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn14.Close();
        }


        string selectSQL15;
        selectSQL15 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"]  + "' and unit='2' ";
        dbConn15.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd15.Connection = dbConn15;
        cmd15.CommandText = selectSQL15;
        cmd15.CommandType = CommandType.Text;

        try
        {
            dbConn15.Open();
            dr15 = cmd15.ExecuteReader();
            if (dr15.Read())
            {
                TextBox627.Text = dr15["posino"].ToString();
                TextBox628.Text = dr15["colour"].ToString();
                TextBox629.Text = dr15["cylinderdiameter"].ToString();
                TextBox630.Text = dr15["circumference"].ToString();
                TextBox631.Text = dr15["printwidth"].ToString();
                TextBox632.Text = dr15["referencecolour"].ToString();
                TextBox633.Text = dr15["cylinderfacewidth"].ToString();
                TextBox634.Text = dr15["roughness"].ToString();
                TextBox635.Text = dr15["screen"].ToString();
                TextBox636.Text = dr15["stylusangle"].ToString();
                TextBox637.Text = dr15["depth"].ToString();
                TextBox638.Text = dr15["cellwallvolume"].ToString();
                TextBox640.Text = dr15["channel"].ToString();
                TextBox641.Text = dr15["engravingtype"].ToString();
                TextBox642.Text = dr15["stretchfactor"].ToString();
                TextBox643.Text = dr15["chromelayerthickness"].ToString();
                TextBox644.Text = dr15["xdiagonal"].ToString();
            }

            dr15.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn15.Close();
        }

        string selectSQL16;
        selectSQL16 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"]  + "' and unit='3' ";
        dbConn16.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd16.Connection = dbConn16;
        cmd16.CommandText = selectSQL16;
        cmd16.CommandType = CommandType.Text;

        try
        {
            dbConn16.Open();
            dr16 = cmd16.ExecuteReader();
            if (dr16.Read())
            {

                TextBox645.Text = dr16["posino"].ToString();
                TextBox646.Text = dr16["colour"].ToString();
                TextBox647.Text = dr16["cylinderdiameter"].ToString();
                TextBox648.Text = dr16["circumference"].ToString();
                TextBox649.Text = dr16["printwidth"].ToString();
                TextBox650.Text = dr16["referencecolour"].ToString();
                TextBox651.Text = dr16["cylinderfacewidth"].ToString();
                TextBox652.Text = dr16["roughness"].ToString();
                TextBox653.Text = dr16["screen"].ToString();
                TextBox654.Text = dr16["stylusangle"].ToString();
                TextBox655.Text = dr16["depth"].ToString();
                TextBox656.Text = dr16["cellwallvolume"].ToString();
                TextBox657.Text = dr16["channel"].ToString();
                TextBox658.Text = dr16["engravingtype"].ToString();
                TextBox659.Text = dr16["stretchfactor"].ToString();
                TextBox660.Text = dr16["chromelayerthickness"].ToString();
                TextBox661.Text = dr16["xdiagonal"].ToString();
            }

            dr16.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn16.Close();
        }



        string selectSQL17;
        selectSQL17 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"]  + "' and unit='4' ";
        dbConn17.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd17.Connection = dbConn17;
        cmd17.CommandText = selectSQL17;
        cmd17.CommandType = CommandType.Text;

        try
        {
            dbConn17.Open();
            dr17 = cmd17.ExecuteReader();
            if (dr17.Read())
            {

                TextBox662.Text = dr17["posino"].ToString();
                TextBox663.Text = dr17["colour"].ToString();
                TextBox664.Text = dr17["cylinderdiameter"].ToString();
                TextBox665.Text = dr17["circumference"].ToString();
                TextBox667.Text = dr17["printwidth"].ToString();
                TextBox668.Text = dr17["referencecolour"].ToString();
                TextBox669.Text = dr17["cylinderfacewidth"].ToString();
                TextBox670.Text = dr17["roughness"].ToString();
                TextBox671.Text = dr17["screen"].ToString();
                TextBox672.Text = dr17["stylusangle"].ToString();
                TextBox673.Text = dr17["depth"].ToString();
                TextBox674.Text = dr17["cellwallvolume"].ToString();
                TextBox675.Text = dr17["channel"].ToString();
                TextBox676.Text = dr17["engravingtype"].ToString();
                TextBox677.Text = dr17["stretchfactor"].ToString();
                TextBox678.Text = dr17["chromelayerthickness"].ToString();
                TextBox679.Text = dr17["xdiagonal"].ToString();

            }

            dr17.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn17.Close();
        }

        string selectSQL18;
        selectSQL18 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"] + "' and unit='5' ";
        dbConn18.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd18.Connection = dbConn18;
        cmd18.CommandText = selectSQL18;
        cmd18.CommandType = CommandType.Text;

        try
        {
            dbConn18.Open();
            dr18 = cmd18.ExecuteReader();
            if (dr18.Read())
            {

                TextBox680.Text = dr18["posino"].ToString();
                TextBox681.Text = dr18["colour"].ToString();
                TextBox682.Text = dr18["cylinderdiameter"].ToString();
                TextBox683.Text = dr18["circumference"].ToString();
                TextBox684.Text = dr18["printwidth"].ToString();
                TextBox685.Text = dr18["referencecolour"].ToString();
                TextBox686.Text = dr18["cylinderfacewidth"].ToString();
                TextBox687.Text = dr18["roughness"].ToString();
                TextBox688.Text = dr18["screen"].ToString();
                TextBox689.Text = dr18["stylusangle"].ToString();
                TextBox1670.Text = dr18["depth"].ToString();
                TextBox1671.Text = dr18["cellwallvolume"].ToString();
                TextBox1672.Text = dr18["channel"].ToString();
                TextBox1673.Text = dr18["engravingtype"].ToString();
                TextBox1674.Text = dr18["stretchfactor"].ToString();
                TextBox1675.Text = dr18["chromelayerthickness"].ToString();
                TextBox1676.Text = dr18["xdiagonal"].ToString();

            }

            dr18.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn18.Close();
        }

        string selectSQL19;
        selectSQL19 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"]  + "' and unit='6' ";
        dbConn19.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd19.Connection = dbConn19;
        cmd19.CommandText = selectSQL19;
        cmd19.CommandType = CommandType.Text;

        try
        {
            dbConn19.Open();
            dr19 = cmd19.ExecuteReader();
            if (dr19.Read())
            {

                TextBox1677.Text = dr19["posino"].ToString();
                TextBox1678.Text = dr19["colour"].ToString();
                TextBox1679.Text = dr19["cylinderdiameter"].ToString();
                TextBox1680.Text = dr19["circumference"].ToString();
                TextBox1681.Text = dr19["printwidth"].ToString();
                TextBox1682.Text = dr19["referencecolour"].ToString();
                TextBox1683.Text = dr19["cylinderfacewidth"].ToString();
                TextBox1684.Text = dr19["roughness"].ToString();
                TextBox1685.Text = dr19["screen"].ToString();
                TextBox1686.Text = dr19["stylusangle"].ToString();
                TextBox1687.Text = dr19["depth"].ToString();
                TextBox1688.Text = dr19["cellwallvolume"].ToString();
                TextBox1689.Text = dr19["channel"].ToString();
                TextBox1690.Text = dr19["engravingtype"].ToString();
                TextBox1691.Text = dr19["stretchfactor"].ToString();
                TextBox1692.Text = dr19["chromelayerthickness"].ToString();
                TextBox1693.Text = dr19["xdiagonal"].ToString();



            }

            dr19.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn19.Close();
        }


        string selectSQL20;
        selectSQL20 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"]  + "' and unit='7' ";
        dbConn20.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd20.Connection = dbConn20;
        cmd20.CommandText = selectSQL20;
        cmd20.CommandType = CommandType.Text;

        try
        {
            dbConn20.Open();
            dr20 = cmd20.ExecuteReader();
            if (dr20.Read())
            {

                TextBox1694.Text = dr20["posino"].ToString();
                TextBox1695.Text = dr20["colour"].ToString();
                TextBox1696.Text = dr20["cylinderdiameter"].ToString();
                TextBox1697.Text = dr20["circumference"].ToString();
                TextBox1698.Text = dr20["printwidth"].ToString();
                TextBox1699.Text = dr20["referencecolour"].ToString();
                TextBox700.Text = dr20["cylinderfacewidth"].ToString();
                TextBox701.Text = dr20["roughness"].ToString();
                TextBox702.Text = dr20["screen"].ToString();
                TextBox703.Text = dr20["stylusangle"].ToString();
                TextBox704.Text = dr20["depth"].ToString();
                TextBox705.Text = dr20["cellwallvolume"].ToString();
                TextBox706.Text = dr20["channel"].ToString();
                TextBox707.Text = dr20["engravingtype"].ToString();
                TextBox708.Text = dr20["stretchfactor"].ToString();
                TextBox709.Text = dr20["chromelayerthickness"].ToString();
                TextBox710.Text = dr20["xdiagonal"].ToString();




            }

            dr20.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn20.Close();
        }





        string selectSQL21;
        selectSQL21 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"]  + "' and unit='8' ";
        dbConn21.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd21.Connection = dbConn21;
        cmd21.CommandText = selectSQL21;
        cmd21.CommandType = CommandType.Text;

        try
        {
            dbConn21.Open();
            dr21 = cmd21.ExecuteReader();
            if (dr21.Read())
            {

                TextBox711.Text = dr21["posino"].ToString();
                TextBox712.Text = dr21["colour"].ToString();
                TextBox713.Text = dr21["cylinderdiameter"].ToString();
                TextBox714.Text = dr21["circumference"].ToString();
                TextBox715.Text = dr21["printwidth"].ToString();
                TextBox716.Text = dr21["referencecolour"].ToString();
                TextBox717.Text = dr21["cylinderfacewidth"].ToString();
                TextBox718.Text = dr21["roughness"].ToString();
                TextBox719.Text = dr21["screen"].ToString();
                TextBox720.Text = dr21["stylusangle"].ToString();
                TextBox721.Text = dr21["depth"].ToString();
                TextBox722.Text = dr21["cellwallvolume"].ToString();
                TextBox723.Text = dr21["channel"].ToString();
                TextBox724.Text = dr21["engravingtype"].ToString();
                TextBox725.Text = dr21["stretchfactor"].ToString();
                TextBox726.Text = dr21["chromelayerthickness"].ToString();
                TextBox727.Text = dr21["xdiagonal"].ToString();





            }

            dr21.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn21.Close();
        }


        string selectSQL22;
        selectSQL22 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"]  + "' and unit='9' ";
        dbConn22.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd22.Connection = dbConn22;
        cmd22.CommandText = selectSQL22;
        cmd22.CommandType = CommandType.Text;

        try
        {
            dbConn22.Open();
            dr22 = cmd22.ExecuteReader();
            if (dr22.Read())
            {

                TextBox728.Text = dr22["posino"].ToString();
                TextBox729.Text = dr22["colour"].ToString();
                TextBox730.Text = dr22["cylinderdiameter"].ToString();
                TextBox731.Text = dr22["circumference"].ToString();
                TextBox732.Text = dr22["printwidth"].ToString();
                TextBox733.Text = dr22["referencecolour"].ToString();
                TextBox734.Text = dr22["cylinderfacewidth"].ToString();
                TextBox735.Text = dr22["roughness"].ToString();
                TextBox736.Text = dr22["screen"].ToString();
                TextBox737.Text = dr22["stylusangle"].ToString();
                TextBox738.Text = dr22["depth"].ToString();
                TextBox739.Text = dr22["cellwallvolume"].ToString();
                TextBox740.Text = dr22["channel"].ToString();
                TextBox741.Text = dr22["engravingtype"].ToString();
                TextBox742.Text = dr22["stretchfactor"].ToString();
                TextBox743.Text = dr22["chromelayerthickness"].ToString();
                TextBox744.Text = dr22["xdiagonal"].ToString();






            }

            dr22.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn22.Close();
        }




        string selectSQL23;
        selectSQL23 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"]  + "' and unit='10' ";
        dbConn23.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd23.Connection = dbConn23;
        cmd23.CommandText = selectSQL23;
        cmd23.CommandType = CommandType.Text;

        try
        {
            dbConn23.Open();
            dr23 = cmd23.ExecuteReader();
            if (dr23.Read())
            {
                TextBox745.Text = dr23["posino"].ToString();
                TextBox746.Text = dr23["colour"].ToString();
                TextBox747.Text = dr23["cylinderdiameter"].ToString();
                TextBox748.Text = dr23["circumference"].ToString();
                TextBox749.Text = dr23["printwidth"].ToString();
                TextBox750.Text = dr23["referencecolour"].ToString();
                TextBox751.Text = dr23["cylinderfacewidth"].ToString();
                TextBox752.Text = dr23["roughness"].ToString();
                TextBox753.Text = dr23["screen"].ToString();
                TextBox754.Text = dr23["stylusangle"].ToString();
                TextBox755.Text = dr23["depth"].ToString();
                TextBox756.Text = dr23["cellwallvolume"].ToString();
                TextBox757.Text = dr23["channel"].ToString();
                TextBox758.Text = dr23["engravingtype"].ToString();
                TextBox759.Text = dr23["stretchfactor"].ToString();
                TextBox760.Text = dr23["chromelayerthickness"].ToString();
                TextBox761.Text = dr23["xdiagonal"].ToString();








            }

            dr23.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn23.Close();
        }


  con.Close();



    }
    protected void Tab12_Click(object sender, EventArgs e)
    {
        Label43.Visible = false;
        Tab9.CssClass = "Initial";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Initial";
        Tab12.CssClass = "Clicked";
        Tab13.CssClass = "Initial";
        Tab14.CssClass = "Initial";
        Tab15.CssClass = "Initial";
        Tab12.Style.Add("background-color", "orange");
        Tab10.Style.Add("background-color", "Silver");
        Tab9.Style.Add("background-color", "Silver");
        Tab11.Style.Add("background-color", "Silver");
        Tab13.Style.Add("background-color", "Silver");
        Tab14.Style.Add("background-color", "Silver");
        Tab15.Style.Add("background-color", "Silver");

        MainView2.ActiveViewIndex = 3;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup1()", true);


        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
       





        string selectSQL14;
        selectSQL14 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='1' ";
        dbConn14.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd14.Connection = dbConn14;
        cmd14.CommandText = selectSQL14;
        cmd14.CommandType = CommandType.Text;

        try
        {
            dbConn14.Open();
            dr14 = cmd14.ExecuteReader();
            if (dr14.Read())
            {
                TextBox816.Text = dr14["inkcode"].ToString();
                TextBox817.Text = dr14["inkcoverage"].ToString();
                TextBox818.Text = dr14["description"].ToString();
                TextBox819.Text = dr14["gsm"].ToString();
                TextBox820.Text = dr14["price"].ToString();
                TextBox821.Text = dr14["reducer"].ToString();
                TextBox822.Text = dr14["retarder"].ToString();
                TextBox823.Text = dr14["viscosity"].ToString();
                TextBox824.Text = dr14["mediums"].ToString();
                TextBox825.Text = dr14["toners"].ToString();
                TextBox826.Text = dr14["tonerratio"].ToString();
                TextBox827.Text = dr14["additive"].ToString();
            }

            dr14.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn14.Close();
        }


        string selectSQL15;
        selectSQL15 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='2' ";
        dbConn15.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd15.Connection = dbConn15;
        cmd15.CommandText = selectSQL15;
        cmd15.CommandType = CommandType.Text;

        try
        {
            dbConn15.Open();
            dr15 = cmd15.ExecuteReader();
            if (dr15.Read())
            {

                TextBox833.Text = dr15["inkcode"].ToString();
                TextBox834.Text = dr15["inkcoverage"].ToString();
                TextBox835.Text = dr15["description"].ToString();
                TextBox836.Text = dr15["gsm"].ToString();
                TextBox837.Text = dr15["price"].ToString();
                TextBox838.Text = dr15["reducer"].ToString();
                TextBox839.Text = dr15["retarder"].ToString();
                TextBox840.Text = dr15["viscosity"].ToString();
                TextBox841.Text = dr15["mediums"].ToString();
                TextBox842.Text = dr15["toners"].ToString();
                TextBox843.Text = dr15["tonerratio"].ToString();
                TextBox844.Text = dr15["additive"].ToString();

            }

            dr15.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn15.Close();
        }

        string selectSQL16;
        selectSQL16 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"] + "' and unit='3' ";
        dbConn16.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd16.Connection = dbConn16;
        cmd16.CommandText = selectSQL16;
        cmd16.CommandType = CommandType.Text;

        try
        {
            dbConn16.Open();
            dr16 = cmd16.ExecuteReader();
            if (dr16.Read())
            {

                TextBox850.Text = dr16["inkcode"].ToString();
                TextBox851.Text = dr16["inkcoverage"].ToString();
                TextBox852.Text = dr16["description"].ToString();
                TextBox853.Text = dr16["gsm"].ToString();
                TextBox854.Text = dr16["price"].ToString();
                TextBox855.Text = dr16["reducer"].ToString();
                TextBox856.Text = dr16["retarder"].ToString();
                TextBox857.Text = dr16["viscosity"].ToString();
                TextBox858.Text = dr16["mediums"].ToString();
                TextBox859.Text = dr16["toners"].ToString();
                TextBox860.Text = dr16["tonerratio"].ToString();
                TextBox861.Text = dr16["additive"].ToString();


            }

            dr16.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn16.Close();
        }



        string selectSQL17;
        selectSQL17 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"] + "' and unit='4' ";
        dbConn17.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd17.Connection = dbConn17;
        cmd17.CommandText = selectSQL17;
        cmd17.CommandType = CommandType.Text;

        try
        {
            dbConn17.Open();
            dr17 = cmd17.ExecuteReader();
            if (dr17.Read())
            {

                TextBox867.Text = dr17["inkcode"].ToString();
                TextBox868.Text = dr17["inkcoverage"].ToString();
                TextBox869.Text = dr17["description"].ToString();
                TextBox870.Text = dr17["gsm"].ToString();
                TextBox871.Text = dr17["price"].ToString();
                TextBox872.Text = dr17["reducer"].ToString();
                TextBox873.Text = dr17["retarder"].ToString();
                TextBox874.Text = dr17["viscosity"].ToString();
                TextBox875.Text = dr17["mediums"].ToString();
                TextBox876.Text = dr17["toners"].ToString();
                TextBox877.Text = dr17["tonerratio"].ToString();
                TextBox878.Text = dr17["additive"].ToString();

            }

            dr17.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn17.Close();
        }

        string selectSQL18;
        selectSQL18 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"] + "' and unit='5' ";
        dbConn18.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd18.Connection = dbConn18;
        cmd18.CommandText = selectSQL18;
        cmd18.CommandType = CommandType.Text;

        try
        {
            dbConn18.Open();
            dr18 = cmd18.ExecuteReader();
            if (dr18.Read())
            {


                TextBox884.Text = dr18["inkcode"].ToString();
                TextBox885.Text = dr18["inkcoverage"].ToString();
                TextBox886.Text = dr18["description"].ToString();
                TextBox887.Text = dr18["gsm"].ToString();
                TextBox888.Text = dr18["price"].ToString();
                TextBox889.Text = dr18["reducer"].ToString();
                TextBox890.Text = dr18["retarder"].ToString();
                TextBox891.Text = dr18["viscosity"].ToString();
                TextBox892.Text = dr18["mediums"].ToString();
                TextBox893.Text = dr18["toners"].ToString();
                TextBox894.Text = dr18["tonerratio"].ToString();
                TextBox895.Text = dr18["additive"].ToString();
            }

            dr18.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn18.Close();
        }

        string selectSQL19;
        selectSQL19 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"]+ "' and unit='6' ";
        dbConn19.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd19.Connection = dbConn19;
        cmd19.CommandText = selectSQL19;
        cmd19.CommandType = CommandType.Text;

        try
        {
            dbConn19.Open();
            dr19 = cmd19.ExecuteReader();
            if (dr19.Read())
            {

                TextBox896.Text = dr19["inkcode"].ToString();
                TextBox8961.Text = dr19["inkcoverage"].ToString();
                TextBox897.Text = dr19["description"].ToString();
                TextBox898.Text = dr19["gsm"].ToString();
                TextBox899.Text = dr19["price"].ToString();
                TextBox900.Text = dr19["reducer"].ToString();
                TextBox901.Text = dr19["retarder"].ToString();
                TextBox902.Text = dr19["viscosity"].ToString();
                TextBox903.Text = dr19["mediums"].ToString();
                TextBox904.Text = dr19["toners"].ToString();
                TextBox905.Text = dr19["tonerratio"].ToString();
                TextBox906.Text = dr19["additive"].ToString();


            }

            dr19.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn19.Close();
        }


        string selectSQL20;
        selectSQL20 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"] + "' and unit='7' ";
        dbConn20.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd20.Connection = dbConn20;
        cmd20.CommandText = selectSQL20;
        cmd20.CommandType = CommandType.Text;

        try
        {
            dbConn20.Open();
            dr20 = cmd20.ExecuteReader();
            if (dr20.Read())
            {

                TextBox907.Text = dr20["inkcode"].ToString();
                TextBox908.Text = dr20["inkcoverage"].ToString();
                TextBox909.Text = dr20["description"].ToString();
                TextBox910.Text = dr20["gsm"].ToString();
                TextBox911.Text = dr20["price"].ToString();
                TextBox912.Text = dr20["reducer"].ToString();
                TextBox913.Text = dr20["retarder"].ToString();
                TextBox914.Text = dr20["viscosity"].ToString();
                TextBox915.Text = dr20["mediums"].ToString();
                TextBox916.Text = dr20["toners"].ToString();
                TextBox917.Text = dr20["tonerratio"].ToString();
                TextBox918.Text = dr20["additive"].ToString();





            }

            dr20.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn20.Close();
        }





        string selectSQL21;
        selectSQL21 = " SELECT * FROM job_ink where pid ='" + Session["DatakeyValue"] + "' and unit='8' ";
        dbConn21.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd21.Connection = dbConn21;
        cmd21.CommandText = selectSQL21;
        cmd21.CommandType = CommandType.Text;

        try
        {
            dbConn21.Open();
            dr21 = cmd21.ExecuteReader();
            if (dr21.Read())
            {



                TextBox919.Text = dr21["inkcode"].ToString();
                TextBox920.Text = dr21["inkcoverage"].ToString();
                TextBox921.Text = dr21["description"].ToString();
                TextBox922.Text = dr21["gsm"].ToString();
                TextBox923.Text = dr21["price"].ToString();
                TextBox924.Text = dr21["reducer"].ToString();
                TextBox925.Text = dr21["retarder"].ToString();
                TextBox926.Text = dr21["viscosity"].ToString();
                TextBox927.Text = dr21["mediums"].ToString();
                TextBox928.Text = dr21["toners"].ToString();
                TextBox929.Text = dr21["tonerratio"].ToString();
                TextBox930.Text = dr21["additive"].ToString();






            }

            dr21.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn21.Close();
        }


        string selectSQL22;
        selectSQL22 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"] + "' and unit='9' ";
        dbConn22.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd22.Connection = dbConn22;
        cmd22.CommandText = selectSQL22;
        cmd22.CommandType = CommandType.Text;

        try
        {
            dbConn22.Open();
            dr22 = cmd22.ExecuteReader();
            if (dr22.Read())
            {

                TextBox931.Text = dr22["inkcode"].ToString();
                TextBox932.Text = dr22["inkcoverage"].ToString();
                TextBox933.Text = dr22["description"].ToString();
                TextBox934.Text = dr22["gsm"].ToString();
                TextBox935.Text = dr22["price"].ToString();
                TextBox936.Text = dr22["reducer"].ToString();
                TextBox937.Text = dr22["retarder"].ToString();
                TextBox938.Text = dr22["viscosity"].ToString();
                TextBox939.Text = dr22["mediums"].ToString();
                TextBox940.Text = dr22["toners"].ToString();
                TextBox941.Text = dr22["tonerratio"].ToString();
                TextBox942.Text = dr22["additive"].ToString();








            }

            dr22.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn22.Close();
        }




        string selectSQL23;
        selectSQL23 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"] + "' and unit='10' ";
        dbConn23.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd23.Connection = dbConn23;
        cmd23.CommandText = selectSQL23;
        cmd23.CommandType = CommandType.Text;

        try
        {
            dbConn23.Open();
            dr23 = cmd23.ExecuteReader();
            if (dr23.Read())
            {
                TextBox943.Text = dr23["inkcode"].ToString();
                TextBox944.Text = dr23["inkcoverage"].ToString();
                TextBox945.Text = dr23["description"].ToString();
                TextBox946.Text = dr23["gsm"].ToString();
                TextBox947.Text = dr23["price"].ToString();
                TextBox948.Text = dr23["reducer"].ToString();
                TextBox949.Text = dr23["retarder"].ToString();
                TextBox950.Text = dr23["viscosity"].ToString();
                TextBox951.Text = dr23["mediums"].ToString();
                TextBox952.Text = dr23["toners"].ToString();
                TextBox953.Text = dr23["tonerratio"].ToString();
                TextBox954.Text = dr23["additive"].ToString();







            }





            dr23.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn23.Close();
        }


        string selectSQL24;
        selectSQL24 = " SELECT * FROM job_ink where pid ='" +  Session["DatakeyValue"] + "' and unit='11' ";
        dbConn24.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd24.Connection = dbConn24;
        cmd24.CommandText = selectSQL24;
        cmd24.CommandType = CommandType.Text;

        try
        {
            dbConn24.Open();
            dr24 = cmd24.ExecuteReader();
            if (dr24.Read())
            {
                TextBox955.Text = dr24["inkcode"].ToString();
                TextBox956.Text = dr24["inkcoverage"].ToString();
                TextBox957.Text = dr24["description"].ToString();
                TextBox958.Text = dr24["gsm"].ToString();
                TextBox959.Text = dr24["price"].ToString();
                TextBox960.Text = dr24["reducer"].ToString();
                TextBox961.Text = dr24["retarder"].ToString();
                TextBox962.Text = dr24["viscosity"].ToString();
                TextBox963.Text = dr24["mediums"].ToString();
                TextBox964.Text = dr24["toners"].ToString();
                TextBox965.Text = dr24["tonerratio"].ToString();
                TextBox966.Text = dr24["additive"].ToString();







            }





            dr24.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn24.Close();
        }


 con.Close();


    } protected void Tab13_Click(object sender, EventArgs e)
    {
      
        Label44.Visible = false;
        Tab9.CssClass = "Initial";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Initial";
        Tab12.CssClass = "Initial";
        Tab13.CssClass = "Clicked";
        Tab14.CssClass = "Initial";
        Tab15.CssClass = "Initial";
        Tab13.Style.Add("background-color", "orange");
        Tab10.Style.Add("background-color", "Silver");
        Tab9.Style.Add("background-color", "Silver");
        Tab11.Style.Add("background-color", "Silver");
        Tab12.Style.Add("background-color", "Silver");
        Tab14.Style.Add("background-color", "Silver");
        Tab15.Style.Add("background-color", "Silver");
        MainView2.ActiveViewIndex = 4;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup1()", true);
          int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT embid   FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Labelembos1.Text = Convert.ToString(cm.ExecuteScalar());
        Session["Labelembos1"] = Labelembos1.Text;

        string selectSQL11;
        selectSQL11 = " SELECT * FROM job_emboss where id ='" +  Session["Labelembos1"] + "' ";
        dbConn11.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200;";
        cmd11.Connection = dbConn11;
        cmd11.CommandText = selectSQL11;
        cmd11.CommandType = CommandType.Text;

        try
        {
            dbConn11.Open();
            dr11 = cmd11.ExecuteReader();
            if (dr11.Read())
            {

                TextBox1001.Text = dr11["embid"].ToString();
                TextBox1002.Text = dr11["mandrel"].ToString();
                TextBox1003.Text = dr11["type"].ToString();
                TextBox1004.Text = dr11["circmale"].ToString();
                TextBox1005.Text = dr11["circfemale"].ToString();
                TextBox1006.Text = dr11["diameter"].ToString();
                TextBox1007.Text = dr11["supplier"].ToString();
                TextBox1008.Text = dr11["supplierno"].ToString();
                TextBox1009.Text = dr11["depth"].ToString();
                TextBox1010.Text = dr11["height"].ToString();
                TextBox1011.Text = dr11["artworknumber"].ToString();
                TextBox1012.Text = dr11["calyear"].ToString();
                TextBox1013.Text = dr11["month"].ToString();
                TextBox1014.Text = dr11["datereceived"].ToString();
                TextBox1.Text = dr11["artworkdate"].ToString();
                TextBox1015.Text = dr11["country"].ToString();
                TextBox1016.Text = dr11["comment"].ToString();

            }

            dr11.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn11.Close();
        }

       con.Close();
    }
    protected void Tab14_Click(object sender, EventArgs e)
    {
        Label45.Visible = false;

        Tab9.CssClass = "Initial";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Initial";
        Tab12.CssClass = "Initial";
        Tab13.CssClass = "Initial";
        Tab14.CssClass = "Clicked";
        Tab15.CssClass = "Initial";
        Tab14.Style.Add("background-color", "orange");
        Tab10.Style.Add("background-color", "Silver");
        Tab9.Style.Add("background-color", "Silver");
        Tab11.Style.Add("background-color", "Silver");
        Tab13.Style.Add("background-color", "Silver");
        Tab12.Style.Add("background-color", "Silver");
        Tab15.Style.Add("background-color", "Silver");
        MainView2.ActiveViewIndex = 5;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup1()", true);
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT diereferneceno FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Labeldie1.Text = Convert.ToString(cm.ExecuteScalar());
        Session["Labeldie1"] =  Labeldie1.Text;

        string selectSQL26;
        selectSQL26 = " SELECT * FROM job_die where id ='" + Session["Labeldie1"]  + "' ";
        dbConn26.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd26.Connection = dbConn26;
        cmd26.CommandText = selectSQL26;
        cmd26.CommandType = CommandType.Text;

        try
        {
            dbConn26.Open();
            dr26 = cmd26.ExecuteReader();
            if (dr26.Read())
            {
                TextBox2.Text = dr26["dieno"].ToString();
                TextBox1017.Text = dr26["templateno"].ToString();
                TextBox1018.Text = dr26["model"].ToString();
                TextBox1019.Text = dr26["type"].ToString();
                TextBox1020.Text = dr26["brassfemaleembossin"].ToString();
                TextBox1021.Text = dr26["brassmaleembossing"].ToString();
                TextBox1022.Text = dr26["supplier"].ToString();
                TextBox1023.Text = dr26["lcutterwidth"].ToString();
                TextBox1024.Text = dr26["lcutterlength"].ToString();
                TextBox1025.Text = dr26["comment"].ToString();
                TextBox1026.Text = dr26["lmacross"].ToString();
                TextBox1027.Text = dr26["lmaround"].ToString();
                TextBox1028.Text = dr26["caditemidno"].ToString();
                TextBox1029.Text = dr26["cadrefno"].ToString();
                TextBox1030.Text = dr26["cadnoups"].ToString();
                TextBox1031.Text = dr26["cadpackheight"].ToString();
                TextBox1032.Text = dr26["cadpackwidth"].ToString();
                TextBox1033.Text = dr26["cadpackbreadth"].ToString();
                TextBox1034.Text = dr26["caddesignheight"].ToString();
                TextBox1035.Text = dr26["caddesignwidth"].ToString();
                TextBox1036.Text = dr26["cadgripperwidth"].ToString();
                TextBox1037.Text = dr26["cadgripperlenth"].ToString();
                TextBox1038.Text = dr26["cadchargenno"].ToString();


            }

            dr26.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn26.Close();
        }

 con.Close();
    }
    protected void Tab15_Click(object sender, EventArgs e)
    {
        Label46.Visible = false;
        Tab9.CssClass = "Initial";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Initial";
        Tab12.CssClass = "Initial";
        Tab13.CssClass = "Initial";
        Tab14.CssClass = "Initial";
        Tab15.CssClass = "Clicked";
        Tab15.Style.Add("background-color", "orange");
        Tab10.Style.Add("background-color", "Silver");
        Tab9.Style.Add("background-color", "Silver");
        Tab11.Style.Add("background-color", "Silver");
        Tab13.Style.Add("background-color", "Silver");
        Tab12.Style.Add("background-color", "Silver");
        Tab14.Style.Add("background-color", "Silver");
        MainView2.ActiveViewIndex = 6;
        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ClientScript.RegisterStartupScript(this.GetType(), "Popup1", "ShowPopup()", true);

        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
      

        string selectSQL12;
        selectSQL12 = " SELECT * FROM job where id ='" + Session["DatakeyValue"] + "' ";
        dbConn12.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd12.Connection = dbConn12;
        cmd12.CommandText = selectSQL12;
        cmd12.CommandType = CommandType.Text;
        try
        {
            dbConn12.Open();
            dr12 = cmd12.ExecuteReader();
            if (dr12.Read())
            {
                // This columns are in the job table
                TextBox1039.Text = dr12["gietzdieref"].ToString();
                TextBox1040.Text = dr12["packingperpallet"].ToString();
                TextBox1041.Text = dr12["status"].ToString();
                TextBox1042.Text = dr12["cadgietzdie"].ToString();
                TextBox1043.Text = dr12["hotfoilcoverage"].ToString();
                TextBox1044.Text = dr12["blockspersheet"].ToString();
                TextBox1045.Text = dr12["blockspercarton"].ToString();
                TextBox1046.Text = dr12["foilarea"].ToString();
                TextBox1047.Text = dr12["foilsqm"].ToString();
                TextBox1048.Text = dr12["sheetlength"].ToString();
                TextBox1049.Text = dr12["sheetwidth"].ToString();

            }

            dr12.Close();
        }

        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn12.Close();
        }
  con.Close();
    }




    private void BindDummyRow()
    {
        DataTable dummy = new DataTable();
        dummy.Columns.Add("id");
        dummy.Columns.Add("pid");
        dummy.Columns.Add("description");
        dummy.Columns.Add("Country");
        dummy.Columns.Add("pack");
        dummy.Columns.Add("customer");
        dummy.Columns.Add("jobnumber");
        dummy.Columns.Add("artworkdate");
        dummy.Columns.Add("reprodate");
        dummy.Columns.Add("artworknumber");
        dummy.Columns.Add("templateno");


        dummy.Rows.Add();
        gvDetails.DataSource = dummy;
        gvDetails.DataBind();
        //gvDetails.UseAccessibleHeader = true;
        //gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
    }




    [WebMethod]
    public static string GetCustomers(int pageIndex, string searchTerm, int pageSize)
    {
        string query = "[boj]";

        SqlCommand cmd = new SqlCommand(query);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SearchTerm", searchTerm);
        cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
        cmd.Parameters.AddWithValue("@PageSize", pageSize);
        cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;

        return GetData(cmd, pageIndex, pageSize).GetXml();

    }
      [WebMethod]
    private static DataSet GetData(SqlCommand cmd, int pageIndex, int pageSize)
    {
        string strConnString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds, "job");
                    DataTable dt = new DataTable("Pager");
                    dt.Columns.Add("PageIndex");
                    dt.Columns.Add("PageSize");
                    dt.Columns.Add("RecordCount");
                    dt.Rows.Add();
                    dt.Rows[0]["PageIndex"] = pageIndex;
                    dt.Rows[0]["PageSize"] = pageSize;
                    dt.Rows[0]["RecordCount"] = cmd.Parameters["@RecordCount"].Value;
                    ds.Tables.Add(dt);

                    return ds;
                }
            }
        }
    }




    protected void Inkview_Click(object sender, EventArgs e)
    {
        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
       
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id ";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
       



        //

        MainView.ActiveViewIndex = 0;
        Tab1.CssClass = "Clicked";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        Tab7.CssClass = "Initial";

        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ScriptManager.RegisterStartupScript((sender as Control), this.GetType(), "Popup", "ShowPopup();", true);

        selectSQL = " SELECT * FROM job where id ='" +Session["DatakeyValue"] + "' ";
        dbConn1.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;
        try
        {
            dbConn1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                TextBox7.Text = dr1["pid"].ToString();
                TextBox8.Text = dr1["description"].ToString();
                TextBox9.Text = dr1["variant"].ToString();
                TextBox10.Text = dr1["country"].ToString();
                TextBox11.Text = dr1["pack"].ToString();
                TextBox12.Text = dr1["customer"].ToString();
                TextBox13.Text = dr1["jobnumber"].ToString();
                TextBox14.Text = dr1["templateno"].ToString();
                TextBox15.Text = dr1["artworkdate"].ToString();
                TextBox16.Text = dr1["reprodate"].ToString();
                TextBox17.Text = dr1["artworknumber"].ToString();
                TextBox18.Text = dr1["nampak"].ToString();
                TextBox19.Text = dr1["reproapproveddate"].ToString();
                TextBox20.Text = dr1["artworkreceiveddate"].ToString();
                TextBox21.Text = dr1["yields"].ToString();
                TextBox22.Text = dr1["qtyaround"].ToString();
                TextBox23.Text = dr1["qtyacross"].ToString();
                TextBox24.Text = dr1["stretchdoublecut"].ToString();
                TextBox25.Text = dr1["qtyperrevolution"].ToString();
                TextBox26.Text = dr1["printtype"].ToString();
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
            con.Close();
        // gvDetails.DataBind();
    }

    protected void Inkview_Click1(object sender, EventArgs e)
    {

        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        // Session["DatakeyValue"] = Label2.Text;


        // Session["DatakeyValue"] = id;
        SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cm = new SqlCommand();
        cm.Connection = con;
        con.Open();
        cm.CommandType = CommandType.Text;
        cm.CommandText = "SELECT id FROM job WHERE id=@id";
        cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
        Label1.Text = Convert.ToString(cm.ExecuteScalar());
        con.Close();

        MainView.ActiveViewIndex = 0;
        Tab9.CssClass = "Clicked";
        Tab10.CssClass = "Initial";
        Tab11.CssClass = "Initial";
        Tab12.CssClass = "Initial";
        Tab13.CssClass = "Initial";
        Tab14.CssClass = "Initial";
        Tab15.CssClass = "Initial";

        gvDetails.UseAccessibleHeader = true;
        gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
        ScriptManager.RegisterStartupScript((sender as Control), this.GetType(), "Popup", "ShowPopup1();", true);

        selectSQL = " SELECT * FROM job where id ='" + Session["DatakeyValue"] + "' ";
        dbConn1.ConnectionString = "data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd1.Connection = dbConn1;
        cmd1.CommandText = selectSQL;
        cmd1.CommandType = CommandType.Text;
        try
        {
            dbConn1.Open();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                TextBox581.Text = dr1["pid"].ToString();
                TextBox582.Text = dr1["description"].ToString();
                TextBox583.Text = dr1["variant"].ToString();
                TextBox584.Text = dr1["country"].ToString();
                TextBox585.Text = dr1["pack"].ToString();
                TextBox586.Text = dr1["customer"].ToString();
                TextBox587.Text = dr1["jobnumber"].ToString();
                TextBox588.Text = dr1["templateno"].ToString();
                TextBox589.Text = dr1["artworkdate"].ToString();
                TextBox590.Text = dr1["reprodate"].ToString();
                TextBox591.Text = dr1["artworknumber"].ToString();
                TextBox592.Text = dr1["nampak"].ToString();
                TextBox593.Text = dr1["reproapproveddate"].ToString();
                TextBox594.Text = dr1["artworkreceiveddate"].ToString();
                TextBox5941.Text = dr1["yields"].ToString();
                TextBox595.Text = dr1["qtyaround"].ToString();
                TextBox596.Text = dr1["qtyacross"].ToString();
                TextBox597.Text = dr1["stretchdoublecut"].ToString();
                TextBox598.Text = dr1["qtyperrevolution"].ToString();
                TextBox599.Text = dr1["printtype"].ToString();
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

  protected void ImageButton30_Click(object sender, EventArgs e)
    {
        Response.Redirect("Choose.aspx");
    }
    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        string ids = hfCheckedIds.Value;
        foreach (string id in ids.Split(','))
        {

            SqlConnection con1 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm = new SqlCommand();
            cm.Connection = con1;
            con1.Open();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "SELECT id FROM job WHERE id=@id ";
            cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label47.Text = Convert.ToString(cm.ExecuteScalar());
            Session["ppp"] = Label47.Text;
            con1.Close();


            SqlConnection con23 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm23 = new SqlCommand();
            cm23.Connection = con23;
            con23.Open();
            cm23.CommandType = CommandType.Text;
            cm23.CommandText = "SELECT diereferneceno FROM job WHERE id=@id ";
            cm23.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label48.Text = Convert.ToString(cm23.ExecuteScalar());
            Session["ppp1"] = Label48.Text;
            con23.Close();


            SqlConnection con24 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm24 = new SqlCommand();
            cm24.Connection = con24;
            con24.Open();
            cm24.CommandType = CommandType.Text;
            cm24.CommandText = "SELECT embid FROM job WHERE id=@id ";
            cm24.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label49.Text = Convert.ToString(cm24.ExecuteScalar());
            Session["ppp2"] = Label49.Text;
            con24.Close();




            using (SqlConnection con = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; "))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from job where id='" + id + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }





            using (SqlConnection con2 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; "))
            {
                con2.Open();
                SqlCommand cmd2 = new SqlCommand("delete from job_ink where pid='" + id + "' ", con2);
                cmd2.ExecuteNonQuery();
                con2.Close();
            }

            using (SqlConnection con3 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; "))
            {
                con3.Open();
                SqlCommand cmd3 = new SqlCommand("delete from job_cylinder where pid='" + id + "' ", con3);
                cmd3.ExecuteNonQuery();
                con3.Close();
            }

            using (SqlConnection con4 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; "))
            {
                con4.Open();
                SqlCommand cmd4 = new SqlCommand("delete from job_die where id='" + Session["ppp1"].ToString() + "' ", con4);
                cmd4.ExecuteNonQuery();
                con4.Close();
            }
            using (SqlConnection con5 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; "))
            {
                con5.Open();
                SqlCommand cmd5 = new SqlCommand("delete from job_emboss where id='" + Session["ppp2"].ToString() + "' ", con5);
                cmd5.ExecuteNonQuery();
                con5.Close();
            }
            using (SqlConnection con6 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; "))
            {
                con6.Open();
                SqlCommand cmd6 = new SqlCommand("delete from job_material where pid='" + id + "' ", con6);
                cmd6.ExecuteNonQuery();
                con6.Close();

            }
            BindDummyRow();
            // string ids = hfCheckedIds.Value;
            //  int usrid = Int32.Parse(ids);
            // ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('" + id+ "')", true);
        }
    }
    protected void ImageButton16_Click(object sender, EventArgs e)
    {
        updateSQL = "UPDATE job  set ";

        updateSQL += "pid=@pid,description=@description,variant=@variant,country=@country,pack=@pack,customer=@customer,jobnumber=@jobnumber,templateno=@templateno,";
        updateSQL += "artworkdate=@artworkdate,reprodate=@reprodate,artworknumber=@artworknumber,nampak=@nampak,reproapproveddate=@reproapproveddate,";
        updateSQL += "artworkreceiveddate=@artworkreceiveddate,yields=@yields,qtyaround=@qtyaround,qtyacross=@qtyacross,stretchdoublecut=@stretchdoublecut ,qtyperrevolution=@qtyperrevolution,printtype=@printtype     WHERE id ='" + Session["DatakeyValue"] + "' ";




        dbConn2.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;




        cmd1.Parameters.AddWithValue("@Pid", TextBox581.Text);
        cmd1.Parameters.AddWithValue("@description", TextBox582.Text);
        cmd1.Parameters.AddWithValue("@variant", TextBox583.Text);
        cmd1.Parameters.AddWithValue("@country", TextBox584.Text);
        cmd1.Parameters.AddWithValue("@pack", TextBox585.Text);

        cmd1.Parameters.AddWithValue("@customer", TextBox586.Text);
        cmd1.Parameters.AddWithValue("@jobnumber", TextBox587.Text);
        cmd1.Parameters.AddWithValue("@templateno", TextBox588.Text);
        cmd1.Parameters.AddWithValue("@artworkdate", TextBox589.Text);
        cmd1.Parameters.AddWithValue("@reprodate", TextBox590.Text);
        cmd1.Parameters.AddWithValue("@artworknumber", TextBox591.Text);

        cmd1.Parameters.AddWithValue("@nampak", TextBox592.Text);
        cmd1.Parameters.AddWithValue("@reproapproveddate", TextBox593.Text);
        cmd1.Parameters.AddWithValue("@artworkreceiveddate", TextBox594.Text);
        cmd1.Parameters.AddWithValue("@yields", TextBox5941.Text);
        cmd1.Parameters.AddWithValue("@qtyaround", TextBox595.Text);
        cmd1.Parameters.AddWithValue("@qtyacross", TextBox596.Text);
        cmd1.Parameters.AddWithValue("@stretchdoublecut", TextBox597.Text);
        cmd1.Parameters.AddWithValue("@qtyperrevolution", TextBox598.Text);
        cmd1.Parameters.AddWithValue("@printtype", TextBox599.Text);





        try
        {
            dbConn2.Open();
            int updated = cmd1.ExecuteNonQuery();
            Label40.Visible = true;
            Label40.Text = " records updated.";
            MainView.ActiveViewIndex = 0;
            Tab9.CssClass = "Clicked";
            Tab10.CssClass = "Initial";
            Tab11.CssClass = "Initial";
            Tab12.CssClass = "Initial";
            Tab13.CssClass = "Initial";
            Tab14.CssClass = "Initial";
            Tab15.CssClass = "Initial";


            // Call the BindUserDetails to refresh the data.
            BindDummyRow();

            // Or Set UseAccessibleHeader and HeaderRow TableSection
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn2.Close();
        }
    }
    protected void ImageButton17_Click(object sender, EventArgs e)
    {

        updateSQL = "UPDATE job_material  set ";




        updateSQL += "boardname=@boardname,materialgsm=@materialgsm,materialcode=@materialcode,materialwebwidth=@materialwebwidth,costpersqmeter=@costpersqmeter  where id  = (SELECT TOP 1 * From (select Top 2  id  from job_material  where pid='" + Session["DatakeyValue"] + "' ORDER BY id DESC) x ORDER BY id )";











        dbConn2.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;


        cmd1.Parameters.AddWithValue("@boardname", TextBox600.Text);
        cmd1.Parameters.AddWithValue("@materialgsm", TextBox601.Text);
        cmd1.Parameters.AddWithValue("@materialcode", TextBox602.Text);
        cmd1.Parameters.AddWithValue("@materialwebwidth", TextBox603.Text);
        cmd1.Parameters.AddWithValue("@costpersqmeter", TextBox604.Text);
        cmd1.Parameters.AddWithValue("@pid",Session["DatakeyValue"]);



        try
        {

            dbConn2.Open();
            int updated = cmd1.ExecuteNonQuery();
            if (updated == 1)
            {

                // Label41.Visible = true;
                // Label41.Text = updated.ToString() + " records updated.";
                //Tab9.CssClass = "Initial";
                //Tab10.CssClass = "Clicked";
                // Tab11.CssClass = "Initial";
                // Tab12.CssClass = "Initial";
                // Tab13.CssClass = "Initial";
                //  Tab14.CssClass = "Initial";
                // Tab15.CssClass = "Initial";
                // MainView2.ActiveViewIndex = 1;
                //  BindDummyRow();

                // Or Set UseAccessibleHeader and HeaderRow TableSection
                //  gvDetails.UseAccessibleHeader = true;
                // gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


            }
            else
            {


                Label1.Text = "Process not Completed";
            }

            // dbConn2.Close();

            // Call the BindUserDetails to refresh the data.

            // gvDetails.UseAccessibleHeader = true;
            // gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


            // Or Set UseAccessibleHeader and HeaderRow TableSection


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn2.Close();
        }



        string updateSQL1;
        updateSQL1 = "UPDATE job_material  set ";



        updateSQL1 += "boardname=@boardname,materialgsm=@materialgsm,materialcode=@materialcode,materialwebwidth=@materialwebwidth,costpersqmeter=@costpersqmeter   where id  = (select top 1 id  from  job_material where pid='" + Session["DatakeyValue"] + "' order by id desc)  ";





        dbConn3.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd2.Connection = dbConn3;
        cmd2.CommandText = updateSQL1;
        cmd2.CommandType = CommandType.Text;


        cmd2.Parameters.AddWithValue("@boardname", TextBox605.Text);
        cmd2.Parameters.AddWithValue("@materialgsm", TextBox606.Text);
        cmd2.Parameters.AddWithValue("@materialcode", TextBox607.Text);
        cmd2.Parameters.AddWithValue("@materialwebwidth", TextBox608.Text);
        cmd2.Parameters.AddWithValue("@costpersqmeter", TextBox609.Text);
        cmd2.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);



        try
        {

            dbConn3.Open();
            int updated1 = cmd2.ExecuteNonQuery();
            if (updated1 == 1)
            {

                Label41.Visible = true;
                Label41.Text = " records updated.";
                Tab9.CssClass = "Initial";
                Tab10.CssClass = "Clicked";
                Tab11.CssClass = "Initial";
                Tab12.CssClass = "Initial";
                Tab13.CssClass = "Initial";
                Tab14.CssClass = "Initial";
                Tab15.CssClass = "Initial";
                MainView2.ActiveViewIndex = 1;
                BindDummyRow();

                // Or Set UseAccessibleHeader and HeaderRow TableSection
                gvDetails.UseAccessibleHeader = true;
                gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


            }
            else
            {


                Label1.Text = "Process not Completed";
            }

            // dbConn2.Close();

            // Call the BindUserDetails to refresh the data.

            // gvDetails.UseAccessibleHeader = true;
            // gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


            // Or Set UseAccessibleHeader and HeaderRow TableSection


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn3.Close();
        }

    }
    protected void ImageButton18_Click(object sender, EventArgs e)
    {
        string updateSQL40;
        updateSQL40 = "UPDATE job_cylinder set ";




        updateSQL40 += "posino=@posino,colour=@colour,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,cylinderfacewidth=@cylinderfacewidth,";
        updateSQL40 += "roughness=@roughness,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,channel=@channel,engravingtype=@engravingtype, stretchfactor=@stretchfactor,chromelayerthickness=@chromelayerthickness, xdiagonal=@xdiagonal WHERE pid ='" + Session["DatakeyValue"] + "' and unit='1' ";

        dbConn40.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd40.Connection = dbConn40;
        cmd40.CommandText = updateSQL40;
        cmd40.CommandType = CommandType.Text;



        cmd40.Parameters.AddWithValue("@posino", TextBox610.Text);
        cmd40.Parameters.AddWithValue("@colour", TextBox611.Text);
        cmd40.Parameters.AddWithValue("@cylinderdiameter", TextBox612.Text);
        cmd40.Parameters.AddWithValue("@circumference", TextBox613.Text);
        cmd40.Parameters.AddWithValue("@printwidth", TextBox614.Text);
        cmd40.Parameters.AddWithValue("@referencecolour", TextBox615.Text);
        cmd40.Parameters.AddWithValue("@cylinderfacewidth", TextBox616.Text);
        cmd40.Parameters.AddWithValue("@roughness", TextBox617.Text);
        cmd40.Parameters.AddWithValue("@screen", TextBox618.Text);
        cmd40.Parameters.AddWithValue("@stylusangle", TextBox619.Text);
        cmd40.Parameters.AddWithValue("@depth", TextBox620.Text);
        cmd40.Parameters.AddWithValue("@cellwallvolume", TextBox621.Text);
        cmd40.Parameters.AddWithValue("@channel", TextBox622.Text);
        cmd40.Parameters.AddWithValue("@engravingtype", TextBox623.Text);
        cmd40.Parameters.AddWithValue("@stretchfactor", TextBox624.Text);
        cmd40.Parameters.AddWithValue("@chromelayerthickness", TextBox625.Text);
        cmd40.Parameters.AddWithValue("@xdiagonal", TextBox626.Text);
        cmd40.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);









        try
        {
            dbConn40.Open();
            int updated40 = cmd40.ExecuteNonQuery();
            if (updated40 == 1)
            {


                Label42.Visible = true;
                Label42.Text = updated40.ToString() + " records updated.";

            }
            else
            {


                Label1.Text = "Process not Completed";
            }






        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn40.Close();
        }


        string updateSQL41;
        updateSQL41 = "UPDATE job_cylinder set ";




        updateSQL41 += "posino=@posino,colour=@colour,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,cylinderfacewidth=@cylinderfacewidth,";
        updateSQL41 += "roughness=@roughness,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,channel=@channel,engravingtype=@engravingtype, stretchfactor=@stretchfactor,chromelayerthickness=@chromelayerthickness, xdiagonal=@xdiagonal WHERE pid ='" + Session["DatakeyValue"] + "' and unit='2' ";

        dbConn41.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd41.Connection = dbConn41;
        cmd41.CommandText = updateSQL41;
        cmd41.CommandType = CommandType.Text;





        cmd41.Parameters.AddWithValue("@posino", TextBox627.Text);
        cmd41.Parameters.AddWithValue("@colour", TextBox628.Text);
        cmd41.Parameters.AddWithValue("@cylinderdiameter", TextBox629.Text);
        cmd41.Parameters.AddWithValue("@circumference", TextBox630.Text);
        cmd41.Parameters.AddWithValue("@printwidth", TextBox631.Text);
        cmd41.Parameters.AddWithValue("@referencecolour", TextBox632.Text);
        cmd41.Parameters.AddWithValue("@cylinderfacewidth", TextBox633.Text);
        cmd41.Parameters.AddWithValue("@roughness", TextBox634.Text);
        cmd41.Parameters.AddWithValue("@screen", TextBox635.Text);
        cmd41.Parameters.AddWithValue("@stylusangle", TextBox636.Text);
        cmd41.Parameters.AddWithValue("@depth", TextBox637.Text);
        cmd41.Parameters.AddWithValue("@cellwallvolume", TextBox638.Text);
        cmd41.Parameters.AddWithValue("@channel", TextBox640.Text);
        cmd41.Parameters.AddWithValue("@engravingtype", TextBox641.Text);
        cmd41.Parameters.AddWithValue("@stretchfactor", TextBox642.Text);
        cmd41.Parameters.AddWithValue("@chromelayerthickness", TextBox643.Text);
        cmd41.Parameters.AddWithValue("@xdiagonal", TextBox644.Text);
        cmd41.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);








        try
        {
            dbConn41.Open();
            int updated41 = cmd41.ExecuteNonQuery();
            // Label42.Visible = true;
            //  Label42.Text = updated41.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.





        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn41.Close();
        }



        string updateSQL42;
        updateSQL42 = "UPDATE job_cylinder set ";

        updateSQL42 += "posino=@posino,colour=@colour,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,cylinderfacewidth=@cylinderfacewidth,";
        updateSQL42 += "roughness=@roughness,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,channel=@channel,engravingtype=@engravingtype, stretchfactor=@stretchfactor,chromelayerthickness=@chromelayerthickness, xdiagonal=@xdiagonal WHERE pid ='" + Session["DatakeyValue"] + "' and unit='3' ";

        dbConn42.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd42.Connection = dbConn42;
        cmd42.CommandText = updateSQL42;
        cmd42.CommandType = CommandType.Text;



        cmd42.Parameters.AddWithValue("@posino", TextBox645.Text);
        cmd42.Parameters.AddWithValue("@colour", TextBox646.Text);
        cmd42.Parameters.AddWithValue("@cylinderdiameter", TextBox647.Text);
        cmd42.Parameters.AddWithValue("@circumference", TextBox648.Text);
        cmd42.Parameters.AddWithValue("@printwidth", TextBox649.Text);
        cmd42.Parameters.AddWithValue("@referencecolour", TextBox650.Text);
        cmd42.Parameters.AddWithValue("@cylinderfacewidth", TextBox651.Text);
        cmd42.Parameters.AddWithValue("@roughness", TextBox652.Text);
        cmd42.Parameters.AddWithValue("@screen", TextBox653.Text);
        cmd42.Parameters.AddWithValue("@stylusangle", TextBox654.Text);
        cmd42.Parameters.AddWithValue("@depth", TextBox655.Text);
        cmd42.Parameters.AddWithValue("@cellwallvolume", TextBox656.Text);
        cmd42.Parameters.AddWithValue("@channel", TextBox657.Text);
        cmd42.Parameters.AddWithValue("@engravingtype", TextBox658.Text);
        cmd42.Parameters.AddWithValue("@stretchfactor", TextBox659.Text);
        cmd42.Parameters.AddWithValue("@chromelayerthickness", TextBox660.Text);
        cmd42.Parameters.AddWithValue("@xdiagonal", TextBox661.Text);
        cmd42.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);





        try
        {
            dbConn42.Open();
            int updated42 = cmd42.ExecuteNonQuery();
            //Label42.Visible = true;
            // Label42.Text = updated.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.




        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn42.Close();
        }



        string updateSQL43;
        updateSQL43 = "UPDATE job_cylinder set ";



        updateSQL43 += "posino=@posino,colour=@colour,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,cylinderfacewidth=@cylinderfacewidth,";
        updateSQL43 += "roughness=@roughness,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,channel=@channel,engravingtype=@engravingtype, stretchfactor=@stretchfactor,  chromelayerthickness=@chromelayerthickness , xdiagonal=@xdiagonal WHERE pid ='" + Session["DatakeyValue"] + "' and unit='4' ";








        dbConn43.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd43.Connection = dbConn43;
        cmd43.CommandText = updateSQL43;
        cmd43.CommandType = CommandType.Text;



        cmd43.Parameters.AddWithValue("@posino", TextBox662.Text);
        cmd43.Parameters.AddWithValue("@colour", TextBox663.Text);
        cmd43.Parameters.AddWithValue("@cylinderdiameter", TextBox664.Text);
        cmd43.Parameters.AddWithValue("@circumference", TextBox665.Text);
        cmd43.Parameters.AddWithValue("@printwidth", TextBox667.Text);
        cmd43.Parameters.AddWithValue("@referencecolour", TextBox668.Text);
        cmd43.Parameters.AddWithValue("@cylinderfacewidth", TextBox669.Text);
        cmd43.Parameters.AddWithValue("@roughness", TextBox670.Text);
        cmd43.Parameters.AddWithValue("@screen", TextBox671.Text);
        cmd43.Parameters.AddWithValue("@stylusangle", TextBox672.Text);
        cmd43.Parameters.AddWithValue("@depth", TextBox673.Text);
        cmd43.Parameters.AddWithValue("@cellwallvolume", TextBox674.Text);
        cmd43.Parameters.AddWithValue("@channel", TextBox675.Text);
        cmd43.Parameters.AddWithValue("@engravingtype", TextBox676.Text);
        cmd43.Parameters.AddWithValue("@stretchfactor", TextBox677.Text);
        cmd43.Parameters.AddWithValue("@chromelayerthickness", TextBox678.Text);
        cmd43.Parameters.AddWithValue("@xdiagonal", TextBox679.Text);
        cmd43.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);







        try
        {
            dbConn43.Open();
            int updated43 = cmd43.ExecuteNonQuery();
            //Label42.Visible = true;
            // Label42.Text = updated43.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.



        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn43.Close();
        }




        string updateSQL45;
        updateSQL45 = "UPDATE job_cylinder set ";




        updateSQL45 += "posino=@posino,colour=@colour,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,xdiagonal=@xdiagonal,engravingtype=@engravingtype,";
        updateSQL45 += " stretchfactor=@stretchfactor,channel=@channel,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,";
        updateSQL45 += "cylinderfacewidth=@cylinderfacewidth,roughness=@roughness,chromelayerthickness=@chromelayerthickness   WHERE pid ='" + Session["DatakeyValue"] + "' and unit='5' ";

        dbConn45.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd45.Connection = dbConn45;
        cmd45.CommandText = updateSQL45;
        cmd45.CommandType = CommandType.Text;





        cmd45.Parameters.AddWithValue("@posino", TextBox680.Text);
        cmd45.Parameters.AddWithValue("@colour", TextBox681.Text);
        cmd45.Parameters.AddWithValue("@cylinderdiameter", TextBox682.Text);
        cmd45.Parameters.AddWithValue("@circumference", TextBox683.Text);
        cmd45.Parameters.AddWithValue("@printwidth", TextBox684.Text);
        cmd45.Parameters.AddWithValue("@referencecolour", TextBox685.Text);
        cmd45.Parameters.AddWithValue("@cylinderfacewidth", TextBox686.Text);
        cmd45.Parameters.AddWithValue("@roughness", TextBox687.Text);
        cmd45.Parameters.AddWithValue("@screen", TextBox688.Text);
        cmd45.Parameters.AddWithValue("@stylusangle", TextBox689.Text);
        cmd45.Parameters.AddWithValue("@depth", TextBox1670.Text);
        cmd45.Parameters.AddWithValue("@cellwallvolume", TextBox1671.Text);
        cmd45.Parameters.AddWithValue("@channel", TextBox1672.Text);
        cmd45.Parameters.AddWithValue("@engravingtype", TextBox1673.Text);
        cmd45.Parameters.AddWithValue("@stretchfactor", TextBox1674.Text);
        cmd45.Parameters.AddWithValue("@chromelayerthickness", TextBox1675.Text);
        cmd45.Parameters.AddWithValue("@xdiagonal", TextBox1676.Text);
        cmd45.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);









        try
        {
            dbConn45.Open();
            int updated45 = cmd45.ExecuteNonQuery();
            //Label45.Visible = true;
            // Label45.Text = updated.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.




        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn45.Close();
        }




        string updateSQL46;
        updateSQL46 = "UPDATE job_cylinder set ";









        updateSQL46 += "posino=@posino,colour=@colour,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,xdiagonal=@xdiagonal,engravingtype=@engravingtype,";
        updateSQL46 += " stretchfactor=@stretchfactor,channel=@channel,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,";
        updateSQL46 += "cylinderfacewidth=@cylinderfacewidth,roughness=@roughness,chromelayerthickness=@chromelayerthickness   WHERE pid ='" + Session["DatakeyValue"] + "' and unit='6' ";

        dbConn46.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd46.Connection = dbConn46;
        cmd46.CommandText = updateSQL46;
        cmd46.CommandType = CommandType.Text;




        cmd46.Parameters.AddWithValue("@posino", TextBox1677.Text);
        cmd46.Parameters.AddWithValue("@colour", TextBox1678.Text);
        cmd46.Parameters.AddWithValue("@cylinderdiameter", TextBox1679.Text);
        cmd46.Parameters.AddWithValue("@circumference", TextBox1680.Text);
        cmd46.Parameters.AddWithValue("@printwidth", TextBox1681.Text);
        cmd46.Parameters.AddWithValue("@referencecolour", TextBox1682.Text);
        cmd46.Parameters.AddWithValue("@cylinderfacewidth", TextBox1683.Text);
        cmd46.Parameters.AddWithValue("@roughness", TextBox1684.Text);
        cmd46.Parameters.AddWithValue("@screen", TextBox1685.Text);
        cmd46.Parameters.AddWithValue("@stylusangle", TextBox1686.Text);
        cmd46.Parameters.AddWithValue("@depth", TextBox1687.Text);
        cmd46.Parameters.AddWithValue("@cellwallvolume", TextBox1688.Text);
        cmd46.Parameters.AddWithValue("@channel", TextBox1689.Text);
        cmd46.Parameters.AddWithValue("@engravingtype", TextBox1690.Text);
        cmd46.Parameters.AddWithValue("@stretchfactor", TextBox1691.Text);
        cmd46.Parameters.AddWithValue("@chromelayerthickness", TextBox1692.Text);
        cmd46.Parameters.AddWithValue("@xdiagonal", TextBox1693.Text);
        cmd46.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);









        try
        {
            dbConn46.Open();
            int updated46 = cmd46.ExecuteNonQuery();
            //Label46.Visible = true;
            // Label46.Text = updated.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.



        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn46.Close();
        }



        string updateSQL47;
        updateSQL47 = "UPDATE job_cylinder set ";




        updateSQL47 += "posino=@posino,colour=@colour,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,xdiagonal=@xdiagonal,engravingtype=@engravingtype,";
        updateSQL47 += " stretchfactor=@stretchfactor,channel=@channel,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,";
        updateSQL47 += "cylinderfacewidth=@cylinderfacewidth,roughness=@roughness,chromelayerthickness=@chromelayerthickness   WHERE pid ='" + Session["DatakeyValue"] + "' and unit='7' ";

        dbConn47.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd47.Connection = dbConn47;
        cmd47.CommandText = updateSQL47;
        cmd47.CommandType = CommandType.Text;




        cmd47.Parameters.AddWithValue("@posino", TextBox1694.Text);
        cmd47.Parameters.AddWithValue("@colour", TextBox1695.Text);
        cmd47.Parameters.AddWithValue("@cylinderdiameter", TextBox1696.Text);
        cmd47.Parameters.AddWithValue("@circumference", TextBox1697.Text);
        cmd47.Parameters.AddWithValue("@printwidth", TextBox1698.Text);
        cmd47.Parameters.AddWithValue("@referencecolour", TextBox1699.Text);
        cmd47.Parameters.AddWithValue("@cylinderfacewidth", TextBox700.Text);
        cmd47.Parameters.AddWithValue("@roughness", TextBox701.Text);
        cmd47.Parameters.AddWithValue("@screen", TextBox702.Text);
        cmd47.Parameters.AddWithValue("@stylusangle", TextBox703.Text);
        cmd47.Parameters.AddWithValue("@depth", TextBox704.Text);
        cmd47.Parameters.AddWithValue("@cellwallvolume", TextBox705.Text);
        cmd47.Parameters.AddWithValue("@channel", TextBox706.Text);
        cmd47.Parameters.AddWithValue("@engravingtype", TextBox707.Text);
        cmd47.Parameters.AddWithValue("@stretchfactor", TextBox708.Text);
        cmd47.Parameters.AddWithValue("@chromelayerthickness", TextBox709.Text);
        cmd47.Parameters.AddWithValue("@xdiagonal", TextBox710.Text);
        cmd47.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);









        try
        {
            dbConn47.Open();
            int updated47 = cmd47.ExecuteNonQuery();
            //Label47.Visible = true;
            // Label47.Text = updated.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.





        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn47.Close();
        }


        string updateSQL48;
        updateSQL48 = "UPDATE job_cylinder set ";




        updateSQL48 += "posino=@posino,colour=@colour,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,xdiagonal=@xdiagonal,engravingtype=@engravingtype,";
        updateSQL48 += " stretchfactor=@stretchfactor,channel=@channel,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,";
        updateSQL48 += "cylinderfacewidth=@cylinderfacewidth,roughness=@roughness,chromelayerthickness=@chromelayerthickness   WHERE pid ='" + Session["DatakeyValue"] + "' and unit='8' ";

        dbConn48.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd48.Connection = dbConn48;
        cmd48.CommandText = updateSQL48;
        cmd48.CommandType = CommandType.Text;




        cmd48.Parameters.AddWithValue("@posino", TextBox711.Text);
        cmd48.Parameters.AddWithValue("@colour", TextBox712.Text);
        cmd48.Parameters.AddWithValue("@cylinderdiameter", TextBox713.Text);
        cmd48.Parameters.AddWithValue("@circumference", TextBox714.Text);
        cmd48.Parameters.AddWithValue("@printwidth", TextBox715.Text);
        cmd48.Parameters.AddWithValue("@referencecolour", TextBox716.Text);
        cmd48.Parameters.AddWithValue("@cylinderfacewidth", TextBox717.Text);
        cmd48.Parameters.AddWithValue("@roughness", TextBox718.Text);
        cmd48.Parameters.AddWithValue("@screen", TextBox719.Text);
        cmd48.Parameters.AddWithValue("@stylusangle", TextBox720.Text);
        cmd48.Parameters.AddWithValue("@depth", TextBox721.Text);
        cmd48.Parameters.AddWithValue("@cellwallvolume", TextBox722.Text);
        cmd48.Parameters.AddWithValue("@channel", TextBox723.Text);
        cmd48.Parameters.AddWithValue("@engravingtype", TextBox724.Text);
        cmd48.Parameters.AddWithValue("@stretchfactor", TextBox725.Text);
        cmd48.Parameters.AddWithValue("@chromelayerthickness", TextBox726.Text);
        cmd48.Parameters.AddWithValue("@xdiagonal", TextBox727.Text);
        cmd48.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);









        try
        {
            dbConn48.Open();
            int updated48 = cmd48.ExecuteNonQuery();
            //Label48.Visible = true;
            // Label48.Text = updated.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.





        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn48.Close();
        }




        string updateSQL49;
        updateSQL49 = "UPDATE job_cylinder set ";




        updateSQL49 += "posino=@posino,colour=@colour,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,xdiagonal=@xdiagonal,engravingtype=@engravingtype,";
        updateSQL49 += " stretchfactor=@stretchfactor,channel=@channel,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,";
        updateSQL49 += "cylinderfacewidth=@cylinderfacewidth,roughness=@roughness,chromelayerthickness=@chromelayerthickness   WHERE pid ='" + Session["DatakeyValue"] + "' and unit='9' ";

        dbConn49.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd49.Connection = dbConn49;
        cmd49.CommandText = updateSQL49;
        cmd49.CommandType = CommandType.Text;




        cmd49.Parameters.AddWithValue("@posino", TextBox728.Text);
        cmd49.Parameters.AddWithValue("@colour", TextBox729.Text);
        cmd49.Parameters.AddWithValue("@cylinderdiameter", TextBox730.Text);
        cmd49.Parameters.AddWithValue("@circumference", TextBox731.Text);
        cmd49.Parameters.AddWithValue("@printwidth", TextBox732.Text);
        cmd49.Parameters.AddWithValue("@referencecolour", TextBox733.Text);
        cmd49.Parameters.AddWithValue("@cylinderfacewidth", TextBox734.Text);
        cmd49.Parameters.AddWithValue("@roughness", TextBox735.Text);
        cmd49.Parameters.AddWithValue("@screen", TextBox736.Text);
        cmd49.Parameters.AddWithValue("@stylusangle", TextBox737.Text);
        cmd49.Parameters.AddWithValue("@depth", TextBox738.Text);
        cmd49.Parameters.AddWithValue("@cellwallvolume", TextBox739.Text);
        cmd49.Parameters.AddWithValue("@channel", TextBox740.Text);
        cmd49.Parameters.AddWithValue("@engravingtype", TextBox741.Text);
        cmd49.Parameters.AddWithValue("@stretchfactor", TextBox742.Text);
        cmd49.Parameters.AddWithValue("@chromelayerthickness", TextBox743.Text);
        cmd49.Parameters.AddWithValue("@xdiagonal", TextBox744.Text);
        cmd49.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);









        try
        {
            dbConn49.Open();
            int updated49 = cmd49.ExecuteNonQuery();
            //Label49.Visible = true;
            // Label49.Text = updated.ToString() + " records updated.";
            // Call the BindUserDetails to refresh the data.





        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn49.Close();
        }



        string updateSQL50;
        updateSQL50 = "UPDATE job_cylinder set ";




        updateSQL50 += "posino=@posino,colour=@colour,screen=@screen,stylusangle=@stylusangle,depth=@depth,cellwallvolume=@cellwallvolume,xdiagonal=@xdiagonal,engravingtype=@engravingtype,";
        updateSQL50 += " stretchfactor=@stretchfactor,channel=@channel,cylinderdiameter=@cylinderdiameter,circumference=@circumference,printwidth=@printwidth,referencecolour=@referencecolour,";
        updateSQL50 += "cylinderfacewidth=@cylinderfacewidth,roughness=@roughness,chromelayerthickness=@chromelayerthickness   WHERE pid ='" + Session["DatakeyValue"] + "' and unit='10' ";

        dbConn50.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd50.Connection = dbConn50;
        cmd50.CommandText = updateSQL50;
        cmd50.CommandType = CommandType.Text;




        cmd50.Parameters.AddWithValue("@posino", TextBox745.Text);
        cmd50.Parameters.AddWithValue("@colour", TextBox746.Text);
        cmd50.Parameters.AddWithValue("@cylinderdiameter", TextBox747.Text);
        cmd50.Parameters.AddWithValue("@circumference", TextBox748.Text);
        cmd50.Parameters.AddWithValue("@printwidth", TextBox749.Text);
        cmd50.Parameters.AddWithValue("@referencecolour", TextBox750.Text);
        cmd50.Parameters.AddWithValue("@cylinderfacewidth", TextBox751.Text);
        cmd50.Parameters.AddWithValue("@roughness", TextBox752.Text);
        cmd50.Parameters.AddWithValue("@screen", TextBox753.Text);
        cmd50.Parameters.AddWithValue("@stylusangle", TextBox754.Text);
        cmd50.Parameters.AddWithValue("@depth", TextBox755.Text);
        cmd50.Parameters.AddWithValue("@cellwallvolume", TextBox756.Text);
        cmd50.Parameters.AddWithValue("@channel", TextBox757.Text);
        cmd50.Parameters.AddWithValue("@engravingtype", TextBox758.Text);
        cmd50.Parameters.AddWithValue("@stretchfactor", TextBox759.Text);
        cmd50.Parameters.AddWithValue("@chromelayerthickness", TextBox760.Text);
        cmd50.Parameters.AddWithValue("@xdiagonal", TextBox761.Text);
        cmd50.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);









        try
        {
            dbConn50.Open();
            int updated50 = cmd50.ExecuteNonQuery();
            Label42.Visible = true;
            Label42.Text = " records updated.";
            // Call the BindUserDetails to refresh the data.


            Tab9.CssClass = "Initial";
            Tab10.CssClass = "Initial";
            Tab11.CssClass = "Clicked";
            Tab12.CssClass = "Initial";
            Tab13.CssClass = "Initial";
            Tab14.CssClass = "Initial";
            Tab15.CssClass = "Initial";
            MainView2.ActiveViewIndex = 2;
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
            BindDummyRow();

            // Or Set UseAccessibleHeader and HeaderRow TableSection
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn50.Close();
        }











    }
    protected void ImageButton19_Click(object sender, EventArgs e)
    {

        string updateSQL40;
        updateSQL40 = "UPDATE job_ink set ";



        updateSQL40 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL40 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid = '" + Session["DatakeyValue"] + "' and unit='1' ";


        dbConn40.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";



        cmd40.Connection = dbConn40;
        cmd40.CommandText = updateSQL40;
        cmd40.CommandType = CommandType.Text;



        cmd40.Parameters.AddWithValue("@inkcode", TextBox816.Text);
        cmd40.Parameters.AddWithValue("@inkcoverage", TextBox817.Text);
        cmd40.Parameters.AddWithValue("@description", TextBox818.Text);
        cmd40.Parameters.AddWithValue("@gsm", TextBox819.Text);
        cmd40.Parameters.AddWithValue("@price", TextBox820.Text);
        cmd40.Parameters.AddWithValue("@reducer", TextBox821.Text);
        cmd40.Parameters.AddWithValue("@retarder", TextBox822.Text);
        cmd40.Parameters.AddWithValue("@viscosity", TextBox823.Text);
        cmd40.Parameters.AddWithValue("@mediums", TextBox824.Text);
        cmd40.Parameters.AddWithValue("@toners", TextBox825.Text);
        cmd40.Parameters.AddWithValue("@tonerratio", TextBox826.Text);
        cmd40.Parameters.AddWithValue("@additive", TextBox827.Text);
        cmd40.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn40.Open();
            int updated40 = cmd40.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn40.Close();
        }




        string updateSQL41;
        updateSQL41 = "UPDATE job_ink set ";



        updateSQL41 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL41 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='2' ";

        dbConn41.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd41.Connection = dbConn41;
        cmd41.CommandText = updateSQL41;
        cmd41.CommandType = CommandType.Text;



        cmd41.Parameters.AddWithValue("@inkcode", TextBox833.Text);
        cmd41.Parameters.AddWithValue("@inkcoverage", TextBox834.Text);
        cmd41.Parameters.AddWithValue("@description", TextBox835.Text);
        cmd41.Parameters.AddWithValue("@gsm", TextBox836.Text);
        cmd41.Parameters.AddWithValue("@price", TextBox837.Text);
        cmd41.Parameters.AddWithValue("@reducer", TextBox838.Text);
        cmd41.Parameters.AddWithValue("@retarder", TextBox839.Text);
        cmd41.Parameters.AddWithValue("@viscosity", TextBox840.Text);
        cmd41.Parameters.AddWithValue("@mediums", TextBox841.Text);
        cmd41.Parameters.AddWithValue("@toners", TextBox842.Text);
        cmd41.Parameters.AddWithValue("@tonerratio", TextBox843.Text);
        cmd41.Parameters.AddWithValue("@additive", TextBox844.Text);
        cmd41.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn41.Open();
            int updated41 = cmd41.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn41.Close();
        }

        string updateSQL42;
        updateSQL42 = "UPDATE job_ink set ";



        updateSQL42 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL42 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='3' ";


        dbConn42.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";



        cmd42.Connection = dbConn42;
        cmd42.CommandText = updateSQL42;
        cmd42.CommandType = CommandType.Text;



        cmd42.Parameters.AddWithValue("@inkcode", TextBox850.Text);
        cmd42.Parameters.AddWithValue("@inkcoverage", TextBox851.Text);
        cmd42.Parameters.AddWithValue("@description", TextBox852.Text);
        cmd42.Parameters.AddWithValue("@gsm", TextBox853.Text);
        cmd42.Parameters.AddWithValue("@price", TextBox854.Text);
        cmd42.Parameters.AddWithValue("@reducer", TextBox855.Text);
        cmd42.Parameters.AddWithValue("@retarder", TextBox856.Text);
        cmd42.Parameters.AddWithValue("@viscosity", TextBox857.Text);
        cmd42.Parameters.AddWithValue("@mediums", TextBox858.Text);
        cmd42.Parameters.AddWithValue("@toners", TextBox859.Text);
        cmd42.Parameters.AddWithValue("@tonerratio", TextBox860.Text);
        cmd42.Parameters.AddWithValue("@additive", TextBox861.Text);
        cmd42.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn42.Open();
            int updated42 = cmd42.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn42.Close();
        }




        string updateSQL43;
        updateSQL43 = "UPDATE job_ink set ";



        updateSQL43 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL43 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='4' ";

        dbConn43.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";




        cmd43.Connection = dbConn43;
        cmd43.CommandText = updateSQL43;
        cmd43.CommandType = CommandType.Text;



        cmd43.Parameters.AddWithValue("@inkcode", TextBox867.Text);
        cmd43.Parameters.AddWithValue("@inkcoverage", TextBox868.Text);
        cmd43.Parameters.AddWithValue("@description", TextBox869.Text);
        cmd43.Parameters.AddWithValue("@gsm", TextBox870.Text);
        cmd43.Parameters.AddWithValue("@price", TextBox871.Text);
        cmd43.Parameters.AddWithValue("@reducer", TextBox872.Text);
        cmd43.Parameters.AddWithValue("@retarder", TextBox873.Text);
        cmd43.Parameters.AddWithValue("@viscosity", TextBox874.Text);
        cmd43.Parameters.AddWithValue("@mediums", TextBox875.Text);
        cmd43.Parameters.AddWithValue("@toners", TextBox876.Text);
        cmd43.Parameters.AddWithValue("@tonerratio", TextBox877.Text);
        cmd43.Parameters.AddWithValue("@additive", TextBox878.Text);
        cmd43.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn43.Open();
            int updated43 = cmd43.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn43.Close();
        }




        string updateSQL44;
        updateSQL44 = "UPDATE job_ink set ";



        updateSQL44 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL44 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='5' ";

        dbConn44.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";




        cmd44.Connection = dbConn44;
        cmd44.CommandText = updateSQL44;
        cmd44.CommandType = CommandType.Text;



        cmd44.Parameters.AddWithValue("@inkcode", TextBox884.Text);
        cmd44.Parameters.AddWithValue("@inkcoverage", TextBox885.Text);
        cmd44.Parameters.AddWithValue("@description", TextBox886.Text);
        cmd44.Parameters.AddWithValue("@gsm", TextBox887.Text);
        cmd44.Parameters.AddWithValue("@price", TextBox888.Text);
        cmd44.Parameters.AddWithValue("@reducer", TextBox889.Text);
        cmd44.Parameters.AddWithValue("@retarder", TextBox890.Text);
        cmd44.Parameters.AddWithValue("@viscosity", TextBox891.Text);
        cmd44.Parameters.AddWithValue("@mediums", TextBox892.Text);
        cmd44.Parameters.AddWithValue("@toners", TextBox893.Text);
        cmd44.Parameters.AddWithValue("@tonerratio", TextBox894.Text);
        cmd44.Parameters.AddWithValue("@additive", TextBox895.Text);
        cmd44.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn44.Open();
            int updated44 = cmd44.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn44.Close();
        }




        string updateSQL45;
        updateSQL45 = "UPDATE job_ink set ";



        updateSQL45 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL45 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='6' ";

        dbConn45.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";





        cmd45.Connection = dbConn45;
        cmd45.CommandText = updateSQL45;
        cmd45.CommandType = CommandType.Text;



        cmd45.Parameters.AddWithValue("@inkcode", TextBox896.Text);
        cmd45.Parameters.AddWithValue("@inkcoverage", TextBox8961.Text);
        cmd45.Parameters.AddWithValue("@description", TextBox897.Text);
        cmd45.Parameters.AddWithValue("@gsm", TextBox898.Text);
        cmd45.Parameters.AddWithValue("@price", TextBox899.Text);
        cmd45.Parameters.AddWithValue("@reducer", TextBox900.Text);
        cmd45.Parameters.AddWithValue("@retarder", TextBox901.Text);
        cmd45.Parameters.AddWithValue("@viscosity", TextBox902.Text);
        cmd45.Parameters.AddWithValue("@mediums", TextBox903.Text);
        cmd45.Parameters.AddWithValue("@toners", TextBox904.Text);
        cmd45.Parameters.AddWithValue("@tonerratio", TextBox905.Text);
        cmd45.Parameters.AddWithValue("@additive", TextBox906.Text);
        cmd45.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn45.Open();
            int updated45 = cmd45.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn45.Close();
        }

        string updateSQL46;
        updateSQL46 = "UPDATE job_ink set ";



        updateSQL46 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL46 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='7' ";

        dbConn46.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";




        cmd46.Connection = dbConn46;
        cmd46.CommandText = updateSQL46;
        cmd46.CommandType = CommandType.Text;



        cmd46.Parameters.AddWithValue("@inkcode", TextBox907.Text);
        cmd46.Parameters.AddWithValue("@inkcoverage", TextBox908.Text);
        cmd46.Parameters.AddWithValue("@description", TextBox909.Text);
        cmd46.Parameters.AddWithValue("@gsm", TextBox910.Text);
        cmd46.Parameters.AddWithValue("@price", TextBox911.Text);
        cmd46.Parameters.AddWithValue("@reducer", TextBox912.Text);
        cmd46.Parameters.AddWithValue("@retarder", TextBox913.Text);
        cmd46.Parameters.AddWithValue("@viscosity", TextBox914.Text);
        cmd46.Parameters.AddWithValue("@mediums", TextBox915.Text);
        cmd46.Parameters.AddWithValue("@toners", TextBox916.Text);
        cmd46.Parameters.AddWithValue("@tonerratio", TextBox917.Text);
        cmd46.Parameters.AddWithValue("@additive", TextBox918.Text);
        cmd46.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn46.Open();
            int updated46 = cmd46.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn46.Close();
        }


        string updateSQL47;
        updateSQL47 = "UPDATE job_ink set ";



        updateSQL47 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL47 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='8' ";

        dbConn47.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";




        cmd47.Connection = dbConn47;
        cmd47.CommandText = updateSQL47;
        cmd47.CommandType = CommandType.Text;



        cmd47.Parameters.AddWithValue("@inkcode", TextBox919.Text);
        cmd47.Parameters.AddWithValue("@inkcoverage", TextBox920.Text);
        cmd47.Parameters.AddWithValue("@description", TextBox921.Text);
        cmd47.Parameters.AddWithValue("@gsm", TextBox922.Text);
        cmd47.Parameters.AddWithValue("@price", TextBox923.Text);
        cmd47.Parameters.AddWithValue("@reducer", TextBox924.Text);
        cmd47.Parameters.AddWithValue("@retarder", TextBox925.Text);
        cmd47.Parameters.AddWithValue("@viscosity", TextBox926.Text);
        cmd47.Parameters.AddWithValue("@mediums", TextBox927.Text);
        cmd47.Parameters.AddWithValue("@toners", TextBox928.Text);
        cmd47.Parameters.AddWithValue("@tonerratio", TextBox929.Text);
        cmd47.Parameters.AddWithValue("@additive", TextBox930.Text);
        cmd47.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn47.Open();
            int updated47 = cmd47.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn47.Close();
        }




        string updateSQL48;
        updateSQL48 = "UPDATE job_ink set ";



        updateSQL48 += "inkcode=@inkcode,inkcoverage=@inkcoverage, description=@description, gsm=@gsm ,price=@price , reducer=@reducer, retarder=@retarder , viscosity=@viscosity,";
        updateSQL48 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='9' ";

        dbConn48.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";




        cmd48.Connection = dbConn48;
        cmd48.CommandText = updateSQL48;
        cmd48.CommandType = CommandType.Text;



        cmd48.Parameters.AddWithValue("@inkcode", TextBox931.Text);
        cmd48.Parameters.AddWithValue("@inkcoverage", TextBox932.Text);
        cmd48.Parameters.AddWithValue("@description", TextBox933.Text);
        cmd48.Parameters.AddWithValue("@gsm", TextBox934.Text);
        cmd48.Parameters.AddWithValue("@price", TextBox935.Text);
        cmd48.Parameters.AddWithValue("@reducer", TextBox936.Text);
        cmd48.Parameters.AddWithValue("@retarder", TextBox937.Text);
        cmd48.Parameters.AddWithValue("@viscosity", TextBox938.Text);
        cmd48.Parameters.AddWithValue("@mediums", TextBox939.Text);
        cmd48.Parameters.AddWithValue("@toners", TextBox940.Text);
        cmd48.Parameters.AddWithValue("@tonerratio", TextBox941.Text);
        cmd48.Parameters.AddWithValue("@additive", TextBox942.Text);
        cmd48.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn48.Open();
            int updated48 = cmd48.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn48.Close();
        }






        string updateSQL49;
        updateSQL49 = "UPDATE job_ink set ";



        updateSQL49 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL49 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='10' ";


        dbConn49.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";



        cmd49.Connection = dbConn49;
        cmd49.CommandText = updateSQL49;
        cmd49.CommandType = CommandType.Text;



        cmd49.Parameters.AddWithValue("@inkcode", TextBox943.Text);
        cmd49.Parameters.AddWithValue("@inkcoverage", TextBox944.Text);
        cmd49.Parameters.AddWithValue("@description", TextBox945.Text);
        cmd49.Parameters.AddWithValue("@gsm", TextBox946.Text);
        cmd49.Parameters.AddWithValue("@price", TextBox947.Text);
        cmd49.Parameters.AddWithValue("@reducer", TextBox948.Text);
        cmd49.Parameters.AddWithValue("@retarder", TextBox949.Text);
        cmd49.Parameters.AddWithValue("@viscosity", TextBox950.Text);
        cmd49.Parameters.AddWithValue("@mediums", TextBox951.Text);
        cmd49.Parameters.AddWithValue("@toners", TextBox952.Text);
        cmd49.Parameters.AddWithValue("@tonerratio", TextBox953.Text);
        cmd49.Parameters.AddWithValue("@additive", TextBox954.Text);
        cmd49.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn49.Open();
            int updated49 = cmd49.ExecuteNonQuery();


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn49.Close();
        }






        string updateSQL50;
        updateSQL50 = "UPDATE job_ink set ";



        updateSQL50 += "inkcode=@inkcode,inkcoverage=@inkcoverage,description=@description,gsm=@gsm,price=@price,reducer=@reducer,retarder=@retarder,viscosity=@viscosity,";
        updateSQL50 += " mediums=@mediums,toners=@toners,tonerratio=@tonerratio,additive=@additive  WHERE pid ='" + Session["DatakeyValue"] + "' and unit='11' ";

        dbConn50.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";




        cmd50.Connection = dbConn50;
        cmd50.CommandText = updateSQL50;
        cmd50.CommandType = CommandType.Text;



        cmd50.Parameters.AddWithValue("@inkcode", TextBox955.Text);
        cmd50.Parameters.AddWithValue("@inkcoverage", TextBox956.Text);
        cmd50.Parameters.AddWithValue("@description", TextBox957.Text);
        cmd50.Parameters.AddWithValue("@gsm", TextBox958.Text);
        cmd50.Parameters.AddWithValue("@price", TextBox959.Text);
        cmd50.Parameters.AddWithValue("@reducer", TextBox950.Text);
        cmd50.Parameters.AddWithValue("@retarder", TextBox961.Text);
        cmd50.Parameters.AddWithValue("@viscosity", TextBox962.Text);
        cmd50.Parameters.AddWithValue("@mediums", TextBox963.Text);
        cmd50.Parameters.AddWithValue("@toners", TextBox964.Text);
        cmd50.Parameters.AddWithValue("@tonerratio", TextBox965.Text);
        cmd50.Parameters.AddWithValue("@additive", TextBox966.Text);
        cmd50.Parameters.AddWithValue("@pid", Session["DatakeyValue"]);




        try
        {
            dbConn50.Open();
            int updated50 = cmd50.ExecuteNonQuery();
            Label43.Visible = true;
            Label43.Text = " records updated.";
            Tab9.CssClass = "Initial";
            Tab10.CssClass = "Initial";
            Tab11.CssClass = "Initial";
            Tab12.CssClass = "Clicked";
            Tab13.CssClass = "Initial";
            Tab14.CssClass = "Initial";
            Tab15.CssClass = "Initial";
            MainView2.ActiveViewIndex = 3;
        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn50.Close();
        }






    }
    protected void ImageButton20_Click(object sender, EventArgs e)
    {
        string selectSQL721;
          int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        selectSQL721 = " SELECT * FROM job  where  id=' " + Session["DatakeyValue"] + "' ";
        dbConn72.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd72.Connection = dbConn72;
        cmd72.CommandText = selectSQL721;
        cmd72.CommandType = CommandType.Text;

        try
        {
            dbConn72.Open();
            // Response.Write(selectSQL72);
            dr72 = cmd72.ExecuteReader();
            if (dr72.Read())
            {
                Session["idp"] = dr72["id"].ToString();
                Session["kid11"] = dr72["embid"].ToString();
                //Session["kid2"] = dr72["diereferneceno"].ToString();

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
            dbConn72.Close();
        }


        updateSQL = "UPDATE job_emboss  set ";

        updateSQL += "embid=@embid,mandrel=@mandrel,type=@type,circmale=@circmale,circfemale=@circfemale,diameter=@diameter,supplier=@supplier,";
        updateSQL += "supplierno=@supplierno,depth=@depth,height=@height,artworknumber=@artworknumber,calyear=@calyear,month=@month,";
        updateSQL += "datereceived=@datereceived,artworkdate=@artworkdate,country=@country,comment=@comment  WHERE id ='" + Session["kid11"].ToString() + "' ";





        dbConn2.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;



        cmd1.Parameters.AddWithValue("@embid", TextBox1001.Text);
        cmd1.Parameters.AddWithValue("@mandrel", TextBox1002.Text);
        cmd1.Parameters.AddWithValue("@type", TextBox1003.Text);
        cmd1.Parameters.AddWithValue("@circmale", TextBox1004.Text);
        cmd1.Parameters.AddWithValue("@circfemale", TextBox1005.Text);

        cmd1.Parameters.AddWithValue("@diameter", TextBox1006.Text);
        cmd1.Parameters.AddWithValue("@supplier", TextBox1007.Text);
        cmd1.Parameters.AddWithValue("@supplierno", TextBox1008.Text);
        cmd1.Parameters.AddWithValue("@depth", TextBox1009.Text);
        cmd1.Parameters.AddWithValue("@height", TextBox1010.Text);

        cmd1.Parameters.AddWithValue("@artworknumber", TextBox1011.Text);
        cmd1.Parameters.AddWithValue("@calyear", TextBox1012.Text);
        cmd1.Parameters.AddWithValue("@month", TextBox1013.Text);
        cmd1.Parameters.AddWithValue("@datereceived", TextBox1014.Text);
        cmd1.Parameters.AddWithValue("@artworkdate", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@country", TextBox1015.Text);
        cmd1.Parameters.AddWithValue("@comment", TextBox1016.Text);



        try
        {
            dbConn2.Open();
            int updated = cmd1.ExecuteNonQuery();
            Label44.Visible = true;
            Label44.Text = " records updated.";
            Tab9.CssClass = "Initial";
            Tab10.CssClass = "Initial";
            Tab11.CssClass = "Initial";
            Tab12.CssClass = "Initial";
            Tab13.CssClass = "Clicked";
            Tab14.CssClass = "Initial";
            Tab15.CssClass = "Initial";
            MainView2.ActiveViewIndex = 4;
            // Call the BindUserDetails to refresh the data.
            BindDummyRow();

            // Or Set UseAccessibleHeader and HeaderRow TableSection
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn2.Close();
        }
    }
    protected void ImageButton21_Click(object sender, EventArgs e)
    {
        string selectSQL721;
        int id = 0;
        int.TryParse(hfId.Value, out id);
        Session["DatakeyValue"] = id;
        selectSQL721 = " SELECT * FROM job  where  id=' " + Session["DatakeyValue"] + "' ";
        dbConn72.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd72.Connection = dbConn72;
        cmd72.CommandText = selectSQL721;
        cmd72.CommandType = CommandType.Text;

        try
        {
            dbConn72.Open();
            // Response.Write(selectSQL72);
            dr72 = cmd72.ExecuteReader();
            if (dr72.Read())
            {
                Session["idp"] = dr72["id"].ToString();
                // Session["kid11"] = dr72["embid"].ToString();
                Session["kid22"] = dr72["diereferneceno"].ToString();

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
            dbConn72.Close();
        }



        updateSQL = "UPDATE job_die set ";
        updateSQL += "dieno=@dieno,templateno=@templateno,model=@model,type=@type,brassfemaleembossin=@brassfemaleembossin,";
        updateSQL += "brassmaleembossing=@brassmaleembossing,supplier=@supplier,lcutterwidth=@lcutterwidth,lcutterlength=@lcutterlength,comment=@comment,";
        updateSQL += "lmacross=@lmacross,lmaround=@lmaround,caditemidno=@caditemidno,cadrefno=@cadrefno ,cadnoups=@cadnoups,cadpackheight=@cadpackheight,";
        updateSQL += "cadpackwidth=@cadpackwidth,cadpackbreadth=@cadpackbreadth,caddesignheight=@caddesignheight,caddesignwidth=@caddesignwidth,cadgripperwidth=@cadgripperwidth ,";
        updateSQL += "cadgripperlenth=@cadgripperlenth,cadchargenno=@cadchargenno  WHERE id ='" + Session["kid22"] + "' ";
        // updateSQL += "";
        dbConn2.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;



        cmd1.Parameters.AddWithValue("@dieno", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@templateno", TextBox1017.Text);
        cmd1.Parameters.AddWithValue("@model", TextBox1018.Text);
        cmd1.Parameters.AddWithValue("@type", TextBox1019.Text);
        cmd1.Parameters.AddWithValue("@brassfemaleembossin", TextBox1020.Text);

        cmd1.Parameters.AddWithValue("@brassmaleembossing", TextBox1021.Text);
        cmd1.Parameters.AddWithValue("@supplier", TextBox1022.Text);
        cmd1.Parameters.AddWithValue("@lcutterwidth", TextBox1023.Text);
        cmd1.Parameters.AddWithValue("@lcutterlength", TextBox1024.Text);
        cmd1.Parameters.AddWithValue("@comment", TextBox1025.Text);
        cmd1.Parameters.AddWithValue("@lmacross", TextBox1026.Text);
        cmd1.Parameters.AddWithValue("@lmaround", TextBox1027.Text);
        cmd1.Parameters.AddWithValue("@caditemidno", TextBox1028.Text);

        cmd1.Parameters.AddWithValue("@cadrefno", TextBox1029.Text);
        cmd1.Parameters.AddWithValue("@cadnoups", TextBox1030.Text);
        cmd1.Parameters.AddWithValue("@cadpackheight", TextBox1031.Text);
        cmd1.Parameters.AddWithValue("@cadpackwidth", TextBox1032.Text);
        cmd1.Parameters.AddWithValue("@cadpackbreadth", TextBox1033.Text);

        cmd1.Parameters.AddWithValue("@caddesignheight", TextBox1034.Text);
        cmd1.Parameters.AddWithValue("@caddesignwidth", TextBox1035.Text);
        cmd1.Parameters.AddWithValue("@cadgripperwidth", TextBox1036.Text);
        cmd1.Parameters.AddWithValue("@cadgripperlenth", TextBox1037.Text);
        cmd1.Parameters.AddWithValue("@cadchargenno", TextBox1038.Text);






        try
        {
            dbConn2.Open();
            int updated = cmd1.ExecuteNonQuery();
            Label45.Visible = true;
            Label45.Text = " Record Updated.";


            Tab9.CssClass = "Initial";
            Tab10.CssClass = "Initial";
            Tab11.CssClass = "Initial";
            Tab12.CssClass = "Initial";
            Tab13.CssClass = "Initial";
            Tab14.CssClass = "Clicked";
            Tab15.CssClass = "Initial";
            MainView2.ActiveViewIndex = 5;
            // Call the BindUserDetails to refresh the data.
            BindDummyRow();

            // Or Set UseAccessibleHeader and HeaderRow TableSection
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


        }


        catch (Exception err)
        {
            Response.Write(err.ToString());
        }
        finally
        {
            dbConn2.Close();
        }
    }
    protected void ImageButton22_Click(object sender, EventArgs e)
    {



        updateSQL = "UPDATE job  set ";

        updateSQL += "gietzdieref=@gietzdieref,packingperpallet=@packingperpallet,status=@status,cadgietzdie=@cadgietzdie,hotfoilcoverage=@hotfoilcoverage,blockspersheet=@blockspersheet,blockspercarton=@blockspercarton,foilarea=@foilarea,";
        updateSQL += "foilsqm=@foilsqm,sheetlength=@sheetlength,sheetwidth=@sheetwidth   WHERE id ='" + Session["DatakeyValue"] + "' ";




        dbConn2.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";


        cmd1.Connection = dbConn2;
        cmd1.CommandText = updateSQL;
        cmd1.CommandType = CommandType.Text;



        cmd1.Parameters.AddWithValue("@gietzdieref", TextBox1039.Text);
        cmd1.Parameters.AddWithValue("@packingperpallet", TextBox1040.Text);
        cmd1.Parameters.AddWithValue("@status", TextBox1041.Text);
        cmd1.Parameters.AddWithValue("@cadgietzdie", TextBox1042.Text);
        cmd1.Parameters.AddWithValue("@hotfoilcoverage", TextBox1043.Text);

        cmd1.Parameters.AddWithValue("@blockspersheet", TextBox1044.Text);
        cmd1.Parameters.AddWithValue("@blockspercarton", TextBox1045.Text);
        cmd1.Parameters.AddWithValue("@foilarea", TextBox1046.Text);
        cmd1.Parameters.AddWithValue("@foilsqm", TextBox1047.Text);
        cmd1.Parameters.AddWithValue("@sheetlength", TextBox1048.Text);
        cmd1.Parameters.AddWithValue("@sheetwidth", TextBox1049.Text);




        try
        {
            dbConn2.Open();
            int updated = cmd1.ExecuteNonQuery();
            Label46.Visible = true;
            Label46.Text = " records updated.";
            MainView2.ActiveViewIndex = 6;
            Tab9.CssClass = "Clicked";
            Tab10.CssClass = "Initial";
            Tab11.CssClass = "Initial";
            Tab12.CssClass = "Initial";
            Tab13.CssClass = "Initial";
            Tab14.CssClass = "Initial";
            Tab15.CssClass = "Initial";


            // Call the BindUserDetails to refresh the data.
            BindDummyRow();

            // Or Set UseAccessibleHeader and HeaderRow TableSection
            gvDetails.UseAccessibleHeader = true;
            gvDetails.HeaderRow.TableSection = TableRowSection.TableHeader;


        }


        catch (Exception err)
        {
            Response.Redirect(err.Message);
        }
        finally
        {
            dbConn2.Close();
        }



    }


    protected void ImageButton4_Click(object sender, EventArgs e)
    {
        string ids = hfCheckedIds.Value;



        // Response.Write(id1);3
        string selectSQL72;
        selectSQL72 = " SELECT * FROM job  where id=' " + ids + "' ";
        dbConn72.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd72.Connection = dbConn72;
        cmd72.CommandText = selectSQL72;
        cmd72.CommandType = CommandType.Text;

        try
        {
            dbConn72.Open();
            // Response.Write(selectSQL72);
            dr72 = cmd72.ExecuteReader();
            if (dr72.Read())
            {
                Session["idp"] = dr72["id"].ToString();
                Session["kid1"] = dr72["embid"].ToString();
                Session["kid2"] = dr72["diereferneceno"].ToString();

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
            dbConn72.Close();
        }









        SqlConnection con1 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con1;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO Job(pid, description, variant, country, pack, customer, jobnumber,templateno, artworkdate, reprodate, artworknumber,nampak,reproapproveddate, artworkreceiveddate, yields,qtyaround, qtyacross,stretchdoublecut, qtyperrevolution,printtype ,gietzdieref,packingperpallet,status,cadgietzdie,hotfoilcoverage,blockspersheet,blockspercarton,foilarea,foilsqm,sheetlength,sheetwidth)SELECT  pid +''+'-copy', description, variant, country, pack, customer, jobnumber,templateno, artworkdate, reprodate, artworknumber,nampak,reproapproveddate, artworkreceiveddate, yields,qtyaround, qtyacross,stretchdoublecut, qtyperrevolution,printtype ,gietzdieref,packingperpallet,status,cadgietzdie,hotfoilcoverage,blockspersheet,blockspercarton,foilarea,foilsqm,sheetlength,sheetwidth  FROM Job where id ='" + Session["idp"].ToString() + "' ";
        con1.Open();
        cmd.ExecuteNonQuery();
        con1.Close();




        selectSQL = " SELECT TOP 1  id  FROM job  ORDER BY ID DESC ";
        dbConn12.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
        cmd12.Connection = dbConn12;
        cmd12.CommandText = selectSQL;
        cmd12.CommandType = CommandType.Text;

        try
        {
            dbConn12.Open();
            // Response.Write(selectSQL);
            dr12 = cmd12.ExecuteReader();
            if (dr12.Read())
            {
                Label4.Text = dr12["id"].ToString();
                Session["kid"] = Label4.Text;
                //  Response.Write(Session["kid"].ToString());


                SqlConnection con2 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = con2;
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "INSERT INTO Job_cylinder(pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )SELECT 'pid'=(SELECT TOP 1  id  FROM job  ORDER BY ID DESC),posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel  ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit from   Job_cylinder  where pid ='" + Session["idp"].ToString() + "' ";
                con2.Open();
                cmd1.ExecuteNonQuery();







                con2.Close();

                SqlConnection con3 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con3;
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "INSERT INTO Job_material(pid,boardname,materialgsm,materialcode,materialwebwidth,costpersqmeter)SELECT 'pid'=(SELECT TOP 1  id  FROM job  ORDER BY ID DESC),boardname,materialgsm,materialcode,materialwebwidth,costpersqmeter from Job_material where pid ='" + Session["idp"].ToString() + "' ";
                con3.Open();
                cmd2.ExecuteNonQuery();
                con3.Close();

                SqlConnection con4 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
                SqlCommand cmd3 = new SqlCommand();
                cmd3.Connection = con4;
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "INSERT INTO Job_ink(pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, posino, unit)SELECT 'pid'=(SELECT TOP 1  id  FROM job  ORDER BY ID DESC), inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, posino, unit from Job_ink where pid ='" + Session["idp"].ToString() + "' ";
                con4.Open();
                cmd3.ExecuteNonQuery();

                con4.Close();

                SqlConnection con5 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
                SqlCommand cmd4 = new SqlCommand();
                cmd4.Connection = con5;
                cmd4.CommandType = CommandType.Text;
                cmd4.CommandText = "INSERT INTO job_emboss (embid, mandrel,type,circmale, circfemale,diameter,supplier,supplierno,depth,height,artworknumber,calyear, month, datereceived,artworkdate,country, comment)SELECT  embid, mandrel,type,circmale, circfemale,diameter,supplier,supplierno,depth,height,artworknumber,calyear, month, datereceived,artworkdate,country, comment  from Job_emboss where id ='" + Session["kid1"].ToString() + "' ";
                con5.Open();
                cmd4.ExecuteNonQuery();

                string selectSQL112;
                selectSQL112 = " SELECT TOP 1  id  FROM job_emboss  ORDER BY ID DESC ";
                dbConn76.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                cmd76.Connection = dbConn76;
                cmd76.CommandText = selectSQL112;
                cmd76.CommandType = CommandType.Text;

                try
                {
                    dbConn76.Open();
                    // Response.Write(selectSQL);
                    dr76 = cmd76.ExecuteReader();
                    if (dr76.Read())
                    {
                        Session["embid1"] = dr76["id"].ToString();
                        //  Response.Write(Session["embid1"].ToString());
                        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                        using (SqlConnection con63 = new SqlConnection(constr))
                        {
                            string query1 = "UPDATE job   SET embid = @embid  WHERE id ='" + Session["kid"].ToString() + "' ";
                            {
                                cmd63.CommandText = query1;
                                cmd63.Connection = con63;
                                cmd63.CommandType = CommandType.Text;
                                cmd63.Parameters.AddWithValue("@embid", Session["embid1"].ToString());

                                con63.Open();
                                //  Response.Write(query1);
                                cmd63.ExecuteNonQuery();


                                con63.Close();

                            }
                        }


                    }
                    else
                    {
                        //  Label007.Text = "Error @@ Emboss";
                    }

                }
                catch (Exception err)
                {
                    Response.Write(err.ToString());

                }
                finally
                {
                    dbConn76.Close();
                }
                con5.Close();

                SqlConnection con6 = new SqlConnection("data source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
                SqlCommand cmd5 = new SqlCommand();
                cmd5.Connection = con6;
                cmd5.CommandType = CommandType.Text;
                cmd5.CommandText = "INSERT INTO job_die (dieno,templateno,model,type,brassfemaleembossin,brassmaleembossing,supplier,lcutterwidth,lcutterlength,comment,lmacross,lmaround,caditemidno,cadrefno,cadnoups,cadpackheight,cadpackwidth,cadpackbreadth,caddesignheight,caddesignwidth,cadgripperwidth,cadgripperlenth,cadchargenno)Select dieno,templateno,model,type,brassfemaleembossin,brassmaleembossing,supplier,lcutterwidth,lcutterlength,comment,lmacross,lmaround,caditemidno,cadrefno,cadnoups,cadpackheight,cadpackwidth,cadpackbreadth,caddesignheight,caddesignwidth,cadgripperwidth,cadgripperlenth,cadchargenno FROM Job_die where id ='" + Session["kid2"].ToString() + "' ";

                con6.Open();
                cmd5.ExecuteNonQuery();
                string selectSQL142;
                selectSQL142 = " SELECT TOP 1  id  FROM job_die  ORDER BY ID DESC ";
                dbConn77.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                cmd77.Connection = dbConn77;
                cmd77.CommandText = selectSQL142;
                cmd77.CommandType = CommandType.Text;

                try
                {
                    dbConn77.Open();
                    // Response.Write(selectSQL);
                    dr77 = cmd77.ExecuteReader();
                    if (dr77.Read())
                    {
                        Session["refno"] = dr77["id"].ToString();
                        // Response.Write(Session["refno"].ToString());
                        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                        using (SqlConnection con74 = new SqlConnection(constr))
                        {
                            string query = "UPDATE job   SET diereferneceno = @diereferneceno  WHERE id ='" + Session["kid"].ToString() + "' ";
                            {
                                cmd74.CommandText = query;
                                cmd74.Connection = con74;
                                cmd74.CommandType = CommandType.Text;
                                cmd74.Parameters.AddWithValue("@diereferneceno", Session["refno"].ToString());

                                con74.Open();
                                //Response.Write(query);
                                cmd74.ExecuteNonQuery();


                                con74.Close();

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
                    dbConn77.Close();
                }
                con6.Close();


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
            dbConn12.Close();
        }


        //  Response.Redirect("default22.aspx");

        BindDummyRow();
    }




    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));


        updateSQL = "update usertracking set loggedout='" + date1 + "' where username='" + Session["username"].ToString() + "' and loggedin='" + Session["date"].ToString() + "' ";

        dbConn.ConnectionString = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
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






