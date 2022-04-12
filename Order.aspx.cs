



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

public partial class Order : System.Web.UI.Page
{
        
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd11 = new SqlCommand();
    SqlCommand cmd111 = new SqlCommand();
    SqlCommand cmd1111 = new SqlCommand();
  SqlCommand cmd4004 = new SqlCommand();
    SqlDataReader dr11, dr111, dr1111,dr4004;

    
    SqlConnection dbConn4004 = new SqlConnection();
    SqlConnection dbConn11 = new SqlConnection();
    SqlConnection dbConn111 = new SqlConnection();
    SqlConnection dbConn1111 = new SqlConnection();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd22 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd2222 = new SqlCommand();
    SqlCommand cmd222 = new SqlCommand();
    SqlCommand cmd33 = new SqlCommand();
    SqlCommand cmd3333 = new SqlCommand();
    SqlCommand cmd333 = new SqlCommand();
    SqlCommand cmd44 = new SqlCommand();
    SqlCommand cmd4444 = new SqlCommand();
    SqlCommand cmd444 = new SqlCommand();
    SqlCommand cmd55 = new SqlCommand();
    SqlCommand cmd555 = new SqlCommand();
    SqlCommand cmd5555 = new SqlCommand();


    SqlCommand cmd66 = new SqlCommand();
    SqlCommand cmd666 = new SqlCommand();
    SqlCommand cmd6666 = new SqlCommand();
    SqlDataReader dr66, dr666, dr6666;

    SqlConnection dbConn66 = new SqlConnection();
    SqlConnection dbConn666 = new SqlConnection();
    SqlConnection dbConn6666 = new SqlConnection();
    SqlCommand cmd77 = new SqlCommand();
    SqlCommand cmd777 = new SqlCommand();
    SqlCommand cmd7777 = new SqlCommand();
    SqlDataReader dr77, dr777, dr7777;
    SqlConnection dbConn77 = new SqlConnection();
    SqlConnection dbConn777 = new SqlConnection();
    SqlConnection dbConn7777 = new SqlConnection();
    SqlCommand cmd88 = new SqlCommand();
    SqlCommand cmd888 = new SqlCommand();
    SqlCommand cmd8888 = new SqlCommand();
    SqlDataReader dr88, dr888, dr8888;

    SqlConnection dbConn88 = new SqlConnection();
    SqlConnection dbConn888 = new SqlConnection();
    SqlConnection dbConn8888 = new SqlConnection();

    SqlCommand cmd99 = new SqlCommand();
    SqlCommand cmd999 = new SqlCommand();
    SqlCommand cmd9999 = new SqlCommand();
    SqlDataReader dr99, dr999, dr9999;

    SqlConnection dbConn99 = new SqlConnection();
    SqlConnection dbConn999 = new SqlConnection();
    SqlConnection dbConn9999 = new SqlConnection();



    SqlCommand cmd00 = new SqlCommand();
    SqlCommand cmd000 = new SqlCommand();
    SqlCommand cmd0000 = new SqlCommand();
    SqlDataReader dr00, dr000, dr0000;

    SqlConnection dbConn00 = new SqlConnection();
    SqlConnection dbConn000 = new SqlConnection();
    SqlConnection dbConn0000 = new SqlConnection();

    SqlConnection dbConn55 = new SqlConnection();
    SqlConnection dbConn555 = new SqlConnection();
    SqlConnection dbConn5555 = new SqlConnection();
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
    SqlDataReader dr1, dr22, dr222, dr2222, dr33, dr333, dr3333, dr44, dr444, dr4444, dr55, dr555, dr5555;
    string selectSQL,selectSQL4004;
    string updateSQL;

    protected void Page_Load(object sender, EventArgs e)
    {

       Label1.Text="";
        Panel1.Visible = true;

        Panel3.Visible = false;
        Panel4.Visible = false;
        Panel5.Visible = false;

        TextBox6.Text =  DateTime.Now.ToString("dd/MM/yyyy");

    }



    [WebMethod]
    public static List<string> GetAutoCompleteData(string searchTerm)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT id,pid,embid,diereferneceno FROM job WHERE pid LIKE '%'+@SearchText+'%'", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText", searchTerm);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1},{2},{3}", dr["pid"], dr["id"], dr["embid"], dr["diereferneceno"]));
                }

                return result;
            }
        }
    }
    
    [WebMethod]
    public static List<string> GetAutoCompleteData1(string searchTerm, string gietzdieref)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
            using (SqlCommand cmd = new SqlCommand("select id,gietzdieref from job   where  pid=@pid  ", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText1", searchTerm);
                cmd.Parameters.AddWithValue("@pid", gietzdieref);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1}", dr["gietzdieref"], dr["id"]));
                }
                return result;
            }
        }
    }
    [WebMethod]
    public static List<string> GetAutoCompleteData31(string searchTerm, string embid)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT id,embid FROM job_emboss WHERE id=@Id", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText", searchTerm);
                cmd.Parameters.AddWithValue("@Id", embid);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1}", dr["embid"], dr["id"]));
                }

                return result;
            }
        }
    }
    [WebMethod]
    public static List<string> GetAutoCompleteData3(string searchTerm, string id)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
         using (SqlCommand cmd = new SqlCommand("select id,pid,posino from job_cylinder where pid=@Id  order by posino asc", con))
  
           
//using (SqlCommand cmd = new SqlCommand("SELECT id,pid,posino FROM job_cylinder ORDER BY CAST(REPLACE(LEFT(posino,CHARINDEX('-',posino)),'-','') AS INT),CAST(LEFT(RIGHT(posino,LEN(posino)-CHARINDEX('-',posino)), PATINDEX('%[^0-9]%', RIGHT(posino,LEN(posino)-CHARINDEX('-',posino))+'.') - 1)  AS INT),RIGHT(posino,LEN(posino)-CHARINDEX('-',posino))", con))

        // using (SqlCommand cmd = new SqlCommand("SELECT id, pid, posino FROM job_cylinder where posino LIKE @SearchText+'%' AND pid=@Id ORDER BY CAST(LEFT(posino, CHARINDEX('-', posino)-1)  AS INT), CAST(LEFT(RIGHT(posino, LEN(posino)-CHARINDEX('-', posino)), PATINDEX('%[^0-9]%', RIGHT(posino, LEN(posino)-CHARINDEX('-', posino))+'.') - 1)  AS INT), RIGHT(posino, LEN(posino)-CHARINDEX('-', posino))", con))
          
// using (SqlCommand cmd = new SqlCommand("SELECT id, pid, posino FROM job_cylinder where posino LIKE @SearchText+'%' AND pid=@Id ORDER BY CAST(LEFT(posino, CHARINDEX('-', posino)-1)  AS INT), CAST(LEFT(RIGHT(posino, LEN(posino)-CHARINDEX('-', posino)), PATINDEX('%[^0-9]%', RIGHT(posino, LEN(posino)-CHARINDEX('-', posino))+'.') - 1)  AS INT), RIGHT(posino, LEN(posino)-CHARINDEX('-', posino))", con))
      
           

           {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText", searchTerm);
                cmd.Parameters.AddWithValue("@Id", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1}", dr["posino"], dr["id"]));
                }
                return result;
            }
        }
    }
    [WebMethod]
    public static List<string> GetAutoCompleteData32(string searchTerm, string diereferneceno)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
           using (SqlCommand cmd = new SqlCommand("select id,dieno from job_die where id=@Diereferneceno order by id asc", con))


            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText", searchTerm);
                cmd.Parameters.AddWithValue("@Diereferneceno", diereferneceno);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1}", dr["dieno"], dr["id"]));
                }
                return result;
            }
        }
    }
    [WebMethod]
    public static List<string> GetAutoCompleteData2(string Company)
    {
        List<string> result = new List<string>();
        using (SqlConnection con = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;"))
        {
            using (SqlCommand cmd = new SqlCommand("select id,Company from Suppliers where Company LIKE '%'+@SearchText2+'%'", con))
            {
                con.Open();
                cmd.Parameters.AddWithValue("@SearchText2", Company);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    result.Add(string.Format("{0}/{1}", dr["Company"], dr["id"]));
                }
                return result;
            }
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedValue == "1")
        {
            Panel1.Visible = true;

            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;

        }

        else if (DropDownList1.SelectedValue == "3")
        {
            Panel1.Visible = false;

            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;


        }
        else if (DropDownList1.SelectedValue == "4")
        {
            Panel1.Visible = false;

            Panel3.Visible = false;
            Panel4.Visible = true;
            Panel5.Visible = false;

        }
        else if (DropDownList1.SelectedValue == "6")
        {
            Panel1.Visible = false;

            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = true;


        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (txtSearch1.Text == "")
        {
            Label2.Text = " Offline Die No Empty";
        }
        else
        {

            SqlConnection con44 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm44 = new SqlCommand();
            cm44.Connection = con44;
            con44.Open();
            cm44.CommandType = CommandType.Text;
            cm44.CommandText = "SELECT id FROM job  WHERE  gietzdieref='" + txtSearch1.Text + "' ";
            cm44.Parameters.AddWithValue("@id", txtSearch1.Text);
            Session["typeid22"] = Convert.ToString(cm44.ExecuteScalar());
            con44.Close();

            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");

            string selectSQL1;
            selectSQL1 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
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
                    Session["1"] = dr1["FinYear"].ToString();
                    Session["2"] = dr1["Year"].ToString();
                    Session["3"] = dr1["Vat"].ToString();


                    string selectSQL22;
                    selectSQL22 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn22.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd22.Connection = dbConn22;
                    cmd22.CommandText = selectSQL22;
                    cmd22.CommandType = CommandType.Text;

                    try
                    {
                        dbConn22.Open();
                        dr22 = cmd22.ExecuteReader();
                        if (dr22.Read())
                        {
                            Session["4"] = dr22["id"].ToString();



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
                        dbConn22.Close();
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
                dbConn1.Close();
            }















            string insertSQL;
            insertSQL = "INSERT INTO Orders (";
            insertSQL += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL += "VALUES('";
            insertSQL += Session["1"] + "','";
            insertSQL += Session["2"] + "','";
            insertSQL += Session["3"] + "','";
            insertSQL += kk + "','";
            insertSQL += Session["4"] + "','";

            insertSQL += TextBox4.Text + "','";
            insertSQL += txtSearch5.Text + "','";
            insertSQL += TextBox6.Text + "','";
            insertSQL += TextBox7.Text + "','";


            insertSQL += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL += TextBox9.Text + "','";
            insertSQL += Session["typeid22"] + "','";
            insertSQL += TextBox2.Text + "','";
            insertSQL += TextBox3.Text + "')";




            String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd1 = new SqlCommand(insertSQL, con);
            int added = 0;

            try
            {
                con.Open();
                added = cmd1.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added == 1)
                {






                    Response.Redirect("OrderConf.aspx");
                }
                else
                {

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
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         selectSQL4004 = " SELECT * FROM orders  where productcode='" + Session["4"] + "' and posino='" + Session["typeid"] + "'and purchaseorderno='" +  TextBox4.Text + "' and  quantity='" + TextBox25.Text + "'  and  requirement='" + TextBox26.Text + "'       ";
            dbConn4004.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd4004.Connection = dbConn4004;
            cmd4004.CommandText = selectSQL4004;
            cmd.CommandType = CommandType.Text;
            try
            {
                dbConn4004.Open();
                dr4004 = cmd4004.ExecuteReader();
                if (dr4004.Read())
                {
                         Panel1.Visible = false;

            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;
     
                    Label1.Text ="ITEM HAS ALREADY BEEN SUBMITTED"  ;
                }
                 else
                {
                    if (TextBox24.Text == "")
        {
        }
        else
        {
             SqlConnection con444 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm444 = new SqlCommand();
            cm444.Connection = con444;
            con444.Open();
            cm444.CommandType = CommandType.Text;
            cm444.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm444.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm444.ExecuteScalar());
            con444.Close();
         

            SqlConnection con44 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm44 = new SqlCommand();
            cm44.Connection = con44;
            con44.Open();
            cm44.CommandType = CommandType.Text;
        cm44.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox24.Text + "' and pid='" + Session["ppid"] + "' ";
            cm44.Parameters.AddWithValue("@id", TextBox24.Text);
            Session["typeid"] = Convert.ToString(cm44.ExecuteScalar());
            con44.Close();

            string selectSQL222;
            selectSQL222 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn222.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd222.Connection = dbConn222;
            cmd222.CommandText = selectSQL222;
            cmd222.CommandType = CommandType.Text;

            try
            {
                dbConn222.Open();
                dr222 = cmd222.ExecuteReader();
                if (dr222.Read())
                {
                    Session["1"] = dr222["FinYear"].ToString();
                    Session["2"] = dr222["Year"].ToString();
                    Session["3"] = dr222["Vat"].ToString();


                    string selectSQL2222;
                    selectSQL2222 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn2222.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd2222.Connection = dbConn2222;
                    cmd2222.CommandText = selectSQL2222;
                    cmd2222.CommandType = CommandType.Text;

                    try
                    {
                        dbConn2222.Open();
                        dr2222 = cmd2222.ExecuteReader();
                        if (dr2222.Read())
                        {
                            Session["4"] = dr2222["id"].ToString();



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
                        dbConn2222.Close();
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
                dbConn222.Close();
            }








            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");










            string insertSQL22;
            insertSQL22 = "INSERT INTO Orders (";
            insertSQL22 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL22 += "VALUES('";

            insertSQL22 += Session["1"] + "','";
            insertSQL22 += Session["2"] + "','";
            insertSQL22 += Session["3"] + "','";
            insertSQL22 += kk + "','";
            insertSQL22 += Session["4"] + "','";

            insertSQL22 += TextBox4.Text + "','";
            insertSQL22 += txtSearch5.Text + "','";
            insertSQL22 += TextBox6.Text + "','";
            insertSQL22 += TextBox7.Text + "','";

            insertSQL22 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL22 += TextBox9.Text + "','";
            insertSQL22 += Session["typeid"] + "','";
            insertSQL22 += TextBox25.Text + "','";
            insertSQL22 += TextBox26.Text + "')";




            String connectionString22 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con22 = new SqlConnection(connectionString22);
            SqlCommand cmd22 = new SqlCommand(insertSQL22, con22);
            int added22 = 0;

            try
            {
                con22.Open();
                added22 = cmd22.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added22 == 1)
                {


                }
                else
                {

                }
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con22.Close();
            }

        }










        if (TextBox27.Text == "")
        {
        }
        else
        {
           SqlConnection con4441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm4441 = new SqlCommand();
            cm4441.Connection = con4441;
            con4441.Open();
            cm4441.CommandType = CommandType.Text;
            cm4441.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm4441.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm4441.ExecuteScalar());
            con4441.Close();
           

            SqlConnection con44 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm44 = new SqlCommand();
            cm44.Connection = con44;
            con44.Open();
            cm44.CommandType = CommandType.Text;
            cm44.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox27.Text + "' and pid='" + Session["ppid"] + "' ";
            cm44.Parameters.AddWithValue("@id", TextBox27.Text);
            Session["typeid1"] = Convert.ToString(cm44.ExecuteScalar());
            con44.Close();
            string selectSQL333;
            selectSQL333 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn333.ConnectionString = "Data Source=NERO-SIGBENU\\SQLEXPRESS01; Initial Catalog=kaging;Integrated Security=True;";
            cmd333.Connection = dbConn333;
            cmd333.CommandText = selectSQL333;
            cmd333.CommandType = CommandType.Text;

            try
            {
                dbConn333.Open();
                dr333 = cmd333.ExecuteReader();
                if (dr333.Read())
                {
                    Session["1"] = dr333["FinYear"].ToString();
                    Session["2"] = dr333["Year"].ToString();
                    Session["3"] = dr333["Vat"].ToString();


                    string selectSQL3333;
                    selectSQL3333 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn3333.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd3333.Connection = dbConn3333;
                    cmd3333.CommandText = selectSQL3333;
                    cmd3333.CommandType = CommandType.Text;

                    try
                    {
                        dbConn3333.Open();
                        dr3333 = cmd3333.ExecuteReader();
                        if (dr3333.Read())
                        {
                            Session["4"] = dr3333["id"].ToString();



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
                        dbConn3333.Close();
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

                dbConn333.Close();
            }











            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");



            string insertSQL33;
            insertSQL33 = "INSERT INTO Orders (";
            insertSQL33 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL33 += "VALUES('";
            insertSQL33 += Session["1"] + "','";
            insertSQL33 += Session["2"] + "','";
            insertSQL33 += Session["3"] + "','";
            insertSQL33 += kk + "','";
            insertSQL33 += Session["4"] + "','";

            insertSQL33 += TextBox4.Text + "','";
            insertSQL33 += txtSearch5.Text + "','";
            insertSQL33 += TextBox6.Text + "','";
            insertSQL33 += TextBox7.Text + "','";

            insertSQL33 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL33 += TextBox9.Text + "','";
            insertSQL33 += Session["typeid1"] + "','";
            insertSQL33 += TextBox28.Text + "','";
            insertSQL33 += TextBox29.Text + "')";




            String connectionString33 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con33 = new SqlConnection(connectionString33);
            SqlCommand cmd33 = new SqlCommand(insertSQL33, con33);
            int added33 = 0;

            try
            {
                con33.Open();
                added33 = cmd33.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added33 == 1)
                {


                }
                else
                {

                }
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con33.Close();
                //  Response.Redirect("3.aspx");
            }

        }








        if (TextBox46.Text == "")
        {

        }
        else
        {
           SqlConnection con44411 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm44411 = new SqlCommand();
            cm44411.Connection = con44411;
            con44411.Open();
            cm44411.CommandType = CommandType.Text;
            cm44411.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm44411.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm44411.ExecuteScalar());
            con44411.Close();
            



            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox46.Text + "' and pid='" + Session["ppid"] + "' ";
            cm441.Parameters.AddWithValue("@id", TextBox46.Text);
            Session["typeid2"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();

            string selectSQL444;
            selectSQL444 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn444.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd444.Connection = dbConn444;
            cmd444.CommandText = selectSQL444;
            cmd444.CommandType = CommandType.Text;

            try
            {
                Response.Write(selectSQL444);
                dbConn444.Open();
                Response.Write(selectSQL444);
                dr444 = cmd444.ExecuteReader();
                if (dr444.Read())
                {
                    Session["1"] = dr444["FinYear"].ToString();
                    Session["2"] = dr444["Year"].ToString();
                    Session["3"] = dr444["Vat"].ToString();


                    string selectSQL4444;
                    selectSQL4444 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn4444.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd4444.Connection = dbConn4444;
                    cmd4444.CommandText = selectSQL4444;
                    cmd4444.CommandType = CommandType.Text;

                    try
                    {
                        dbConn4444.Open();
                        Response.Write(selectSQL4444);
                        dr4444 = cmd4444.ExecuteReader();
                        if (dr4444.Read())
                        {
                            Session["4"] = dr4444["id"].ToString();



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
                        dbConn4444.Close();
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

                dbConn444.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL44;
            insertSQL44 = "INSERT INTO Orders (";
             insertSQL44 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL44 += "VALUES('";
            insertSQL44 += Session["1"] + "','";
            insertSQL44 += Session["2"] + "','";
            insertSQL44 += Session["3"] + "','";
            insertSQL44 += kk + "','";
            insertSQL44 += Session["4"] + "','";
           
            insertSQL44 += TextBox4.Text + "','";
            insertSQL44 += txtSearch5.Text + "','";
            insertSQL44 += TextBox6.Text + "','";
            insertSQL44 += TextBox7.Text + "','";

           
            insertSQL44 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL44 += TextBox9.Text + "','";
            insertSQL44 += Session["typeid2"] + "','";
            insertSQL44 += TextBox47.Text + "','";
            insertSQL44 += TextBox48.Text + "')";



           

            String connectionString44 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con44 = new SqlConnection(connectionString44);
            SqlCommand cmd44 = new SqlCommand(insertSQL44, con44);
            int added44 = 0;

            try
            {
                con44.Open();
                Response.Write(insertSQL44);
                added44 = cmd44.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added44 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con44.Close();


            }


        }

        if (TextBox49.Text == "")
        {

        }
        else
        {


             SqlConnection con444112 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm444112 = new SqlCommand();
            cm444112.Connection = con444112;
            con444112.Open();
            cm444112.CommandType = CommandType.Text;
            cm444112.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm444112.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm444112.ExecuteScalar());
            con444112.Close();
         




            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox49.Text + "' and pid='" + Session["ppid"] + "' ";

            cm441.Parameters.AddWithValue("@id", TextBox49.Text);
            Session["typeid3"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();
            string selectSQL555;
            selectSQL555 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn555.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd555.Connection = dbConn555;
            cmd555.CommandText = selectSQL555;
            cmd555.CommandType = CommandType.Text;

            try
            {
                dbConn555.Open();
                dr555 = cmd555.ExecuteReader();
                if (dr555.Read())
                {
                    Session["1"] = dr555["FinYear"].ToString();
                    Session["2"] = dr555["Year"].ToString();
                    Session["3"] = dr555["Vat"].ToString();


                    string selectSQL5555;
                    selectSQL5555 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn5555.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd5555.Connection = dbConn5555;
                    cmd5555.CommandText = selectSQL5555;
                    cmd5555.CommandType = CommandType.Text;

                    try
                    {
                        dbConn5555.Open();
                        dr5555 = cmd5555.ExecuteReader();
                        if (dr5555.Read())
                        {
                            Session["4"] = dr5555["id"].ToString();



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
                        dbConn5555.Close();
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

                dbConn555.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL55;
            insertSQL55 = "INSERT INTO Orders (";
            insertSQL55 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL55 += "VALUES('";
            insertSQL55 += Session["1"] + "','";
            insertSQL55 += Session["2"] + "','";
            insertSQL55 += Session["3"] + "','";
            insertSQL55 += kk + "','";
            insertSQL55 += Session["4"] + "','";
           
            insertSQL55 += TextBox4.Text + "','";
            insertSQL55 += txtSearch5.Text + "','";
            insertSQL55 += TextBox6.Text + "','";
            insertSQL55 += TextBox7.Text + "','";

          
            insertSQL55 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL55 += TextBox9.Text + "','";
            insertSQL55 += Session["typeid3"] + "','";
            insertSQL55 += TextBox50.Text + "','";
            insertSQL55 += TextBox51.Text + "')";




            String connectionString55 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con55 = new SqlConnection(connectionString55);
            SqlCommand cmd55 = new SqlCommand(insertSQL55, con55);
            int added55 = 0;

            try
            {
                con55.Open();
                added55 = cmd55.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added55 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con55.Close();


            }


        }



        if (TextBox52.Text == "")
        {

        }
        else
        {
           SqlConnection con4441122 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm4441122 = new SqlCommand();
            cm4441122.Connection = con4441122;
            con4441122.Open();
            cm4441122.CommandType = CommandType.Text;
            cm4441122.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm4441122.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm4441122.ExecuteScalar());
            con4441122.Close();
           





            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox52.Text + "'  and pid='" + Session["ppid"] + "' ";
            cm441.Parameters.AddWithValue("@id", TextBox52.Text);
            Session["typeid4"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();
            string selectSQL111;
            selectSQL111 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn111.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd111.Connection = dbConn111;
            cmd111.CommandText = selectSQL111;
            cmd111.CommandType = CommandType.Text;

            try
            {
                dbConn111.Open();
                dr111 = cmd111.ExecuteReader();
                if (dr111.Read())
                {
                    Session["1"] = dr111["FinYear"].ToString();
                    Session["2"] = dr111["Year"].ToString();
                    Session["3"] = dr111["Vat"].ToString();


                    string selectSQL1111;
                    selectSQL1111 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn1111.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd1111.Connection = dbConn1111;
                    cmd1111.CommandText = selectSQL1111;
                    cmd1111.CommandType = CommandType.Text;

                    try
                    {
                        dbConn1111.Open();
                        dr1111 = cmd1111.ExecuteReader();
                        if (dr1111.Read())
                        {
                            Session["4"] = dr1111["id"].ToString();



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
                        dbConn1111.Close();
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

                dbConn111.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL11;
            insertSQL11 = "INSERT INTO Orders (";
            insertSQL11 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL11 += "VALUES('";
            insertSQL11 += Session["1"] + "','";
            insertSQL11 += Session["2"] + "','";
            insertSQL11 += Session["3"] + "','";
            insertSQL11 += kk + "','";
            insertSQL11 += Session["4"] + "','";
           
            insertSQL11 += TextBox4.Text + "','";
            insertSQL11 += txtSearch5.Text + "','";
            insertSQL11 += TextBox6.Text + "','";
            insertSQL11 += TextBox7.Text + "','";

         
            insertSQL11 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL11 += TextBox9.Text + "','";
            insertSQL11 += Session["typeid4"] + "','";
            insertSQL11 += TextBox53.Text + "','";
            insertSQL11 += TextBox54.Text + "')";




            String connectionString11 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con11 = new SqlConnection(connectionString11);
            SqlCommand cmd11 = new SqlCommand(insertSQL11, con11);
            int added11 = 0;

            try
            {
                con11.Open();
                added11 = cmd11.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added11 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con11.Close();


            }


        }




        if (TextBox55.Text == "")
        {

        }
        else
        {

              SqlConnection con44411223 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm44411223 = new SqlCommand();
            cm44411223.Connection = con44411223;
            con44411223.Open();
            cm44411223.CommandType = CommandType.Text;
            cm44411223.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm44411223.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm44411223.ExecuteScalar());
            con44411223.Close();
  



            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox55.Text + "' and pid='" + Session["ppid"] + "' ";
            cm441.Parameters.AddWithValue("@id", TextBox55.Text);
            Session["typeid5"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();
            string selectSQL666;
            selectSQL666 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn666.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd666.Connection = dbConn666;
            cmd666.CommandText = selectSQL666;
            cmd666.CommandType = CommandType.Text;

            try
            {
                dbConn666.Open();
                dr666 = cmd666.ExecuteReader();
                if (dr666.Read())
                {
                    Session["1"] = dr666["FinYear"].ToString();
                    Session["2"] = dr666["Year"].ToString();
                    Session["3"] = dr666["Vat"].ToString();


                    string selectSQL6666;
                    selectSQL6666 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn6666.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd6666.Connection = dbConn6666;
                    cmd6666.CommandText = selectSQL6666;
                    cmd6666.CommandType = CommandType.Text;

                    try
                    {
                        dbConn6666.Open();
                        dr6666 = cmd6666.ExecuteReader();
                        if (dr6666.Read())
                        {
                            Session["4"] = dr6666["id"].ToString();



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
                        dbConn6666.Close();
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

                dbConn666.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL66;
            insertSQL66 = "INSERT INTO Orders (";
            insertSQL66 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL66 += "VALUES('";
            insertSQL66 += Session["1"] + "','";
            insertSQL66 += Session["2"] + "','";
            insertSQL66 += Session["3"] + "','";
            insertSQL66 += kk + "','";
            insertSQL66 += Session["4"] + "','";
        
            insertSQL66 += TextBox4.Text + "','";
            insertSQL66 += txtSearch5.Text + "','";
            insertSQL66 += TextBox6.Text + "','";
            insertSQL66 += TextBox7.Text + "','";

          
            insertSQL66 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL66 += TextBox9.Text + "','";
            insertSQL66 += Session["typeid5"] + "','";
            insertSQL66 += TextBox56.Text + "','";
            insertSQL66 += TextBox57.Text + "')";




            String connectionString66 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con66 = new SqlConnection(connectionString66);
            SqlCommand cmd66 = new SqlCommand(insertSQL66, con66);
            int added66 = 0;

            try
            {
                con66.Open();
                added66 = cmd66.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added66 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con66.Close();


            }


        }



        if (TextBox58.Text == "")
        {

        }
        else
        {

            SqlConnection con44411224 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm44411224 = new SqlCommand();
            cm44411224.Connection = con44411224;
            con44411224.Open();
            cm44411224.CommandType = CommandType.Text;
            cm44411224.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm44411224.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm44411224.ExecuteScalar());
            con44411224.Close();
           

            




            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox58.Text + "' and pid='" + Session["ppid"] + "' ";
            cm441.Parameters.AddWithValue("@id", TextBox58.Text);
            Session["typeid6"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();
            string selectSQL777;
            selectSQL777 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn777.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd777.Connection = dbConn777;
            cmd777.CommandText = selectSQL777;
            cmd777.CommandType = CommandType.Text;

            try
            {
                dbConn777.Open();
                dr777 = cmd777.ExecuteReader();
                if (dr777.Read())
                {
                    Session["1"] = dr777["FinYear"].ToString();
                    Session["2"] = dr777["Year"].ToString();
                    Session["3"] = dr777["Vat"].ToString();


                    string selectSQL7777;
                    selectSQL7777 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn7777.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd7777.Connection = dbConn7777;
                    cmd7777.CommandText = selectSQL7777;
                    cmd7777.CommandType = CommandType.Text;

                    try
                    {
                        dbConn7777.Open();
                        dr7777 = cmd7777.ExecuteReader();
                        if (dr7777.Read())
                        {
                            Session["4"] = dr7777["id"].ToString();



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
                        dbConn7777.Close();
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

                dbConn777.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL77;
            insertSQL77 = "INSERT INTO Orders (";
            insertSQL77 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL77 += "VALUES('";
            insertSQL77 += Session["1"] + "','";
            insertSQL77 += Session["2"] + "','";
            insertSQL77 += Session["3"] + "','";
            insertSQL77 += kk + "','";
            insertSQL77 += Session["4"] + "','";
          
            insertSQL77 += TextBox4.Text + "','";
            insertSQL77 += txtSearch5.Text + "','";
            insertSQL77 += TextBox6.Text + "','";
            insertSQL77 += TextBox7.Text + "','";

         
            insertSQL77 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL77 += TextBox9.Text + "','";
            insertSQL77 += Session["typeid6"] + "','";
            insertSQL77 += TextBox59.Text + "','";
            insertSQL77 += TextBox60.Text + "')";




            String connectionString77 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con77 = new SqlConnection(connectionString77);
            SqlCommand cmd77 = new SqlCommand(insertSQL77, con77);
            int added77 = 0;

            try
            {
                con77.Open();
                added77 = cmd77.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added77 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con77.Close();


            }


        }






        if (TextBox61.Text == "")
        {

        }
        else
        {
              
            SqlConnection con444112241 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm444112241 = new SqlCommand();
            cm444112241.Connection = con444112241;
            con444112241.Open();
            cm444112241.CommandType = CommandType.Text;
            cm444112241.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm444112241.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm444112241.ExecuteScalar());
            con444112241.Close();
            





            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox61.Text + "' and pid='" + Session["ppid"] + "' ";
            cm441.Parameters.AddWithValue("@id", TextBox61.Text);
            Session["typeid7"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();
            string selectSQL888;
            selectSQL888 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn888.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd888.Connection = dbConn888;
            cmd888.CommandText = selectSQL888;
            cmd888.CommandType = CommandType.Text;

            try
            {
                dbConn888.Open();
                dr888 = cmd888.ExecuteReader();
                if (dr888.Read())
                {
                    Session["1"] = dr888["FinYear"].ToString();
                    Session["2"] = dr888["Year"].ToString();
                    Session["3"] = dr888["Vat"].ToString();


                    string selectSQL8888;
                    selectSQL8888 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn8888.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd8888.Connection = dbConn8888;
                    cmd8888.CommandText = selectSQL8888;
                    cmd8888.CommandType = CommandType.Text;

                    try
                    {
                        dbConn8888.Open();
                        dr8888 = cmd8888.ExecuteReader();
                        if (dr8888.Read())
                        {
                            Session["4"] = dr8888["id"].ToString();



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
                        dbConn8888.Close();
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

                dbConn888.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL88;
            insertSQL88 = "INSERT INTO Orders (";
            insertSQL88 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL88 += "VALUES('";
            insertSQL88 += Session["1"] + "','";
            insertSQL88 += Session["2"] + "','";
            insertSQL88 += Session["3"] + "','";
            insertSQL88 += kk + "','";
            insertSQL88 += Session["4"] + "','";
          
            insertSQL88 += TextBox4.Text + "','";
            insertSQL88 += txtSearch5.Text + "','";
            insertSQL88 += TextBox6.Text + "','";
            insertSQL88 += TextBox7.Text + "','";

            insertSQL88 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL88 += TextBox9.Text + "','";
            insertSQL88 += Session["typeid7"] + "','";
            insertSQL88 += TextBox62.Text + "','";
            insertSQL88 += TextBox63.Text + "')";




            String connectionString88 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con88 = new SqlConnection(connectionString88);
            SqlCommand cmd88 = new SqlCommand(insertSQL88, con88);
            int added88 = 0;

            try
            {
                con88.Open();
                added88 = cmd88.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added88 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con88.Close();


            }


        }


        if (TextBox64.Text == "")
        {

        }
        else
        {

       
              SqlConnection con444112244 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm444112244 = new SqlCommand();
            cm444112244.Connection = con444112244;
            con444112244.Open();
            cm444112244.CommandType = CommandType.Text;
            cm444112244.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm444112244.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm444112244.ExecuteScalar());
            con444112244.Close();
          



            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox64.Text + "' and pid='" + Session["ppid"] + "' ";
            cm441.Parameters.AddWithValue("@id", TextBox64.Text);
            Session["typeid8"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();
            string selectSQL999;
            selectSQL999 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn999.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd999.Connection = dbConn999;
            cmd999.CommandText = selectSQL999;
            cmd999.CommandType = CommandType.Text;

            try
            {
                dbConn999.Open();
                dr999 = cmd999.ExecuteReader();
                if (dr999.Read())
                {
                    Session["1"] = dr999["FinYear"].ToString();
                    Session["2"] = dr999["Year"].ToString();
                    Session["3"] = dr999["Vat"].ToString();


                    string selectSQL9999;
                    selectSQL9999 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
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
                            Session["4"] = dr9999["id"].ToString();



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

                dbConn999.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL99;
            insertSQL99 = "INSERT INTO Orders (";
            insertSQL99 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL99 += "VALUES('";
            insertSQL99 += Session["1"] + "','";
            insertSQL99 += Session["2"] + "','";
            insertSQL99 += Session["3"] + "','";
            insertSQL99 += kk + "','";
            insertSQL99 += Session["4"] + "','";
           
            insertSQL99 += TextBox4.Text + "','";
            insertSQL99 += txtSearch5.Text + "','";
            insertSQL99 += TextBox6.Text + "','";
            insertSQL99 += TextBox7.Text + "','";


            insertSQL99 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL99 += TextBox9.Text + "','";
            insertSQL99 += Session["typeid8"] + "','";
            insertSQL99 += TextBox65.Text + "','";
            insertSQL99 += TextBox66.Text + "')";




            String connectionString99 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con99 = new SqlConnection(connectionString99);
            SqlCommand cmd99 = new SqlCommand(insertSQL99, con99);
            int added99 = 0;

            try
            {
                con99.Open();
                added99 = cmd99.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added99 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con99.Close();


            }


        }



        if (TextBox67.Text == "")
        {

        }
        else
        {
               SqlConnection con4441122441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm4441122441 = new SqlCommand();
            cm4441122441.Connection = con4441122441;
            con4441122441.Open();
            cm4441122441.CommandType = CommandType.Text;
            cm4441122441.CommandText = "SELECT id FROM job WHERE  pid='" + txtSearch.Text + "' ";
            cm4441122441.Parameters.AddWithValue("@id", txtSearch.Text);
            Session["ppid"] = Convert.ToString(cm4441122441.ExecuteScalar());
            con4441122441.Close();
            

               
            SqlConnection con441 = new SqlConnection("data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;");
            SqlCommand cm441 = new SqlCommand();
            cm441.Connection = con441;
            con441.Open();
            cm441.CommandType = CommandType.Text;
            cm441.CommandText = "SELECT id FROM job_cylinder WHERE  posino='" + TextBox67.Text + "' and pid='" + Session["ppid"] + "' ";
            cm441.Parameters.AddWithValue("@id", TextBox67.Text);
            Session["typeid9"] = Convert.ToString(cm441.ExecuteScalar());
            con441.Close();
            string selectSQL000;
            selectSQL000 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
            dbConn000.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            cmd000.Connection = dbConn000;
            cmd000.CommandText = selectSQL000;
            cmd000.CommandType = CommandType.Text;

            try
            {
                dbConn000.Open();
                dr000 = cmd000.ExecuteReader();
                if (dr000.Read())
                {
                    Session["1"] = dr000["FinYear"].ToString();
                    Session["2"] = dr000["Year"].ToString();
                    Session["3"] = dr000["Vat"].ToString();


                    string selectSQL0000;
                    selectSQL0000 = " SELECT id FROM job  where pid = '" + txtSearch.Text + "'   ";
                    dbConn0000.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                    cmd0000.Connection = dbConn0000;
                    cmd0000.CommandText = selectSQL0000;
                    cmd0000.CommandType = CommandType.Text;

                    try
                    {
                        dbConn0000.Open();
                        dr0000 = cmd0000.ExecuteReader();
                        if (dr0000.Read())
                        {
                            Session["4"] = dr0000["id"].ToString();



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
                        dbConn0000.Close();
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

                dbConn000.Close();
            }












            DateTime now = DateTime.Now;

            Console.WriteLine(now.Month);
            string kk = now.ToString("MMMM");


            string insertSQL00;
            insertSQL00 = "INSERT INTO Orders (";
            insertSQL00 += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
            insertSQL00 += "VALUES('";
            insertSQL00 += Session["1"] + "','";
            insertSQL00 += Session["2"] + "','";
            insertSQL00 += Session["3"] + "','";
            insertSQL00 += kk + "','";
            insertSQL00 += Session["4"] + "','";
        
            insertSQL00 += TextBox4.Text + "','";
            insertSQL00 += txtSearch5.Text + "','";
            insertSQL00 += TextBox6.Text + "','";
            insertSQL00 += TextBox7.Text + "','";

         
            insertSQL00 += DropDownList1.SelectedValue.ToString() + "','";
            insertSQL00 += TextBox9.Text + "','";
            insertSQL00 += Session["typeid9"] + "','";
            insertSQL00 += TextBox68.Text + "','";
            insertSQL00 += TextBox69.Text + "')";




            String connectionString00 = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
            SqlConnection con00 = new SqlConnection(connectionString00);
            SqlCommand cmd00 = new SqlCommand(insertSQL00, con00);
            int added00 = 0;

            try
            {
                con00.Open();
                added00 = cmd00.ExecuteNonQuery();


                // Label007.Text = added.ToString();


                if (added00 == 1)
                {


                }
                else
                {

                }

            }
            catch (Exception err)
            {
                Response.Write(err.ToString());

            }
            finally
            {
                con00.Close();


            }


        }


    Response.Redirect("OrderConf.aspx");





                  }
                dr4004.Close();
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            finally
            {
                dbConn4004.Close();
            }
        

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        string selectSQL1;
        selectSQL1 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
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
                Session["1"] = dr1["FinYear"].ToString();
                Session["2"] = dr1["Year"].ToString();
                Session["3"] = dr1["Vat"].ToString();


                string selectSQL22;
                selectSQL22 = " SELECT * FROM job  where pid = '" + txtSearch.Text + "'   ";
                dbConn22.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                cmd22.Connection = dbConn22;
                cmd22.CommandText = selectSQL22;
                cmd22.CommandType = CommandType.Text;

                try
                {
                    dbConn22.Open();
                    dr22 = cmd22.ExecuteReader();
                    if (dr22.Read())
                    {
                        Session["4"] = dr22["id"].ToString();
                        Session["400"] = dr22["diereferneceno"].ToString();


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
                    dbConn22.Close();
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
            dbConn1.Close();
        }








        DateTime now = DateTime.Now;

        Console.WriteLine(now.Month);
        string kk = now.ToString("MMMM");






        string insertSQL;
        insertSQL = "INSERT INTO Orders (";
        insertSQL += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
        insertSQL += "VALUES('";
        insertSQL += Session["1"] + "','";
        insertSQL += Session["2"] + "','";
        insertSQL += Session["3"] + "','";
        insertSQL += kk + "','";
        insertSQL += Session["4"] + "','";

        insertSQL += TextBox4.Text + "','";
        insertSQL += txtSearch5.Text + "','";
        insertSQL += TextBox6.Text + "','";
        insertSQL += TextBox7.Text + "','";


        insertSQL += DropDownList1.SelectedValue.ToString() + "','";
        insertSQL += TextBox9.Text + "','";
        insertSQL += Session["400"] + "','";
        insertSQL += TextBox71.Text + "','";
        insertSQL += TextBox72.Text + "')";




        String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd1 = new SqlCommand(insertSQL, con);
        int added = 0;

        try
        {
            con.Open();
            added = cmd1.ExecuteNonQuery();


            // Label007.Text = added.ToString();


            if (added == 1)
            {

                Response.Redirect("OrderConf.aspx");


            }
            else
            {
                //
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

        



        string selectSQL1;
        selectSQL1 = " Select FinYear,Year,Vat  FROM Settings where id= '1'  ";
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
                Session["1"] = dr1["FinYear"].ToString();
                Session["2"] = dr1["Year"].ToString();
                Session["3"] = dr1["Vat"].ToString();


                string selectSQL22;
                selectSQL22 = " SELECT * FROM job  where pid = '" + txtSearch.Text + "'   ";
                dbConn22.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                cmd22.Connection = dbConn22;
                cmd22.CommandText = selectSQL22;
                cmd22.CommandType = CommandType.Text;

                try
                {
                    dbConn22.Open();
                    dr22 = cmd22.ExecuteReader();
                    if (dr22.Read())
                    {
                        Session["4"] = dr22["id"].ToString();
                        Session["400"] = dr22["embid"].ToString();



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
                    dbConn22.Close();
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
            dbConn1.Close();
        }








        DateTime now = DateTime.Now;

        Console.WriteLine(now.Month);
        string kk = now.ToString("MMMM");






        string insertSQL;
        insertSQL = "INSERT INTO Orders (";
        insertSQL += "financialyear,calendaryear,vat,month,productcode,purchaseorderno,supplier,dateordered,dateexpected,producttype,requisitioncode,posino,quantity,requirement)";
        insertSQL += "VALUES('";
        insertSQL += Session["1"] + "','";
        insertSQL += Session["2"] + "','";
        insertSQL += Session["3"] + "','";
        insertSQL += kk + "','";
        insertSQL += Session["4"] + "','";

        insertSQL += TextBox4.Text + "','";
        insertSQL += txtSearch5.Text + "','";
        insertSQL += TextBox6.Text + "','";
        insertSQL += TextBox7.Text + "','";


        insertSQL += DropDownList1.SelectedValue.ToString() + "','";
        insertSQL += TextBox9.Text + "','";
        insertSQL += Session["400"] + "','";
        insertSQL += TextBox74.Text + "','";
        insertSQL += TextBox75.Text + "')";




        String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd1 = new SqlCommand(insertSQL, con);
        int added = 0;

        try
        {
            con.Open();
            added = cmd1.ExecuteNonQuery();


            // Label007.Text = added.ToString();


            if (added == 1)
            {

                Response.Redirect("OrderConf.aspx");


            }
            else
            {
                Response.Redirect("OrderConf.aspx");

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
