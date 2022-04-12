

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

public partial class Jobs : System.Web.UI.Page
{


    string selectSQL,updateSQL, selectSQL1;
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd3 = new SqlCommand();
    SqlCommand cmd4 = new SqlCommand();
    SqlCommand cmd5 = new SqlCommand();
    SqlCommand cmd6 = new SqlCommand();
    SqlCommand cmd7 = new SqlCommand();
    SqlCommand cmd8 = new SqlCommand();
    SqlCommand cmd9 = new SqlCommand();
    SqlCommand cmd10 = new SqlCommand();
    SqlCommand cmd11 = new SqlCommand();
    SqlCommand cmd12 = new SqlCommand();
    SqlCommand cmd13 = new SqlCommand();
    SqlCommand cmd44 = new SqlCommand();
    SqlCommand cmd33 = new SqlCommand();

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
    SqlCommand cmd62 = new SqlCommand();

   SqlCommand cmd63= new SqlCommand();
    SqlCommand cmd64 = new SqlCommand();
    SqlCommand cmd65 = new SqlCommand();


    SqlConnection dbConn = new SqlConnection();
    SqlConnection dbConn1 = new SqlConnection();
    SqlConnection dbConn2 = new SqlConnection();
      SqlConnection dbConn61  = new SqlConnection();
      SqlConnection dbConn63 = new SqlConnection();

SqlConnection dbConn64= new SqlConnection();
SqlConnection dbConn65= new SqlConnection();
SqlDataReader dr, dr2, dr1, dr3, dr61, dr64, dr65;


    protected void Page_Load(object sender, EventArgs e)
    {

        Label3.Text = "";



        MainView.ActiveViewIndex = 0;
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



        MainView.ActiveViewIndex = 0;
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
        MainView.ActiveViewIndex = 1;
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
        MainView.ActiveViewIndex = 2;
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
        MainView.ActiveViewIndex = 3;
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
        MainView.ActiveViewIndex = 4;
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
        MainView.ActiveViewIndex = 5;
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
        MainView.ActiveViewIndex = 6;
    }



    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        if (String.IsNullOrEmpty(TextBox7.Text))
        {
            Label3.Text = "Enter Product id";
            //Response.Redirect("Jobs.aspx");
        }
        else
        {


         
                  
                       



                    string insertSQL;
                    insertSQL = "INSERT INTO Job (";
                    insertSQL += "pid, description, variant, country, pack, customer, jobnumber,templateno, artworkdate, reprodate, artworknumber,nampak,reproapproveddate, artworkreceiveddate, yields,qtyaround, qtyacross,stretchdoublecut, qtyperrevolution,printtype,gietzdieref,packingperpallet,status,cadgietzdie,hotfoilcoverage,blockspersheet,blockspercarton,foilarea,foilsqm,sheetlength,sheetwidth)";
                    insertSQL += "VALUES('";
                    insertSQL += TextBox7.Text + "','";
                    insertSQL += TextBox8.Text + "','";
                    insertSQL += TextBox9.Text + "','";
                    insertSQL += TextBox10.Text + "','";
                    insertSQL += TextBox11.Text + "','";
                    insertSQL += TextBox12.Text + "','";
                    insertSQL += TextBox13.Text + "','";
                    insertSQL += TextBox14.Text + "','";
                    insertSQL += TextBox15.Text + "','";
                    insertSQL += TextBox16.Text + "','";
                    insertSQL += TextBox17.Text + "','";
                    insertSQL += TextBox18.Text + "','";
                    insertSQL += TextBox19.Text + "','";
                    insertSQL += TextBox20.Text + "','";
                    insertSQL += TextBox21.Text + "','";
                    insertSQL += TextBox22.Text + "','";
                    insertSQL += TextBox23.Text + "','";
                    insertSQL += TextBox24.Text + "','";
                    insertSQL += TextBox25.Text + "','";
                    insertSQL += TextBox26.Text + "','";
                  
                    insertSQL += TextBox445.Text + "','";
                    insertSQL += TextBox446.Text + "','";
                    insertSQL += TextBox447.Text + "','";
                    insertSQL += TextBox448.Text + "','";
                    insertSQL += TextBox449.Text + "','";
                    insertSQL += TextBox450.Text + "','";
                    insertSQL += TextBox451.Text + "','";
                    insertSQL += TextBox452.Text + "','";
                    insertSQL += TextBox453.Text + "','";
                    insertSQL += TextBox454.Text + "','";
                    insertSQL += TextBox455.Text + "')";




                    String connectionString = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                    SqlConnection con = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand(insertSQL, con);
                    int added = 0;

                    try
                    {
                        con.Open();
                        added = cmd.ExecuteNonQuery();


                        Label007.Text = added.ToString();


                        if (added == 1)
                        {
                            // Label007.Text = added.ToString() + "records Inserted";
                            // Response.Redirect("Jobs.aspx");














                            selectSQL1 = " SELECT TOP 1 * FROM job ORDER BY id DESC ";
                            dbConn2.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                            cmd2.Connection = dbConn2;
                            cmd2.CommandText = selectSQL1;
                            cmd2.CommandType = CommandType.Text;

                            try
                            {
                                dbConn2.Open();
                                dr2 = cmd2.ExecuteReader();
                                if (dr2.Read())
                                {



                                    Label8.Text = dr2["id"].ToString();
                                    Session["id"] = Label8.Text;
                                    string insertSQL11;
                                    insertSQL11 = "INSERT INTO job_material (";
                                    insertSQL11 += "pid,boardname,materialgsm,materialcode,materialwebwidth,costpersqmeter)";
                                    insertSQL11 += "VALUES('";
                                    insertSQL11 += Session["id"].ToString() + "','";
                                 
                                    insertSQL11 += TextBox27.Text + "','";
                                    insertSQL11 += TextBox28.Text + "','";
                                    insertSQL11 += TextBox29.Text + "','";
                                    insertSQL11 += TextBox30.Text + "','";
                                    //insertSQL1 += TextBox31.Text + "','";
                                    //  insertSQL1 += Session["id"].ToString() + "','";
                                    //  insertSQL1 += Session["id"].ToString() + "','";
                                    // insertSQL1 += TextBox32.Text + "','";
                                    // insertSQL1 += TextBox33.Text + "','";
                                    // insertSQL1 += TextBox34.Text + "','";
                                    // insertSQL1 += TextBox35.Text + "','";
                                    insertSQL11 += TextBox31.Text + "')";
                                  




                                    String connectionString1 = "Data Source=Technot; Initial Catalog= kaging; User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                    SqlConnection con3 = new SqlConnection(connectionString1);
                                    SqlCommand cmd3 = new SqlCommand(insertSQL11, con3);
                                    int added11 = 0;

                                    try
                                    {
                                        con3.Open();
                                        added11 = cmd3.ExecuteNonQuery();





                                        if (added11 == 1)
                                        {

                                            

                                            string insertSQL22;
                                            insertSQL22 = "INSERT INTO job_material (";
                                            insertSQL22 += "pid,boardname,materialgsm,materialcode,materialwebwidth,costpersqmeter)";
                                            insertSQL22 += "VALUES('";

                                            insertSQL22 += Session["id"].ToString() + "','";
                                            
                                            insertSQL22 += TextBox32.Text + "','";
                                            insertSQL22 += TextBox33.Text + "','";
                                            insertSQL22 += TextBox34.Text + "','";
                                            insertSQL22 += TextBox35.Text + "','";


                                            insertSQL22 += TextBox36.Text + "')";
                                            




                                            String connectionString22 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                            SqlConnection con44 = new SqlConnection(connectionString22);
                                            SqlCommand cmd44 = new SqlCommand(insertSQL22, con44);
                                            int added22 = 0;

                                            try
                                            {
                                                con44.Open();
                                                added22 = cmd44.ExecuteNonQuery();





                                                if (added22 == 1)
                                                {






























                                                    string insertSQL1;
                                                    insertSQL1 = "INSERT INTO job_cylinder (";
                                                    insertSQL1 += " pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                    insertSQL1 += "VALUES('";
                                                    insertSQL1 += Session["id"].ToString() + "','";
                                                   
                                                    insertSQL1 += TextBox46.Text + "','";
                                                    insertSQL1 += TextBox47.Text + "','";
                                                    insertSQL1 += TextBox48.Text + "','";
                                                    insertSQL1 += TextBox49.Text + "','";
                                                    insertSQL1 += TextBox50.Text + "','";
                                                    insertSQL1 += TextBox51.Text + "','";
                                                    insertSQL1 += TextBox52.Text + "','";
                                                    insertSQL1 += TextBox53.Text + "','";
                                                    insertSQL1 += TextBox54.Text + "','";
                                                    insertSQL1 += TextBox55.Text + "','";
                                                    insertSQL1 += TextBox56.Text + "','";
                                                    insertSQL1 += TextBox57.Text + "','";
                                                    insertSQL1 += TextBox58.Text + "','";
                                                    insertSQL1 += TextBox59.Text + "','";
                                                    insertSQL1 += TextBox60.Text + "','";
                                                    insertSQL1 += TextBox61.Text + "','";
                                                    insertSQL1 += TextBox62.Text + "','";
                                                    insertSQL1 += 1 + "')";




                                                    String connectionString11 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                    SqlConnection con33 = new SqlConnection(connectionString11);
                                                    SqlCommand cmd33 = new SqlCommand(insertSQL1, con33);
                                                    int added1 = 0;

                                                    try
                                                    {
                                                        con33.Open();
                                                        added1 = cmd33.ExecuteNonQuery();





                                                        if (added1 == 1)
                                                        {
                                                            string insertSQL2;
                                                            insertSQL2 = "INSERT INTO job_cylinder (";
                                                            insertSQL2 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                            insertSQL2 += "VALUES('";
                                                            insertSQL2 += Session["id"].ToString() + "','";
                                                      
                                                            insertSQL2 += TextBox63.Text + "','";
                                                            insertSQL2 += TextBox64.Text + "','";
                                                            insertSQL2 += TextBox65.Text + "','";
                                                            insertSQL2 += TextBox66.Text + "','";
                                                            insertSQL2 += TextBox67.Text + "','";
                                                            insertSQL2 += TextBox68.Text + "','";
                                                            insertSQL2 += TextBox69.Text + "','";
                                                            insertSQL2 += TextBox70.Text + "','";
                                                            insertSQL2 += TextBox71.Text + "','";
                                                            insertSQL2 += TextBox72.Text + "','";
                                                            insertSQL2 += TextBox73.Text + "','";
                                                            insertSQL2 += TextBox74.Text + "','";
                                                            insertSQL2 += TextBox75.Text + "','";
                                                            insertSQL2 += TextBox76.Text + "','";
                                                            insertSQL2 += TextBox77.Text + "','";
                                                            insertSQL2 += TextBox78.Text + "','";
                                                            insertSQL2 += TextBox79.Text + "','";
                                                            insertSQL2 += 2 + "')";




                                                            String connectionString2 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                            SqlConnection con4 = new SqlConnection(connectionString2);
                                                            SqlCommand cmd4 = new SqlCommand(insertSQL2, con4);
                                                            int added2 = 0;

                                                            try
                                                            {
                                                                con4.Open();
                                                                added2 = cmd4.ExecuteNonQuery();


                                                                Label007.Text = added1.ToString();


                                                                if (added2 == 1)
                                                                {
                                                                    string insertSQL3;
                                                                    insertSQL3 = "INSERT INTO job_cylinder (";
                                                                    insertSQL3 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                    insertSQL3 += "VALUES('";
                                                                    insertSQL3 += Session["id"].ToString() + "','";
                                                               
                                                                    insertSQL3 += TextBox80.Text + "','";
                                                                    insertSQL3 += TextBox81.Text + "','";
                                                                    insertSQL3 += TextBox82.Text + "','";
                                                                    insertSQL3 += TextBox83.Text + "','";
                                                                    insertSQL3 += TextBox84.Text + "','";
                                                                    insertSQL3 += TextBox85.Text + "','";
                                                                    insertSQL3 += TextBox86.Text + "','";
                                                                    insertSQL3 += TextBox87.Text + "','";
                                                                    insertSQL3 += TextBox88.Text + "','";
                                                                    insertSQL3 += TextBox89.Text + "','";
                                                                    insertSQL3 += TextBox90.Text + "','";
                                                                    insertSQL3 += TextBox91.Text + "','";
                                                                    insertSQL3 += TextBox92.Text + "','";
                                                                    insertSQL3 += TextBox93.Text + "','";
                                                                    insertSQL3 += TextBox94.Text + "','";
                                                                    insertSQL3 += TextBox95.Text + "','";
                                                                    insertSQL3 += TextBox96.Text + "','";
                                                                    insertSQL3 += 3 + "')";




                                                                    String connectionString3 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                    SqlConnection con5 = new SqlConnection(connectionString3);
                                                                    SqlCommand cmd5 = new SqlCommand(insertSQL3, con5);
                                                                    int added3 = 0;

                                                                    try
                                                                    {
                                                                        con5.Open();
                                                                        added3 = cmd5.ExecuteNonQuery();



                                                                        Label007.Text = added3.ToString();


                                                                        if (added3 == 1)
                                                                        {

                                                                            string insertSQL4;
                                                                            insertSQL4 = "INSERT INTO job_cylinder (";
                                                                            insertSQL4 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                            insertSQL4 += "VALUES('";
                                                                            insertSQL4 += Session["id"].ToString() + "','";
                                                                          
                                                                            insertSQL4 += TextBox97.Text + "','";
                                                                            insertSQL4 += TextBox98.Text + "','";
                                                                            insertSQL4 += TextBox99.Text + "','";
                                                                            insertSQL4 += TextBox100.Text + "','";
                                                                            insertSQL4 += TextBox101.Text + "','";
                                                                            insertSQL4 += TextBox102.Text + "','";
                                                                            insertSQL4 += TextBox103.Text + "','";
                                                                            insertSQL4 += TextBox104.Text + "','";
                                                                            insertSQL4 += TextBox105.Text + "','";
                                                                            insertSQL4 += TextBox106.Text + "','";
                                                                            insertSQL4 += TextBox107.Text + "','";
                                                                            insertSQL4 += TextBox108.Text + "','";
                                                                            insertSQL4 += TextBox109.Text + "','";
                                                                            insertSQL4 += TextBox110.Text + "','";
                                                                            insertSQL4 += TextBox111.Text + "','";
                                                                            insertSQL4 += TextBox112.Text + "','";
                                                                            insertSQL4 += TextBox113.Text + "','";
                                                                            insertSQL4 += 4 + "')";




                                                                            String connectionString4 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                            SqlConnection con6 = new SqlConnection(connectionString4);
                                                                            SqlCommand cmd6 = new SqlCommand(insertSQL4, con6);
                                                                            int added4 = 0;

                                                                            try
                                                                            {
                                                                                con6.Open();
                                                                                added4 = cmd6.ExecuteNonQuery();



                                                                                Label007.Text = added4.ToString();


                                                                                if (added4 == 1)
                                                                                {
                                                                                    string insertSQL5;
                                                                                    insertSQL5 = "INSERT INTO job_cylinder (";
                                                                                    insertSQL5 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                                    insertSQL5 += "VALUES('";
                                                                                    insertSQL5 += Session["id"].ToString() + "','";
                                                                                 
                                                                                    insertSQL5 += TextBox114.Text + "','";
                                                                                    insertSQL5 += TextBox115.Text + "','";
                                                                                    insertSQL5 += TextBox116.Text + "','";
                                                                                    insertSQL5 += TextBox117.Text + "','";
                                                                                    insertSQL5 += TextBox118.Text + "','";
                                                                                    insertSQL5 += TextBox119.Text + "','";
                                                                                    insertSQL5 += TextBox120.Text + "','";
                                                                                    insertSQL5 += TextBox121.Text + "','";
                                                                                    insertSQL5 += TextBox122.Text + "','";
                                                                                    insertSQL5 += TextBox123.Text + "','";
                                                                                    insertSQL5 += TextBox124.Text + "','";
                                                                                    insertSQL5 += TextBox125.Text + "','";
                                                                                    insertSQL5 += TextBox126.Text + "','";
                                                                                    insertSQL5 += TextBox127.Text + "','";
                                                                                    insertSQL5 += TextBox128.Text + "','";
                                                                                    insertSQL5 += TextBox129.Text + "','";
                                                                                    insertSQL5 += TextBox130.Text + "','";
                                                                                    insertSQL5 += 5 + "')";




                                                                                    String connectionString6 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                    SqlConnection con7 = new SqlConnection(connectionString6);
                                                                                    SqlCommand cmd7 = new SqlCommand(insertSQL5, con7);
                                                                                    int added5 = 0;

                                                                                    try
                                                                                    {
                                                                                        con7.Open();
                                                                                        added5 = cmd7.ExecuteNonQuery();



                                                                                        Label007.Text = added5.ToString();


                                                                                        if (added5 == 1)
                                                                                        {
                                                                                            string insertSQL6;
                                                                                            insertSQL6 = "INSERT INTO job_cylinder (";
                                                                                            insertSQL6 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                                            insertSQL6 += "VALUES('";
                                                                                            insertSQL6 += Session["id"].ToString() + "','";
                                                                                     

                                                                                            insertSQL6 += TextBox131.Text + "','";
                                                                                            insertSQL6 += TextBox132.Text + "','";
                                                                                            insertSQL6 += TextBox133.Text + "','";
                                                                                            insertSQL6 += TextBox134.Text + "','";
                                                                                            insertSQL6 += TextBox135.Text + "','";
                                                                                            insertSQL6 += TextBox136.Text + "','";
                                                                                            insertSQL6 += TextBox137.Text + "','";
                                                                                            insertSQL6 += TextBox138.Text + "','";
                                                                                            insertSQL6 += TextBox139.Text + "','";
                                                                                            insertSQL6 += TextBox140.Text + "','";
                                                                                            insertSQL6 += TextBox141.Text + "','";
                                                                                            insertSQL6 += TextBox142.Text + "','";
                                                                                            insertSQL6 += TextBox143.Text + "','";
                                                                                            insertSQL6 += TextBox144.Text + "','";
                                                                                            insertSQL6 += TextBox145.Text + "','";
                                                                                            insertSQL6 += TextBox146.Text + "','";
                                                                                            insertSQL6 += TextBox147.Text + "','";
                                                                                            insertSQL6 += 6 + "')";




                                                                                            String connectionString7 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                            SqlConnection con8 = new SqlConnection(connectionString7);
                                                                                            SqlCommand cmd8 = new SqlCommand(insertSQL6, con8);
                                                                                            int added6 = 0;

                                                                                            try
                                                                                            {
                                                                                                con8.Open();
                                                                                                added6 = cmd8.ExecuteNonQuery();






                                                                                                if (added6 == 1)
                                                                                                {


                                                                                                    string insertSQL7;
                                                                                                    insertSQL7 = "INSERT INTO job_cylinder (";
                                                                                                    insertSQL7 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                                                    insertSQL7 += "VALUES('";
                                                                                                    insertSQL7 += Session["id"].ToString() + "','";
                                                                                                    


                                                                                                    insertSQL7 += TextBox148.Text + "','";
                                                                                                    insertSQL7 += TextBox149.Text + "','";
                                                                                                    insertSQL7 += TextBox150.Text + "','";
                                                                                                    insertSQL7 += TextBox151.Text + "','";
                                                                                                    insertSQL7 += TextBox152.Text + "','";
                                                                                                    insertSQL7 += TextBox153.Text + "','";
                                                                                                    insertSQL7 += TextBox154.Text + "','";
                                                                                                    insertSQL7 += TextBox155.Text + "','";
                                                                                                    insertSQL7 += TextBox156.Text + "','";
                                                                                                    insertSQL7 += TextBox157.Text + "','";
                                                                                                    insertSQL7 += TextBox158.Text + "','";
                                                                                                    insertSQL7 += TextBox159.Text + "','";
                                                                                                    insertSQL7 += TextBox160.Text + "','";
                                                                                                    insertSQL7 += TextBox161.Text + "','";
                                                                                                    insertSQL7 += TextBox162.Text + "','";
                                                                                                    insertSQL7 += TextBox183.Text + "','";
                                                                                                    insertSQL7 += TextBox164.Text + "','";
                                                                                                    insertSQL7 += 7 + "')";




                                                                                                    String connectionString8 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                    SqlConnection con9 = new SqlConnection(connectionString8);
                                                                                                    SqlCommand cmd9 = new SqlCommand(insertSQL7, con9);
                                                                                                    int added7 = 0;

                                                                                                    try
                                                                                                    {
                                                                                                        con9.Open();
                                                                                                        added7 = cmd9.ExecuteNonQuery();





                                                                                                        if (added7 == 1)
                                                                                                        {
                                                                                                            string insertSQL8;
                                                                                                            insertSQL8 = "INSERT INTO job_cylinder (";
                                                                                                            insertSQL8 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                                                            insertSQL8 += "VALUES('";
                                                                                                            insertSQL8 += Session["id"].ToString() + "','";
                                                                                                        


                                                                                                            insertSQL8 += TextBox165.Text + "','";
                                                                                                            insertSQL8 += TextBox166.Text + "','";
                                                                                                            insertSQL8 += TextBox167.Text + "','";
                                                                                                            insertSQL8 += TextBox168.Text + "','";
                                                                                                            insertSQL8 += TextBox169.Text + "','";
                                                                                                            insertSQL8 += TextBox170.Text + "','";
                                                                                                            insertSQL8 += TextBox171.Text + "','";
                                                                                                            insertSQL8 += TextBox172.Text + "','";
                                                                                                            insertSQL8 += TextBox173.Text + "','";
                                                                                                            insertSQL8 += TextBox174.Text + "','";
                                                                                                            insertSQL8 += TextBox175.Text + "','";
                                                                                                            insertSQL8 += TextBox176.Text + "','";
                                                                                                            insertSQL8 += TextBox177.Text + "','";
                                                                                                            insertSQL8 += TextBox178.Text + "','";
                                                                                                            insertSQL8 += TextBox179.Text + "','";
                                                                                                            insertSQL8 += TextBox180.Text + "','";
                                                                                                            insertSQL8 += TextBox181.Text + "','";
                                                                                                            insertSQL8 += 8 + "')";


                                                                                                            String connectionString9 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                            SqlConnection con10 = new SqlConnection(connectionString9);
                                                                                                            SqlCommand cmd10 = new SqlCommand(insertSQL8, con10);
                                                                                                            int added8 = 0;

                                                                                                            try
                                                                                                            {
                                                                                                                con10.Open();
                                                                                                                added8 = cmd10.ExecuteNonQuery();





                                                                                                                if (added8 == 1)
                                                                                                                {



                                                                                                                    string insertSQL9;
                                                                                                                    insertSQL9 = "INSERT INTO job_cylinder (";
                                                                                                                    insertSQL9 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                                                                    insertSQL9 += "VALUES('";
                                                                                                                    insertSQL9 += Session["id"].ToString() + "','";
                                                                                                                  
                                                                                                                    insertSQL9 += TextBox182.Text + "','";
                                                                                                                    insertSQL9 += TextBox183.Text + "','";
                                                                                                                    insertSQL9 += TextBox184.Text + "','";
                                                                                                                    insertSQL9 += TextBox185.Text + "','";
                                                                                                                    insertSQL9 += TextBox186.Text + "','";
                                                                                                                    insertSQL9 += TextBox187.Text + "','";
                                                                                                                    insertSQL9 += TextBox188.Text + "','";
                                                                                                                    insertSQL9 += TextBox189.Text + "','";
                                                                                                                    insertSQL9 += TextBox190.Text + "','";
                                                                                                                    insertSQL9 += TextBox191.Text + "','";
                                                                                                                    insertSQL9 += TextBox192.Text + "','";
                                                                                                                    insertSQL9 += TextBox193.Text + "','";
                                                                                                                    insertSQL9 += TextBox194.Text + "','";
                                                                                                                    insertSQL9 += TextBox195.Text + "','";
                                                                                                                    insertSQL9 += TextBox196.Text + "','";
                                                                                                                    insertSQL9 += TextBox197.Text + "','";
                                                                                                                    insertSQL9 += TextBox198.Text + "','";
                                                                                                                    insertSQL9 += 9 + "')";


                                                                                                                    String connectionString10 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                    SqlConnection con11 = new SqlConnection(connectionString10);
                                                                                                                    SqlCommand cmd11 = new SqlCommand(insertSQL9, con11);
                                                                                                                    int added9 = 0;

                                                                                                                    try
                                                                                                                    {
                                                                                                                        con11.Open();
                                                                                                                        added9 = cmd11.ExecuteNonQuery();





                                                                                                                        if (added9 == 1)
                                                                                                                        {

                                                                                                                            string insertSQL10;
                                                                                                                            insertSQL10 = "INSERT INTO job_cylinder (";
                                                                                                                            insertSQL10 += "pid, posino, colour,cylinderdiameter,  circumference,printwidth,referencecolour,cylinderfacewidth,roughness,screen,stylusangle,depth, cellwallvolume, channel ,engravingtype,stretchfactor,chromelayerthickness,xdiagonal,unit )";
                                                                                                                            insertSQL10 += "VALUES('";
                                                                                                                            insertSQL10 += Session["id"].ToString() + "','";
                                                                                                                         
                                                                                                                            insertSQL10 += TextBox199.Text + "','";
                                                                                                                            insertSQL10 += TextBox200.Text + "','";
                                                                                                                            insertSQL10 += TextBox201.Text + "','";
                                                                                                                            insertSQL10 += TextBox202.Text + "','";
                                                                                                                            insertSQL10 += TextBox203.Text + "','";
                                                                                                                            insertSQL10 += TextBox204.Text + "','";
                                                                                                                            insertSQL10 += TextBox205.Text + "','";
                                                                                                                            insertSQL10 += TextBox206.Text + "','";
                                                                                                                            insertSQL10 += TextBox207.Text + "','";
                                                                                                                            insertSQL10 += TextBox208.Text + "','";
                                                                                                                            insertSQL10 += TextBox209.Text + "','";
                                                                                                                            insertSQL10 += TextBox210.Text + "','";
                                                                                                                            insertSQL10 += TextBox211.Text + "','";
                                                                                                                            insertSQL10 += TextBox112.Text + "','";
                                                                                                                            insertSQL10 += TextBox213.Text + "','";
                                                                                                                            insertSQL10 += TextBox214.Text + "','";
                                                                                                                            insertSQL10 += TextBox215.Text + "','";
                                                                                                                            insertSQL10 += 10 + "')";


                                                                                                                            String connectionString111 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                            SqlConnection con12 = new SqlConnection(connectionString111);
                                                                                                                            SqlCommand cmd12 = new SqlCommand(insertSQL10, con12);
                                                                                                                            int added10 = 0;

                                                                                                                            try
                                                                                                                            {
                                                                                                                                con12.Open();
                                                                                                                                added10 = cmd12.ExecuteNonQuery();





                                                                                                                                if (added10 == 1)
                                                                                                                                {

































                                                                                                                                    string insertSQL50;
                                                                                                                                    insertSQL50 = "INSERT INTO job_ink (";
                                                                                                                                    insertSQL50 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, unit)";
                                                                                                                                    insertSQL50 += "VALUES('";
                                                                                                                                    insertSQL50 += Session["id"].ToString() + "','";
                                                                                                                                   
                                                                                                                                    insertSQL50 += TextBox216.Text + "','";
                                                                                                                                    insertSQL50 += TextBox217.Text + "','";
                                                                                                                                    insertSQL50 += TextBox218.Text + "','";
                                                                                                                                    insertSQL50 += TextBox219.Text + "','";
                                                                                                                                    insertSQL50 += TextBox220.Text + "','";
                                                                                                                                    insertSQL50 += TextBox221.Text + "','";
                                                                                                                                    insertSQL50 += TextBox222.Text + "','";
                                                                                                                                    insertSQL50 += TextBox223.Text + "','";
                                                                                                                                    insertSQL50 += TextBox224.Text + "','";
                                                                                                                                    insertSQL50 += TextBox225.Text + "','";
                                                                                                                                    insertSQL50 += TextBox226.Text + "','";
                                                                                                                                    insertSQL50 += TextBox227.Text + "','";
                                                                                                                                   
                                                                                                                                    insertSQL50 += 1 + "')";




                                                                                                                                    String connectionString50 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                    SqlConnection con50 = new SqlConnection(connectionString50);
                                                                                                                                    SqlCommand cmd50 = new SqlCommand(insertSQL50, con50);
                                                                                                                                    int added50 = 0;

                                                                                                                                    try
                                                                                                                                    {
                                                                                                                                        con50.Open();
                                                                                                                                        added50 = cmd50.ExecuteNonQuery();





                                                                                                                                        if (added50 == 1)
                                                                                                                                        {




                                                                                                                                            string insertSQL51;
                                                                                                                                            insertSQL51 = "INSERT INTO job_ink (";
                                                                                                                                            insertSQL51 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, unit)";
                                                                                                                                            insertSQL51 += "VALUES('";
                                                                                                                                            insertSQL51 += Session["id"].ToString() + "','";
                                                                                                                                        
                                                                                                                                            insertSQL51 += TextBox233.Text + "','";
                                                                                                                                            insertSQL51 += TextBox234.Text + "','";
                                                                                                                                            insertSQL51 += TextBox235.Text + "','";
                                                                                                                                            insertSQL51 += TextBox236.Text + "','";
                                                                                                                                            insertSQL51 += TextBox237.Text + "','";
                                                                                                                                            insertSQL51 += TextBox238.Text + "','";
                                                                                                                                            insertSQL51 += TextBox239.Text + "','";
                                                                                                                                            insertSQL51 += TextBox240.Text + "','";
                                                                                                                                            insertSQL51 += TextBox241.Text + "','";
                                                                                                                                            insertSQL51 += TextBox242.Text + "','";
                                                                                                                                            insertSQL51 += TextBox243.Text + "','";
                                                                                                                                            insertSQL51 += TextBox244.Text + "','";
                                                                                                                                           
                                                                                                                                            insertSQL51 += 2 + "')";




                                                                                                                                            String connectionString51 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                            SqlConnection con51 = new SqlConnection(connectionString51);
                                                                                                                                            SqlCommand cmd51 = new SqlCommand(insertSQL51, con51);
                                                                                                                                            int added51 = 0;

                                                                                                                                            try
                                                                                                                                            {
                                                                                                                                                con51.Open();
                                                                                                                                                added51 = cmd51.ExecuteNonQuery();





                                                                                                                                                if (added51 == 1)
                                                                                                                                                {



                                                                                                                                                    string insertSQL52;
                                                                                                                                                    insertSQL52 = "INSERT INTO job_ink (";
                                                                                                                                                    insertSQL52 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, unit)";
                                                                                                                                                    insertSQL52 += "VALUES('";
                                                                                                                                                    insertSQL52 += Session["id"].ToString() + "','";
                                                                                                                                                  
                                                                                                                                                    insertSQL52 += TextBox250.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox251.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox252.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox253.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox254.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox255.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox256.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox257.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox258.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox259.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox260.Text + "','";
                                                                                                                                                    insertSQL52 += TextBox261.Text + "','";
                                                                                                                                                   
                                                                                                                                                    insertSQL52 += 3 + "')";




                                                                                                                                                    String connectionString52 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                    SqlConnection con52 = new SqlConnection(connectionString52);
                                                                                                                                                    SqlCommand cmd52 = new SqlCommand(insertSQL52, con52);
                                                                                                                                                    int added52 = 0;

                                                                                                                                                    try
                                                                                                                                                    {
                                                                                                                                                        con52.Open();
                                                                                                                                                        added52 = cmd52.ExecuteNonQuery();





                                                                                                                                                        if (added52 == 1)
                                                                                                                                                        {


                                                                                                                                                            string insertSQL53;
                                                                                                                                                            insertSQL53 = "INSERT INTO job_ink (";
                                                                                                                                                            insertSQL53 += " pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, unit)";
                                                                                                                                                            insertSQL53 += "VALUES('";
                                                                                                                                                            insertSQL53 += Session["id"].ToString() + "','";
                                                                                                                                                          
                                                                                                                                                            insertSQL53 += TextBox267.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox268.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox269.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox270.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox271.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox272.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox273.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox274.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox275.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox276.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox277.Text + "','";
                                                                                                                                                            insertSQL53 += TextBox278.Text + "','";
                                                                                                                                                      
                                                                                                                                                            insertSQL53 += 4 + "')";




                                                                                                                                                            String connectionString53 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                            SqlConnection con53 = new SqlConnection(connectionString53);
                                                                                                                                                            SqlCommand cmd53 = new SqlCommand(insertSQL53, con53);
                                                                                                                                                            int added53 = 0;

                                                                                                                                                            try
                                                                                                                                                            {
                                                                                                                                                                con53.Open();
                                                                                                                                                                added53 = cmd53.ExecuteNonQuery();





                                                                                                                                                                if (added53 == 1)
                                                                                                                                                                {



                                                                                                                                                                    string insertSQL54;
                                                                                                                                                                    insertSQL54 = "INSERT INTO job_ink (";
                                                                                                                                                                    insertSQL54 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive,  unit)";
                                                                                                                                                                    insertSQL54 += "VALUES('";
                                                                                                                                                                    insertSQL54 += Session["id"].ToString() + "','";
                                                                                                                                                              
                                                                                                                                                                    insertSQL54 += TextBox284.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox285.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox286.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox287.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox288.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox289.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox290.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox291.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox292.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox293.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox294.Text + "','";
                                                                                                                                                                    insertSQL54 += TextBox295.Text + "','";
                                                                                                                                                                   
                                                                                                                                                                    insertSQL54 += 5 + "')";




                                                                                                                                                                    String connectionString54 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                    SqlConnection con54 = new SqlConnection(connectionString54);
                                                                                                                                                                    SqlCommand cmd54 = new SqlCommand(insertSQL54, con54);
                                                                                                                                                                    int added54 = 0;

                                                                                                                                                                    try
                                                                                                                                                                    {
                                                                                                                                                                        con54.Open();
                                                                                                                                                                        added54 = cmd54.ExecuteNonQuery();





                                                                                                                                                                        if (added54 == 1)
                                                                                                                                                                        {




                                                                                                                                                                            string insertSQL55;
                                                                                                                                                                            insertSQL55 = "INSERT INTO job_ink (";
                                                                                                                                                                            insertSQL55 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive,  unit)";
                                                                                                                                                                            insertSQL55 += "VALUES('";
                                                                                                                                                                            insertSQL55 += Session["id"].ToString() + "','";
                                                                                                                                                                        
                                                                                                                                                                            insertSQL55 += TextBox301.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox302.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox303.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox304.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox305.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox306.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox307.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox308.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox309.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox310.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox311.Text + "','";
                                                                                                                                                                            insertSQL55 += TextBox312.Text + "','";
                                                                                                                                                                       ;
                                                                                                                                                                            insertSQL55 += 6 + "')";




                                                                                                                                                                            String connectionString55 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                            SqlConnection con55 = new SqlConnection(connectionString55);
                                                                                                                                                                            SqlCommand cmd55 = new SqlCommand(insertSQL55, con55);
                                                                                                                                                                            int added55 = 0;

                                                                                                                                                                            try
                                                                                                                                                                            {
                                                                                                                                                                                con55.Open();
                                                                                                                                                                                added55 = cmd55.ExecuteNonQuery();





                                                                                                                                                                                if (added55 == 1)
                                                                                                                                                                                {




                                                                                                                                                                                    string insertSQL56;
                                                                                                                                                                                    insertSQL56 = "INSERT INTO job_ink (";
                                                                                                                                                                                    insertSQL56 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners, tonerratio, additive,  unit)";
                                                                                                                                                                                    insertSQL56 += "VALUES('";
                                                                                                                                                                                    insertSQL56 += Session["id"].ToString() + "','";
                                                                                                                                                                                
                                                                                                                                                                                    insertSQL56 += TextBox318.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox319.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox320.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox321.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox322.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox323.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox324.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox335.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox326.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox327.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox328.Text + "','";
                                                                                                                                                                                    insertSQL56 += TextBox329.Text + "','";
                                                                                                                                                                                
                                                                                                                                                                                    insertSQL56 += 7 + "')";




                                                                                                                                                                                    String connectionString56 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                    SqlConnection con56 = new SqlConnection(connectionString56);
                                                                                                                                                                                    SqlCommand cmd56 = new SqlCommand(insertSQL56, con56);
                                                                                                                                                                                    int added56 = 0;

                                                                                                                                                                                    try
                                                                                                                                                                                    {
                                                                                                                                                                                        con56.Open();
                                                                                                                                                                                        added56 = cmd56.ExecuteNonQuery();





                                                                                                                                                                                        if (added56 == 1)
                                                                                                                                                                                        {


                                                                                                                                                                                            string insertSQL57;
                                                                                                                                                                                            insertSQL57 = "INSERT INTO job_ink (";
                                                                                                                                                                                            insertSQL57 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, unit)";
                                                                                                                                                                                            insertSQL57 += "VALUES('";
                                                                                                                                                                                            insertSQL57 += Session["id"].ToString() + "','";
                                                                                                                                                                                     
                                                                                                                                                                                            insertSQL57 += TextBox335.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox336.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox337.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox338.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox339.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox340.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox341.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox342.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox343.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox344.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox345.Text + "','";
                                                                                                                                                                                            insertSQL57 += TextBox346.Text + "','";
                                                                                                                                                                                          
                                                                                                                                                                                            insertSQL57 += 8 + "')";




                                                                                                                                                                                            String connectionString57 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                            SqlConnection con57 = new SqlConnection(connectionString57);
                                                                                                                                                                                            SqlCommand cmd57 = new SqlCommand(insertSQL57, con57);
                                                                                                                                                                                            int added57 = 0;

                                                                                                                                                                                            try
                                                                                                                                                                                            {
                                                                                                                                                                                                con57.Open();
                                                                                                                                                                                                added57 = cmd57.ExecuteNonQuery();





                                                                                                                                                                                                if (added57 == 1)
                                                                                                                                                                                                {



                                                                                                                                                                                                    string insertSQL58;
                                                                                                                                                                                                    insertSQL58 = "INSERT INTO job_ink (";
                                                                                                                                                                                                    insertSQL58 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive, unit)";
                                                                                                                                                                                                    insertSQL58 += "VALUES('";
                                                                                                                                                                                                    insertSQL58 += Session["id"].ToString() + "','";
                                                                                                                                                                                                    
                                                                                                                                                                                                    insertSQL58 += TextBox352.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox353.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox354.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox355.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox356.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox357.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox358.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox359.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox360.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox361.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox362.Text + "','";
                                                                                                                                                                                                    insertSQL58 += TextBox363.Text + "','";
                                                                                                                                                                                                    
                                                                                                                                                                                                    insertSQL58 += 9 + "')";




                                                                                                                                                                                                    String connectionString58 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                                    SqlConnection con58 = new SqlConnection(connectionString58);
                                                                                                                                                                                                    SqlCommand cmd58 = new SqlCommand(insertSQL58, con58);
                                                                                                                                                                                                    int added58 = 0;

                                                                                                                                                                                                    try
                                                                                                                                                                                                    {
                                                                                                                                                                                                        con58.Open();
                                                                                                                                                                                                        added58 = cmd58.ExecuteNonQuery();





                                                                                                                                                                                                        if (added58 == 1)
                                                                                                                                                                                                        {

                                                                                                                                                                                                            string insertSQL59;
                                                                                                                                                                                                            insertSQL59 = "INSERT INTO job_ink (";
                                                                                                                                                                                                            insertSQL59 += "   pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive,  unit)";
                                                                                                                                                                                                            insertSQL59 += "VALUES('";
                                                                                                                                                                                                            insertSQL59 += Session["id"].ToString() + "','";
                                                                                                                                                                                                           
                                                                                                                                                                                                            insertSQL59 += TextBox369.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox370.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox371.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox372.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox373.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox374.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox375.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox376.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox377.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox378.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox379.Text + "','";
                                                                                                                                                                                                            insertSQL59 += TextBox380.Text + "','";
                                                                                                                                                                                                           
                                                                                                                                                                                                            insertSQL59 += 10 + "')";




                                                                                                                                                                                                            String connectionString59 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                                            SqlConnection con59 = new SqlConnection(connectionString59);
                                                                                                                                                                                                            SqlCommand cmd59 = new SqlCommand(insertSQL59, con59);
                                                                                                                                                                                                            int added59 = 0;

                                                                                                                                                                                                            try
                                                                                                                                                                                                            {
                                                                                                                                                                                                                con59.Open();
                                                                                                                                                                                                                added59 = cmd59.ExecuteNonQuery();





                                                                                                                                                                                                                if (added59 == 1)
                                                                                                                                                                                                                {


                                                                                                                                                                                                                    string insertSQL60;
                                                                                                                                                                                                                    insertSQL60 = "INSERT INTO job_ink (";
                                                                                                                                                                                                                    insertSQL60 += "pid,inkcode, inkcoverage, description, gsm, price, reducer, retarder, viscosity, mediums, toners,tonerratio, additive,  unit)";
                                                                                                                                                                                                                    insertSQL60 += "VALUES('";
                                                                                                                                                                                                                    insertSQL60 += Session["id"].ToString() + "','";
                                                                                                                                                                                                                   
                                                                                                                                                                                                                    insertSQL60 += TextBox381.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox382.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox383.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox384.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox385.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox386.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox387.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox388.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox389.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox390.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox391.Text + "','";
                                                                                                                                                                                                                    insertSQL60 += TextBox392.Text + "','";
                                                                                                                                                                                                                 
                                                                                                                                                                                                                    insertSQL60 += 11 + "')";




                                                                                                                                                                                                                    String connectionString60 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                                                    SqlConnection con60 = new SqlConnection(connectionString60);
                                                                                                                                                                                                                    SqlCommand cmd60 = new SqlCommand(insertSQL60, con60);
                                                                                                                                                                                                                    int added60 = 0;

                                                                                                                                                                                                                    try
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        con60.Open();
                                                                                                                                                                                                                        added60 = cmd60.ExecuteNonQuery();





                                                                                                                                                                                                                        if (added60 == 1)
                                                                                                                                                                                                                        {



                                                                                                                                                                                                                            string insertSQL61;
                                                                                                                                                                                                                            insertSQL61 = "INSERT INTO job_emboss (";
                                                                                                                                                                                                                            insertSQL61 += "embid, mandrel,type,circmale, circfemale,diameter,supplier,supplierno,depth,height,artworknumber,calyear, month, datereceived,artworkdate,country, comment)";
                                                                                                                                                                                                                            insertSQL61 += "VALUES('";
                                                                                                                                                                                                                            
                                                                                                                                                                                                                         
                                                                                                                                                                                                                            insertSQL61 += TextBox393.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox394.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox395.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox419.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox396.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox397.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox398.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox399.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox400.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox420.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox401.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox402.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox403.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox404.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox405.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox421.Text + "','";
                                                                                                                                                                                                                            insertSQL61 += TextBox406.Text + "')";









                                                                                                                                                                                                                            String connectionString61 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                                                            SqlConnection con61 = new SqlConnection(connectionString61);
                                                                                                                                                                                                                            SqlCommand cmd61 = new SqlCommand(insertSQL61, con61);
                                                                                                                                                                                                                            int added61 = 0;

                                                                                                                                                                                                                            try
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                con61.Open();
                                                                                                                                                                                                                                added61 = cmd61.ExecuteNonQuery();





                                                                                                                                                                                                                                if (added61 == 1)
                                                                                                                                                                                                                                {

                                                                                                                                                                                                                                      string selectSQL61;
             selectSQL61 = " Select Top 1 * FROM  job_emboss  order by id desc ";
            dbConn61.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
            cmd61.Connection = dbConn61;
            cmd61.CommandText = selectSQL61;
            cmd61.CommandType = CommandType.Text;

            try
            {
                dbConn61.Open();
                dr61 = cmd61.ExecuteReader();
                if (dr61.Read())
                {
                    Session["61"]= dr61["id"].ToString();

                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (SqlConnection con63 = new SqlConnection(constr))
                {
                    string query = "UPDATE job   SET embid = @embid  WHERE pid ='" + TextBox7.Text + "' ";
                    {
                        cmd63.CommandText = query;
                        cmd63.Connection = con63;
                        cmd63.CommandType = CommandType.Text;
                        cmd63.Parameters.AddWithValue("@embid", Session["61"].ToString());
                       
                        con63.Open();
                        cmd63.ExecuteNonQuery();

                   
                        con63.Close();

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
                        dbConn61.Close();
                    }





























                                                                                                                                                                                                                                    string insertSQL62;
                                                                                                                                                                                                                                    insertSQL62 = "INSERT INTO job_die ("; 
                                                                                                                                                                                                                                    insertSQL62 += "dieno,templateno,model,type,brassfemaleembossin,brassmaleembossing,supplier,lcutterwidth,lcutterlength,comment,lmacross,lmaround,caditemidno,cadrefno,cadnoups,cadpackheight,cadpackwidth,cadpackbreadth,caddesignheight,caddesignwidth,cadgripperwidth,cadgripperlenth,cadchargenno   )";
                                                                                                                                                                                                                                    insertSQL62 += "VALUES('";
                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                    insertSQL62 += TextBox407.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox408.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox409.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox410.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox411.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox412.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox413.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox414.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox415.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox416.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox417.Text + "','";





                                                                                                                                                                                                                                    insertSQL62 += TextBox418.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox422.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox423.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox424.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox425.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox426.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox427.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox428.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox429.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox430.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox431.Text + "','";
                                                                                                                                                                                                                                    insertSQL62 += TextBox432.Text + "')";



                                                                                                                                                                                                                                    String connectionString62 = "Data Source=Technot; Initial Catalog= kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                                                                    SqlConnection con62 = new SqlConnection(connectionString62);
                                                                                                                                                                                                                                    SqlCommand cmd62 = new SqlCommand(insertSQL62, con62);
                                                                                                                                                                                                                                    int added62 = 0;

                                                                                                                                                                                                                                    try
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                        con62.Open();
                                                                                                                                                                                                                                        added62 = cmd62.ExecuteNonQuery();





                                                                                                                                                                                                                                        if (added62 == 1)
                                                                                                                                                                                                                                        {

                                                                                                                                                                                                                                            // Response.Redirect("Dieeehhhhhhffh.aspx");


                                                                                                                                                                                                                                            string selectSQL64;
                                                                                                                                                                                                                                            selectSQL64 = " Select Top 1 * FROM  job_die  order by id desc ";
                                                                                                                                                                                                                                            dbConn64.ConnectionString = "Data Source=Technot; Initial Catalog=kaging;User ID=sa; password=Cylindervalve?%*; Integrated Security=False; Max Pool Size=200; ";
                                                                                                                                                                                                                                            cmd64.Connection = dbConn64;
                                                                                                                                                                                                                                            cmd64.CommandText = selectSQL64;
                                                                                                                                                                                                                                            cmd64.CommandType = CommandType.Text;

                                                                                                                                                                                                                                            try
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                dbConn64.Open();
                                                                                                                                                                                                                                                dr64 = cmd64.ExecuteReader();
                                                                                                                                                                                                                                                if (dr64.Read())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    Session["64"] = dr64["id"].ToString();

                                                                                                                                                                                                                                                    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                                                                                                                                                                                                                                                    using (SqlConnection con65 = new SqlConnection(constr))
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                        string query = "UPDATE job   SET diereferneceno = @diereferneceno  WHERE pid ='" + TextBox7.Text + "' ";
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            cmd65.CommandText = query;
                                                                                                                                                                                                                                                            cmd65.Connection = con65;
                                                                                                                                                                                                                                                            cmd65.CommandType = CommandType.Text;
                                                                                                                                                                                                                                                            cmd65.Parameters.AddWithValue("@diereferneceno", Session["64"].ToString());

                                                                                                                                                                                                                                                            con65.Open();
                                                                                                                                                                                                                                                            cmd65.ExecuteNonQuery();


                                                                                                                                                                                                                                                            con65.Close();
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
                                                                                                                                                                                                                                                dbConn64.Close();
                                                                                                                                                                                                                                            }















                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            Label007.Text = "Error @ Emboss";
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    catch (Exception err)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                        Response.Write(err.ToString());

                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    finally
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                        con62.Close();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    //  Response.Redirect("Jobhhhhhhh.aspx");
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    Label007.Text = "Error @ Emboss";
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            catch (Exception err)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                Response.Write(err.ToString());

                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            finally
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                con61.Close();
                                                                                                                                                                                                                            }






















                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            Label007.Text = "Error @ unit 11";
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    catch (Exception err)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        Response.Write(err.ToString());

                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    finally
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        con60.Close();
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    Label007.Text = "Error @ unit 10";
                                                                                                                                                                                                                }

                                                                                                                                                                                                            }
                                                                                                                                                                                                            catch (Exception err)
                                                                                                                                                                                                            {
                                                                                                                                                                                                                Response.Write(err.ToString());

                                                                                                                                                                                                            }
                                                                                                                                                                                                            finally
                                                                                                                                                                                                            {
                                                                                                                                                                                                                con59.Close();
                                                                                                                                                                                                            }

                                                                                                                                                                                                        }
                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                            Label007.Text = "Error @ unit 9";
                                                                                                                                                                                                        }


                                                                                                                                                                                                    }

                                                                                                                                                                                                    catch (Exception err)
                                                                                                                                                                                                    {

                                                                                                                                                                                                        Response.Write(err.ToString());

                                                                                                                                                                                                    }

                                                                                                                                                                                                    finally
                                                                                                                                                                                                    {

                                                                                                                                                                                                        con58.Close();

                                                                                                                                                                                                    }


                                                                                                                                                                                                }


                                                                                                                                                                                                else
                                                                                                                                                                                                {

                                                                                                                                                                                                    Label007.Text = "Error @ unit 8";

                                                                                                                                                                                                }

                                                                                                                                                                                            }

                                                                                                                                                                                            catch (Exception err)
                                                                                                                                                                                            {
                                                                                                                                                                                                Response.Write(err.ToString());
                                                                                                                                                                                            }

                                                                                                                                                                                            finally
                                                                                                                                                                                            {
                                                                                                                                                                                                con57.Close();

                                                                                                                                                                                            }

                                                                                                                                                                                        }
                                                                                                                                                                                        else
                                                                                                                                                                                        {

                                                                                                                                                                                            Label007.Text = "Error @ unit 7";
                                                                                                                                                                                        }


                                                                                                                                                                                    }

                                                                                                                                                                                    catch (Exception err)
                                                                                                                                                                                    {

                                                                                                                                                                                        Response.Write(err.ToString());

                                                                                                                                                                                    }


                                                                                                                                                                                    finally
                                                                                                                                                                                    {

                                                                                                                                                                                        con56.Close();

                                                                                                                                                                                    }

                                                                                                                                                                                }
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    Label007.Text = "Error @ unit 6";
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
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            Label007.Text = "Error @ unit 5";
                                                                                                                                                                        }

                                                                                                                                                                    }
                                                                                                                                                                    catch (Exception err)
                                                                                                                                                                    {
                                                                                                                                                                        Response.Write(err.ToString());

                                                                                                                                                                    }
                                                                                                                                                                    finally
                                                                                                                                                                    {

                                                                                                                                                                        con54.Close();

                                                                                                                                                                    }

                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    Label007.Text = "Error @ unit 4";

                                                                                                                                                                }


                                                                                                                                                            }
                                                                                                                                                            catch (Exception err)
                                                                                                                                                            {

                                                                                                                                                                Response.Write(err.ToString());

                                                                                                                                                            }

                                                                                                                                                            finally
                                                                                                                                                            {
                                                                                                                                                                con53.Close();

                                                                                                                                                            }
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {

                                                                                                                                                            Label007.Text = "Error @ unit 3";

                                                                                                                                                        }

                                                                                                                                                    }

                                                                                                                                                    catch (Exception err)
                                                                                                                                                    {

                                                                                                                                                        Response.Write(err.ToString());

                                                                                                                                                    }

                                                                                                                                                    finally
                                                                                                                                                    {
                                                                                                                                                        con52.Close();
                                                                                                                                                    }

                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {

                                                                                                                                                    Label007.Text = "Error @ unit 2";

                                                                                                                                                }
                                                                                                                                            }

                                                                                                                                            catch (Exception err)
                                                                                                                                            {
                                                                                                                                                Response.Write(err.ToString());


                                                                                                                                            }

                                                                                                                                            finally
                                                                                                                                            {
                                                                                                                                                con51.Close();
                                                                                                                                            }

                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            Label007.Text = "Error @ unit 1";
                                                                                                                                        }


                                                                                                                                    }
                                                                                                                                    catch (Exception err)
                                                                                                                                    {
                                                                                                                                        Response.Write(err.ToString());

                                                                                                                                    }
                                                                                                                                    finally
                                                                                                                                    {
                                                                                                                                        con50.Close();
                                                                                                                                    }








                                                                                                                                    // Response.Redirect("Job.aspx");
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    Label007.Text = "Error @ unit 10";
                                                                                                                                }

                                                                                                                            }
                                                                                                                            catch (Exception err)
                                                                                                                            {
                                                                                                                                Response.Write(err.ToString());

                                                                                                                            }
                                                                                                                            finally
                                                                                                                            {
                                                                                                                                con12.Close();
                                                                                                                            }

                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            Label007.Text = "Error @ unit 9";
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
                                                                                                                else
                                                                                                                {
                                                                                                                    Label007.Text = "Error @ unit 8";
                                                                                                                }












                                                                                                            }
                                                                                                            catch (Exception err)
                                                                                                            {
                                                                                                                Response.Write(err.ToString());

                                                                                                            }
                                                                                                            finally
                                                                                                            {
                                                                                                                con10.Close();
                                                                                                            }


                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            Label007.Text = "Error @ unit 7";
                                                                                                        }


                                                                                                    }
                                                                                                    catch (Exception err)
                                                                                                    {
                                                                                                        Response.Write(err.ToString());

                                                                                                    }
                                                                                                    finally
                                                                                                    {
                                                                                                        con9.Close();
                                                                                                    }




                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    Label007.Text = "Error @ unit 6";
                                                                                                }


                                                                                            }
                                                                                            catch (Exception err)
                                                                                            {
                                                                                                Response.Write(err.ToString());

                                                                                            }
                                                                                            finally
                                                                                            {
                                                                                                con8.Close();
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            Label007.Text = "Error @ unit 5";
                                                                                        }


                                                                                    }
                                                                                    catch (Exception err)
                                                                                    {
                                                                                        Response.Write(err.ToString());

                                                                                    }
                                                                                    finally
                                                                                    {
                                                                                        con7.Close();
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    Label007.Text = "Error @ unit 4";
                                                                                }


                                                                            }
                                                                            catch (Exception err)
                                                                            {
                                                                                Response.Write(err.ToString());

                                                                            }
                                                                            finally
                                                                            {
                                                                                con6.Close();
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            Label007.Text = "Error @ unit 3";
                                                                        }


                                                                    }
                                                                    catch (Exception err)
                                                                    {
                                                                        Response.Write(err.ToString());

                                                                    }
                                                                    finally
                                                                    {
                                                                        con5.Close();
                                                                    }


                                                                }
                                                                else
                                                                {
                                                                    Label007.Text = "Error @ unit 2";
                                                                }


                                                            }
                                                            catch (Exception err)
                                                            {
                                                                Response.Write(err.ToString());

                                                            }
                                                            finally
                                                            {
                                                                con4.Close();
                                                            }

                                                        }
                                                        else
                                                        {
                                                            Label007.Text = "Error @ unit 1";
                                                        }


                                                    }
                                                    catch (Exception err)
                                                    {
                                                        Response.Write(err.ToString());

                                                    }
                                                    finally
                                                    {
                                                        con3.Close();
                                                    }
                                                    //    Response.Redirect("Jobs.aspx");
















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
                                            }// Label007.Text = added.ToString() + "records Inserted";
                                            //    Response.Redirect("Jobs.aspx");
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
                                        con3.Close();
                                    }

                                }
                                else
                                {
                                    Label007.Text = "Erro Detected  ";
                                }

                                dr2.Close();
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
        Response.Redirect("Jobs.aspx");

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
            dbConn.Close();
        }

    }

}