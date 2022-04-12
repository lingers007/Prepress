


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

using System.Data;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using iTextSharp.tool.xml.html;
using iTextSharp.tool.xml.parser;
using iTextSharp.tool.xml.pipeline.css;
using iTextSharp.tool.xml.pipeline.end;
using iTextSharp.tool.xml.pipeline.html;

public partial class All : System.Web.UI.Page
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

       
        if (Session["1"].ToString() == "1")
        {

            Panel1.Visible = true;
            SqlConnection con = new SqlConnection( "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm = new SqlCommand();
            cm.Connection = con;
            con.Open();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "SELECT id FROM job WHERE id=@id";
            cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label28.Text = Convert.ToString(cm.ExecuteScalar());

          

            selectSQL = " SELECT * FROM job where id ='" + Session["DatakeyValue"] + "' ";
            dbConn1.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd1.Connection = dbConn1;
            cmd1.CommandText = selectSQL;
            cmd1.CommandType = CommandType.Text;
            try
            {
                dbConn1.Open();
                dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    Label7.Text = dr1["pid"].ToString();
                    Label8.Text = dr1["description"].ToString();
                    Label9.Text = dr1["variant"].ToString();
                    Label10.Text = dr1["country"].ToString();
                    Label11.Text = dr1["pack"].ToString();
                    Label12.Text = dr1["customer"].ToString();
                    Label13.Text = dr1["jobnumber"].ToString();
                    Label14.Text = dr1["templateno"].ToString();
                    Label15.Text = dr1["artworkdate"].ToString();
                    Label16.Text = dr1["reprodate"].ToString();
                    Label17.Text = dr1["artworknumber"].ToString();
                    Label18.Text = dr1["nampak"].ToString();
                    Label19.Text = dr1["reproapproveddate"].ToString();
                    Label20.Text = dr1["artworkreceiveddate"].ToString();
                    Label21.Text = dr1["yields"].ToString();
                    Label22.Text = dr1["qtyaround"].ToString();
                    Label23.Text = dr1["qtyacross"].ToString();
                    Label24.Text = dr1["stretchdoublecut"].ToString();
                    Label25.Text = dr1["qtyperrevolution"].ToString();
                    Label26.Text = dr1["printtype"].ToString();
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

        }
        else
        {

            Panel1.Visible = false;
        }





        if (Session["22"].ToString() == "11")
        {

            Panel2.Visible = true;
            SqlConnection con = new SqlConnection("Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm = new SqlCommand();
            cm.Connection = con;
            con.Open();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "SELECT id FROM job WHERE id=@id";
            cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label008.Text = Convert.ToString(cm.ExecuteScalar());
        
            con.Close();
            string selectSQL12;
            selectSQL12 = "SELECT TOP 1 * From (select Top 2 * from job_material  where pid='" +Session["DatakeyValue"] + "' ORDER BY id DESC) x ORDER BY id   ";
            dbConn12.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd12.Connection = dbConn12;
            cmd12.CommandText = selectSQL12;
            cmd12.CommandType = CommandType.Text;

            try
            {
                dbConn12.Open();
          
                dr12 = cmd12.ExecuteReader();
                if (dr12.Read())
                {
                    Label27.Text = dr12["boardname"].ToString();
                    Label280.Text = dr12["materialgsm"].ToString();
                    Label29.Text = dr12["materialcode"].ToString();
                    Label30.Text = dr12["materialwebwidth"].ToString();

                    Label31.Text = dr12["costpersqmeter"].ToString();
                }
                else
                {
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
            dbConn13.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd13.Connection = dbConn13;
            cmd13.CommandText = selectSQL13;
            cmd13.CommandType = CommandType.Text;

            try
            {
                dbConn13.Open();
                dr13 = cmd13.ExecuteReader();
                if (dr13.Read())
                {
                    Label32.Text = dr13["boardname"].ToString();
                    Label33.Text = dr13["materialgsm"].ToString();
                    Label34.Text = dr13["materialcode"].ToString();
                    Label35.Text = dr13["materialwebwidth"].ToString();

                    Label36.Text = dr13["costpersqmeter"].ToString();
                }
                else
                {
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
        else
        {

            Panel2.Visible = false;
        }


        if (Session["33"].ToString() == "11")
        {
            Panel3.Visible = true;

            SqlConnection con = new SqlConnection( "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm = new SqlCommand();
            cm.Connection = con;
            con.Open();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "SELECT id FROM job WHERE id=@id";
            cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label28.Text = Convert.ToString(cm.ExecuteScalar());
            string selectSQL14;
            selectSQL14 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"]+ "' and unit='1' ";
            dbConn14.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd14.Connection = dbConn14;
            cmd14.CommandText = selectSQL14;
            cmd14.CommandType = CommandType.Text;

            try
            {
                dbConn14.Open();
                dr14 = cmd14.ExecuteReader();
                if (dr14.Read())
                {
                    Label46.Text = dr14["posino"].ToString();
                    Label47.Text = dr14["colour"].ToString();
                    Label48.Text = dr14["cylinderdiameter"].ToString();
                    Label49.Text = dr14["circumference"].ToString();
                    Label50.Text = dr14["printwidth"].ToString();
                    Label51.Text = dr14["referencecolour"].ToString();
                    Label52.Text = dr14["cylinderfacewidth"].ToString();
                    Label53.Text = dr14["roughness"].ToString();
                    Label54.Text = dr14["screen"].ToString();
                    Label55.Text = dr14["stylusangle"].ToString();
                    Label56.Text = dr14["depth"].ToString();
                    Label57.Text = dr14["cellwallvolume"].ToString();
                    Label58.Text = dr14["channel"].ToString();
                    Label59.Text = dr14["engravingtype"].ToString();
                    Label60.Text = dr14["stretchfactor"].ToString();
                    Label61.Text = dr14["chromelayerthickness"].ToString();
                    Label62.Text = dr14["xdiagonal"].ToString();
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
            selectSQL15 = " SELECT * FROM job_cylinder where pid ='" + Session["DatakeyValue"] + "' and unit='2' ";
            dbConn15.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd15.Connection = dbConn15;
            cmd15.CommandText = selectSQL15;
            cmd15.CommandType = CommandType.Text;

            try
            {
                dbConn15.Open();
                dr15 = cmd15.ExecuteReader();
                if (dr15.Read())
                {
                    Label63.Text = dr15["posino"].ToString();
                    Label64.Text = dr15["colour"].ToString();
                    Label65.Text = dr15["cylinderdiameter"].ToString();
                    Label66.Text = dr15["circumference"].ToString();
                    Label67.Text = dr15["printwidth"].ToString();
                    Label68.Text = dr15["referencecolour"].ToString();
                    Label69.Text = dr15["cylinderfacewidth"].ToString();
                    Label70.Text = dr15["roughness"].ToString();
                    Label71.Text = dr15["screen"].ToString();
                    Label72.Text = dr15["stylusangle"].ToString();
                    Label73.Text = dr15["depth"].ToString();
                    Label74.Text = dr15["cellwallvolume"].ToString();
                    Label75.Text = dr15["channel"].ToString();
                    Label76.Text = dr15["engravingtype"].ToString();
                    Label77.Text = dr15["stretchfactor"].ToString();
                    Label78.Text = dr15["chromelayerthickness"].ToString();
                    Label79.Text = dr15["xdiagonal"].ToString();
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
            selectSQL16 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='3' ";
            dbConn16.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd16.Connection = dbConn16;
            cmd16.CommandText = selectSQL16;
            cmd16.CommandType = CommandType.Text;

            try
            {
                dbConn16.Open();
                dr16 = cmd16.ExecuteReader();
                if (dr16.Read())
                {

                    Label80.Text = dr16["posino"].ToString();
                    Label81.Text = dr16["colour"].ToString();
                    Label82.Text = dr16["cylinderdiameter"].ToString();
                    Label83.Text = dr16["circumference"].ToString();
                    Label84.Text = dr16["printwidth"].ToString();
                    Label85.Text = dr16["referencecolour"].ToString();
                    Label86.Text = dr16["cylinderfacewidth"].ToString();
                    Label87.Text = dr16["roughness"].ToString();
                    Label88.Text = dr16["screen"].ToString();
                    Label89.Text = dr16["stylusangle"].ToString();
                    Label90.Text = dr16["depth"].ToString();
                    Label91.Text = dr16["cellwallvolume"].ToString();
                    Label92.Text = dr16["channel"].ToString();
                    Label93.Text = dr16["engravingtype"].ToString();
                    Label94.Text = dr16["stretchfactor"].ToString();
                    Label95.Text = dr16["chromelayerthickness"].ToString();
                    Label96.Text = dr16["xdiagonal"].ToString();

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
            selectSQL17 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='4' ";
            dbConn17.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd17.Connection = dbConn17;
            cmd17.CommandText = selectSQL17;
            cmd17.CommandType = CommandType.Text;

            try
            {
                dbConn17.Open();
                dr17 = cmd17.ExecuteReader();
                if (dr17.Read())
                {

                    Label97.Text = dr17["posino"].ToString();
                    Label98.Text = dr17["colour"].ToString();
                    Label99.Text = dr17["cylinderdiameter"].ToString();
                    Label100.Text = dr17["circumference"].ToString();
                    Label101.Text = dr17["printwidth"].ToString();
                    Label102.Text = dr17["referencecolour"].ToString();
                    Label103.Text = dr17["cylinderfacewidth"].ToString();
                    Label104.Text = dr17["roughness"].ToString();
                    Label105.Text = dr17["screen"].ToString();
                    Label106.Text = dr17["stylusangle"].ToString();
                    Label107.Text = dr17["depth"].ToString();
                    Label108.Text = dr17["cellwallvolume"].ToString();
                    Label109.Text = dr17["channel"].ToString();
                    Label110.Text = dr17["engravingtype"].ToString();
                    Label111.Text = dr17["stretchfactor"].ToString();
                    Label112.Text = dr17["chromelayerthickness"].ToString();
                    Label113.Text = dr17["xdiagonal"].ToString();

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
            selectSQL18 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='5' ";
            dbConn18.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd18.Connection = dbConn18;
            cmd18.CommandText = selectSQL18;
            cmd18.CommandType = CommandType.Text;

            try
            {
                dbConn18.Open();
                dr18 = cmd18.ExecuteReader();
                if (dr18.Read())
                {

                    Label114.Text = dr18["posino"].ToString();
                    Label115.Text = dr18["colour"].ToString();
                    Label116.Text = dr18["cylinderdiameter"].ToString();
                    Label117.Text = dr18["circumference"].ToString();
                    Label118.Text = dr18["printwidth"].ToString();
                    Label119.Text = dr18["referencecolour"].ToString();
                    Label120.Text = dr18["cylinderfacewidth"].ToString();
                    Label121.Text = dr18["roughness"].ToString();
                    Label122.Text = dr18["screen"].ToString();
                    Label123.Text = dr18["stylusangle"].ToString();
                    Label124.Text = dr18["depth"].ToString();
                    Label125.Text = dr18["cellwallvolume"].ToString();
                    Label126.Text = dr18["channel"].ToString();
                    Label127.Text = dr18["engravingtype"].ToString();
                    Label128.Text = dr18["stretchfactor"].ToString();
                    Label129.Text = dr18["chromelayerthickness"].ToString();
                    Label130.Text = dr18["xdiagonal"].ToString();

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
            selectSQL19 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='6' ";
            dbConn19.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd19.Connection = dbConn19;
            cmd19.CommandText = selectSQL19;
            cmd19.CommandType = CommandType.Text;

            try
            {
                dbConn19.Open();
                dr19 = cmd19.ExecuteReader();
                if (dr19.Read())
                {

                    Label131.Text = dr19["posino"].ToString();
                    Label132.Text = dr19["colour"].ToString();
                    Label133.Text = dr19["cylinderdiameter"].ToString();
                    Label134.Text = dr19["circumference"].ToString();
                    Label135.Text = dr19["printwidth"].ToString();
                    Label136.Text = dr19["referencecolour"].ToString();
                    Label137.Text = dr19["cylinderfacewidth"].ToString();
                    Label138.Text = dr19["roughness"].ToString();
                    Label139.Text = dr19["screen"].ToString();
                    Label140.Text = dr19["stylusangle"].ToString();
                    Label141.Text = dr19["depth"].ToString();
                    Label142.Text = dr19["cellwallvolume"].ToString();
                    Label143.Text = dr19["channel"].ToString();
                    Label144.Text = dr19["engravingtype"].ToString();
                    Label145.Text = dr19["stretchfactor"].ToString();
                    Label146.Text = dr19["chromelayerthickness"].ToString();
                    Label147.Text = dr19["xdiagonal"].ToString();


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
            selectSQL20 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='7' ";
            dbConn20.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd20.Connection = dbConn20;
            cmd20.CommandText = selectSQL20;
            cmd20.CommandType = CommandType.Text;

            try
            {
                dbConn20.Open();
                dr20 = cmd20.ExecuteReader();
                if (dr20.Read())
                {

                    Label148.Text = dr20["posino"].ToString();
                    Label149.Text = dr20["colour"].ToString();
                    Label150.Text = dr20["cylinderdiameter"].ToString();
                    Label151.Text = dr20["circumference"].ToString();
                    Label152.Text = dr20["printwidth"].ToString();
                    Label153.Text = dr20["referencecolour"].ToString();
                    Label154.Text = dr20["cylinderfacewidth"].ToString();
                    Label155.Text = dr20["roughness"].ToString();
                    Label156.Text = dr20["screen"].ToString();
                    Label157.Text = dr20["stylusangle"].ToString();
                    Label158.Text = dr20["depth"].ToString();
                    Label159.Text = dr20["cellwallvolume"].ToString();
                    Label160.Text = dr20["channel"].ToString();
                    Label161.Text = dr20["engravingtype"].ToString();
                    Label162.Text = dr20["stretchfactor"].ToString();
                    Label163.Text = dr20["chromelayerthickness"].ToString();
                    Label164.Text = dr20["xdiagonal"].ToString();




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
            selectSQL21 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='8' ";
            dbConn21.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd21.Connection = dbConn21;
            cmd21.CommandText = selectSQL21;
            cmd21.CommandType = CommandType.Text;

            try
            {
                dbConn21.Open();
                dr21 = cmd21.ExecuteReader();
                if (dr21.Read())
                {

                    Label165.Text = dr21["posino"].ToString();
                    Label166.Text = dr21["colour"].ToString();
                    Label167.Text = dr21["cylinderdiameter"].ToString();
                    Label168.Text = dr21["circumference"].ToString();
                    Label169.Text = dr21["printwidth"].ToString();
                    Label170.Text = dr21["referencecolour"].ToString();
                    Label171.Text = dr21["cylinderfacewidth"].ToString();
                    Label172.Text = dr21["roughness"].ToString();
                    Label173.Text = dr21["screen"].ToString();
                    Label174.Text = dr21["stylusangle"].ToString();
                    Label175.Text = dr21["depth"].ToString();
                    Label176.Text = dr21["cellwallvolume"].ToString();
                    Label177.Text = dr21["channel"].ToString();
                    Label178.Text = dr21["engravingtype"].ToString();
                    Label179.Text = dr21["stretchfactor"].ToString();
                    Label180.Text = dr21["chromelayerthickness"].ToString();
                    Label181.Text = dr21["xdiagonal"].ToString();





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
            selectSQL22 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='9' ";
            dbConn22.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd22.Connection = dbConn22;
            cmd22.CommandText = selectSQL22;
            cmd22.CommandType = CommandType.Text;

            try
            {
                dbConn22.Open();
                dr22 = cmd22.ExecuteReader();
                if (dr22.Read())
                {

                    Label182.Text = dr22["posino"].ToString();
                    Label183.Text = dr22["colour"].ToString();
                    Label184.Text = dr22["cylinderdiameter"].ToString();
                    Label185.Text = dr22["circumference"].ToString();
                    Label186.Text = dr22["printwidth"].ToString();
                    Label187.Text = dr22["referencecolour"].ToString();
                    Label188.Text = dr22["cylinderfacewidth"].ToString();
                    Label189.Text = dr22["roughness"].ToString();
                    Label190.Text = dr22["screen"].ToString();
                    Label191.Text = dr22["stylusangle"].ToString();
                    Label192.Text = dr22["depth"].ToString();
                    Label193.Text = dr22["cellwallvolume"].ToString();
                    Label194.Text = dr22["channel"].ToString();
                    Label195.Text = dr22["engravingtype"].ToString();
                    Label196.Text = dr22["stretchfactor"].ToString();
                    Label197.Text = dr22["chromelayerthickness"].ToString();
                    Label198.Text = dr22["xdiagonal"].ToString();






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
            selectSQL23 = " SELECT * FROM job_cylinder where pid ='" +Session["DatakeyValue"] + "' and unit='10' ";
            dbConn23.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd23.Connection = dbConn23;
            cmd23.CommandText = selectSQL23;
            cmd23.CommandType = CommandType.Text;

            try
            {
                dbConn23.Open();
                dr23 = cmd23.ExecuteReader();
                if (dr23.Read())
                {
                    Label199.Text = dr23["posino"].ToString();
                    Label200.Text = dr23["colour"].ToString();
                    Label201.Text = dr23["cylinderdiameter"].ToString();
                    Label202.Text = dr23["circumference"].ToString();
                    Label203.Text = dr23["printwidth"].ToString();
                    Label204.Text = dr23["referencecolour"].ToString();
                    Label205.Text = dr23["cylinderfacewidth"].ToString();
                    Label206.Text = dr23["roughness"].ToString();
                    Label207.Text = dr23["screen"].ToString();
                    Label208.Text = dr23["stylusangle"].ToString();
                    Label209.Text = dr23["depth"].ToString();
                    Label210.Text = dr23["cellwallvolume"].ToString();
                    Label211.Text = dr23["channel"].ToString();
                    Label212.Text = dr23["engravingtype"].ToString();
                    Label213.Text = dr23["stretchfactor"].ToString();
                    Label214.Text = dr23["chromelayerthickness"].ToString();
                    Label215.Text = dr23["xdiagonal"].ToString();







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
        else
        {
            Panel3.Visible = false;
        }

        if (Session["44"].ToString() == "11")
        {
            Panel4.Visible = true;

            string selectSQL14;
            selectSQL14 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='1' ";
            dbConn14.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd14.Connection = dbConn14;
            cmd14.CommandText = selectSQL14;
            cmd14.CommandType = CommandType.Text;

            try
            {
                dbConn14.Open();
                dr14 = cmd14.ExecuteReader();
                if (dr14.Read())
                {
                    Label216.Text = dr14["inkcode"].ToString();
                    Label217.Text = dr14["inkcoverage"].ToString();
                    Label218.Text = dr14["description"].ToString();
                    Label219.Text = dr14["gsm"].ToString();
                    Label220.Text = dr14["price"].ToString();
                    Label221.Text = dr14["reducer"].ToString();
                    Label222.Text = dr14["retarder"].ToString();
                    Label223.Text = dr14["viscosity"].ToString();
                    Label224.Text = dr14["mediums"].ToString();
                    Label225.Text = dr14["toners"].ToString();
                    Label226.Text = dr14["tonerratio"].ToString();
                    Label227.Text = dr14["additive"].ToString();
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
            selectSQL15 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='2' ";
            dbConn15.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd15.Connection = dbConn15;
            cmd15.CommandText = selectSQL15;
            cmd15.CommandType = CommandType.Text;

            try
            {
                dbConn15.Open();
                dr15 = cmd15.ExecuteReader();
                if (dr15.Read())
                {


                    Label233.Text = dr15["inkcode"].ToString();
                    Label234.Text = dr15["inkcoverage"].ToString();
                    Label235.Text = dr15["description"].ToString();
                    Label236.Text = dr15["gsm"].ToString();
                    Label237.Text = dr15["price"].ToString();
                    Label238.Text = dr15["reducer"].ToString();
                    Label239.Text = dr15["retarder"].ToString();
                    Label240.Text = dr15["viscosity"].ToString();
                    Label241.Text = dr15["mediums"].ToString();
                    Label242.Text = dr15["toners"].ToString();
                    Label243.Text = dr15["tonerratio"].ToString();
                    Label244.Text = dr15["additive"].ToString();
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
            selectSQL16 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='3' ";
            dbConn16.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd16.Connection = dbConn16;
            cmd16.CommandText = selectSQL16;
            cmd16.CommandType = CommandType.Text;

            try
            {
                dbConn16.Open();
                dr16 = cmd16.ExecuteReader();
                if (dr16.Read())
                {

                    Label250.Text = dr16["inkcode"].ToString();
                    Label251.Text = dr16["inkcoverage"].ToString();
                    Label252.Text = dr16["description"].ToString();
                    Label253.Text = dr16["gsm"].ToString();
                    Label254.Text = dr16["price"].ToString();
                    Label255.Text = dr16["reducer"].ToString();
                    Label256.Text = dr16["retarder"].ToString();
                    Label257.Text = dr16["viscosity"].ToString();
                    Label258.Text = dr16["mediums"].ToString();
                    Label259.Text = dr16["toners"].ToString();
                    Label260.Text = dr16["tonerratio"].ToString();
                    Label261.Text = dr16["additive"].ToString();

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
            selectSQL17 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='4' ";
            dbConn17.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd17.Connection = dbConn17;
            cmd17.CommandText = selectSQL17;
            cmd17.CommandType = CommandType.Text;

            try
            {
                dbConn17.Open();
                dr17 = cmd17.ExecuteReader();
                if (dr17.Read())
                {

                    Label267.Text = dr17["inkcode"].ToString();
                    Label268.Text = dr17["inkcoverage"].ToString();
                    Label269.Text = dr17["description"].ToString();
                    Label270.Text = dr17["gsm"].ToString();
                    Label271.Text = dr17["price"].ToString();
                    Label272.Text = dr17["reducer"].ToString();
                    Label273.Text = dr17["retarder"].ToString();
                    Label274.Text = dr17["viscosity"].ToString();
                    Label275.Text = dr17["mediums"].ToString();
                    Label276.Text = dr17["toners"].ToString();
                    Label277.Text = dr17["tonerratio"].ToString();
                    Label278.Text = dr17["additive"].ToString();

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
            selectSQL18 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='5' ";
            dbConn18.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd18.Connection = dbConn18;
            cmd18.CommandText = selectSQL18;
            cmd18.CommandType = CommandType.Text;

            try
            {
                dbConn18.Open();
                dr18 = cmd18.ExecuteReader();
                if (dr18.Read())
                {
                    Label284.Text = dr18["inkcode"].ToString();
                    Label285.Text = dr18["inkcoverage"].ToString();
                    Label286.Text = dr18["description"].ToString();
                    Label287.Text = dr18["gsm"].ToString();
                    Label288.Text = dr18["price"].ToString();
                    Label289.Text = dr18["reducer"].ToString();
                    Label290.Text = dr18["retarder"].ToString();
                    Label291.Text = dr18["viscosity"].ToString();
                    Label292.Text = dr18["mediums"].ToString();
                    Label293.Text = dr18["toners"].ToString();
                    Label294.Text = dr18["tonerratio"].ToString();
                    Label295.Text = dr18["additive"].ToString();

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
            selectSQL19 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='6' ";
            dbConn19.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd19.Connection = dbConn19;
            cmd19.CommandText = selectSQL19;
            cmd19.CommandType = CommandType.Text;

            try
            {
                dbConn19.Open();
                dr19 = cmd19.ExecuteReader();
                if (dr19.Read())
                {
                    Label301.Text = dr19["inkcode"].ToString();
                    Label302.Text = dr19["inkcoverage"].ToString();
                    Label303.Text = dr19["description"].ToString();
                    Label304.Text = dr19["gsm"].ToString();
                    Label305.Text = dr19["price"].ToString();
                    Label306.Text = dr19["reducer"].ToString();
                    Label307.Text = dr19["retarder"].ToString();
                    Label308.Text = dr19["viscosity"].ToString();
                    Label309.Text = dr19["mediums"].ToString();
                    Label310.Text = dr19["toners"].ToString();
                    Label311.Text = dr19["tonerratio"].ToString();
                    Label312.Text = dr19["additive"].ToString();

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
            selectSQL20 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='7' ";
            dbConn20.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd20.Connection = dbConn20;
            cmd20.CommandText = selectSQL20;
            cmd20.CommandType = CommandType.Text;

            try
            {
                dbConn20.Open();
                dr20 = cmd20.ExecuteReader();
                if (dr20.Read())
                {

                    Label318.Text = dr20["inkcode"].ToString();
                    Label319.Text = dr20["inkcoverage"].ToString();
                    Label320.Text = dr20["description"].ToString();
                    Label321.Text = dr20["gsm"].ToString();
                    Label322.Text = dr20["price"].ToString();
                    Label323.Text = dr20["reducer"].ToString();
                    Label324.Text = dr20["retarder"].ToString();
                    Label325.Text = dr20["viscosity"].ToString();
                    Label326.Text = dr20["mediums"].ToString();
                    Label327.Text = dr20["toners"].ToString();
                    Label328.Text = dr20["tonerratio"].ToString();
                    Label329.Text = dr20["additive"].ToString();
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
            selectSQL21 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='8' ";
            dbConn21.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd21.Connection = dbConn21;
            cmd21.CommandText = selectSQL21;
            cmd21.CommandType = CommandType.Text;

            try
            {
                dbConn21.Open();
                dr21 = cmd21.ExecuteReader();
                if (dr21.Read())
                {
                    Label335.Text = dr21["inkcode"].ToString();
                    Label336.Text = dr21["inkcoverage"].ToString();
                    Label337.Text = dr21["description"].ToString();
                    Label338.Text = dr21["gsm"].ToString();
                    Label339.Text = dr21["price"].ToString();
                    Label340.Text = dr21["reducer"].ToString();
                    Label341.Text = dr21["retarder"].ToString();
                    Label342.Text = dr21["viscosity"].ToString();
                    Label343.Text = dr21["mediums"].ToString();
                    Label344.Text = dr21["toners"].ToString();
                    Label345.Text = dr21["tonerratio"].ToString();
                    Label346.Text = dr21["additive"].ToString();

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
            dbConn22.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd22.Connection = dbConn22;
            cmd22.CommandText = selectSQL22;
            cmd22.CommandType = CommandType.Text;

            try
            {
                dbConn22.Open();
                dr22 = cmd22.ExecuteReader();
                if (dr22.Read())
                {

                    Label352.Text = dr22["inkcode"].ToString();
                    Label353.Text = dr22["inkcoverage"].ToString();
                    Label354.Text = dr22["description"].ToString();
                    Label355.Text = dr22["gsm"].ToString();
                    Label356.Text = dr22["price"].ToString();
                    Label357.Text = dr22["reducer"].ToString();
                    Label358.Text = dr22["retarder"].ToString();
                    Label359.Text = dr22["viscosity"].ToString();
                    Label360.Text = dr22["mediums"].ToString();
                    Label361.Text = dr22["toners"].ToString();
                    Label362.Text = dr22["tonerratio"].ToString();
                    Label363.Text = dr22["additive"].ToString();

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
            selectSQL23 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='10' ";
            dbConn23.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd23.Connection = dbConn23;
            cmd23.CommandText = selectSQL23;
            cmd23.CommandType = CommandType.Text;

            try
            {
                dbConn23.Open();
                dr23 = cmd23.ExecuteReader();
                if (dr23.Read())
                {
                    Label381.Text = dr23["inkcode"].ToString();
                    Label382.Text = dr23["inkcoverage"].ToString();
                    Label383.Text = dr23["description"].ToString();
                    Label384.Text = dr23["gsm"].ToString();
                    Label385.Text = dr23["price"].ToString();
                    Label386.Text = dr23["reducer"].ToString();
                    Label387.Text = dr23["retarder"].ToString();
                    Label388.Text = dr23["viscosity"].ToString();
                    Label389.Text = dr23["mediums"].ToString();
                    Label390.Text = dr23["toners"].ToString();
                    Label391.Text = dr23["tonerratio"].ToString();
                    Label392.Text = dr23["additive"].ToString();

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
            selectSQL24 = " SELECT * FROM job_ink where pid ='" +Session["DatakeyValue"] + "' and unit='11' ";
            dbConn24.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd24.Connection = dbConn24;
            cmd24.CommandText = selectSQL24;
            cmd24.CommandType = CommandType.Text;

            try
            {
                dbConn24.Open();
                dr24 = cmd24.ExecuteReader();
                if (dr24.Read())
                {
                    Label369.Text = dr24["inkcode"].ToString();
                    Label370.Text = dr24["inkcoverage"].ToString();
                    Label371.Text = dr24["description"].ToString();
                    Label372.Text = dr24["gsm"].ToString();
                    Label373.Text = dr24["price"].ToString();
                    Label374.Text = dr24["reducer"].ToString();
                    Label375.Text = dr24["retarder"].ToString();
                    Label376.Text = dr24["viscosity"].ToString();
                    Label377.Text = dr24["mediums"].ToString();
                    Label378.Text = dr24["toners"].ToString();


                    Label379.Text = dr24["tonerratio"].ToString();
                    Label380.Text = dr24["additive"].ToString();



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
        else
        {
            Panel4.Visible = false;
        }

        if (Session["55"].ToString() == "11")
        {
            Panel5.Visible = true;
            SqlConnection con = new SqlConnection( "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm = new SqlCommand();
            cm.Connection = con;
            con.Open();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "SELECT embid   FROM job WHERE id=@id";
            cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label009.Text = Convert.ToString(cm.ExecuteScalar());
           

            string selectSQL11;
            selectSQL11 = " SELECT * FROM job_emboss where id ='" + Label009.Text + "' ";
            dbConn11.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd11.Connection = dbConn11;
            cmd11.CommandText = selectSQL11;
            cmd11.CommandType = CommandType.Text;

            try
            {
                dbConn11.Open();
                dr11 = cmd11.ExecuteReader();
                if (dr11.Read())
                {

                    Label1001.Text = dr11["embid"].ToString();
                    Label1002.Text = dr11["mandrel"].ToString();
                    Label1003.Text = dr11["type"].ToString();
                    Label1004.Text = dr11["circmale"].ToString();
                    Label1005.Text = dr11["circfemale"].ToString();
                    Label1006.Text = dr11["diameter"].ToString();
                    Label1007.Text = dr11["supplier"].ToString();
                    Label1008.Text = dr11["supplierno"].ToString();
                    Label1009.Text = dr11["depth"].ToString();
                    Label1010.Text = dr11["height"].ToString();
                    Label1011.Text = dr11["artworknumber"].ToString();
                    Label1012.Text = dr11["calyear"].ToString();
                    Label1013.Text = dr11["month"].ToString();
                    Label1014.Text = dr11["datereceived"].ToString();
                    Label1.Text = dr11["artworkdate"].ToString();
                    Label1015.Text = dr11["country"].ToString();
                    Label1016.Text = dr11["comment"].ToString();

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
        else
        {
            Panel5.Visible = false;
        }
        if (Session["66"].ToString() == "11")
        {
            Panel6.Visible = true;
            SqlConnection con = new SqlConnection( "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm = new SqlCommand();
            cm.Connection = con;
            con.Open();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "SELECT diereferneceno FROM job WHERE id=@id";
            cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label010.Text = Convert.ToString(cm.ExecuteScalar());
         

            string selectSQL26;
            selectSQL26 = " SELECT * FROM job_die where id ='" + Label010.Text + "' ";
            dbConn26.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd26.Connection = dbConn26;
            cmd26.CommandText = selectSQL26;
            cmd26.CommandType = CommandType.Text;

            try
            {
                dbConn26.Open();
                dr26 = cmd26.ExecuteReader();
                if (dr26.Read())
                {
                    Label2.Text = dr26["dieno"].ToString();
                    Label1017.Text = dr26["templateno"].ToString();
                    Label1018.Text = dr26["model"].ToString();
                    Label1019.Text = dr26["type"].ToString();
                    Label1020.Text = dr26["brassfemaleembossin"].ToString();
                    Label1021.Text = dr26["brassmaleembossing"].ToString();
                    Label1022.Text = dr26["supplier"].ToString();
                    Label1023.Text = dr26["lcutterwidth"].ToString();
                    Label1024.Text = dr26["lcutterlength"].ToString();
                    Label1025.Text = dr26["comment"].ToString();
                    Label1026.Text = dr26["lmacross"].ToString();
                    Label1027.Text = dr26["lmaround"].ToString();
                    Label1028.Text = dr26["caditemidno"].ToString();
                    Label1029.Text = dr26["cadrefno"].ToString();
                    Label1030.Text = dr26["cadnoups"].ToString();
                    Label1031.Text = dr26["cadpackheight"].ToString();
                    Label1032.Text = dr26["cadpackwidth"].ToString();
                    Label1033.Text = dr26["cadpackbreadth"].ToString();
                    Label1034.Text = dr26["caddesignheight"].ToString();
                    Label1035.Text = dr26["caddesignwidth"].ToString();
                    Label1036.Text = dr26["cadgripperwidth"].ToString();
                    Label1037.Text = dr26["cadgripperlenth"].ToString();
                    Label1038.Text = dr26["cadchargenno"].ToString();


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
        else
        {
            Panel6.Visible = false;
        }

       if  (Session["77"].ToString() == "77")
        {
            Panel7.Visible = true;
            SqlConnection con = new SqlConnection( "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ");
            SqlCommand cm = new SqlCommand();
            cm.Connection = con;
            con.Open();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "SELECT id FROM job WHERE id=@id";
            cm.Parameters.AddWithValue("@id", Session["DatakeyValue"]);
            Label011.Text = Convert.ToString(cm.ExecuteScalar());
            con.Close();
         
            string selectSQL12;
            selectSQL12 = " SELECT * FROM job where id ='" + Session["DatakeyValue"] + "' ";
            dbConn12.ConnectionString =  "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
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
                    Label1039.Text = dr12["gietzdieref"].ToString();
                    Label1040.Text = dr12["packingperpallet"].ToString();
                    Label1041.Text = dr12["status"].ToString();
                    Label1042.Text = dr12["cadgietzdie"].ToString();
                    Label1043.Text = dr12["hotfoilcoverage"].ToString();
                    Label1044.Text = dr12["blockspersheet"].ToString();
                    Label1045.Text = dr12["blockspercarton"].ToString();
                    Label1046.Text = dr12["foilarea"].ToString();
                    Label1047.Text = dr12["foilsqm"].ToString();
                    Label1048.Text = dr12["sheetlength"].ToString();
                    Label1049.Text = dr12["sheetwidth"].ToString();

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
        }
        else
        {
            Panel7.Visible = false;
        }

    }
    protected void btnExport_Click(object sender, EventArgs e)
    {
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        pnlPerson.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 0f, 0f, 0f, 0f);
       // Document pdfDoc = new Document();
        PdfWriter PdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        HtmlPipelineContext htmlContext = new HtmlPipelineContext(null);
        htmlContext.SetTagFactory(Tags.GetHtmlTagProcessorFactory());
        ICSSResolver cssResolver = XMLWorkerHelper.GetInstance().GetDefaultCssResolver(false);
        cssResolver.AddCssFile(Server.MapPath("~/StyleSheet.css"), true);
        IPipeline pipeline = new CssResolverPipeline(cssResolver, new HtmlPipeline(htmlContext, new PdfWriterPipeline(pdfDoc, PdfWriter)));
        var worker = new XMLWorker(pipeline, true);
        var xmlParse = new XMLParser(true, worker);
        pdfDoc.Open();
        xmlParse.Parse(sr);
        xmlParse.Flush();
        pdfDoc.Close();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Write(pdfDoc);
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void PRINT(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this.Page, typeof(string), "print", "window.print();", true);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ggg.aspx");
    }
}