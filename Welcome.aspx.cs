using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Data;

using System.Configuration;
using System.Security.Cryptography;

public partial class Welcome : System.Web.UI.Page
{
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd99 = new SqlCommand();
    SqlConnection conn99 = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlConnection dbConn = new SqlConnection();
    SqlDataReader dr;
    string selectSQL;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["username"] = TextBox1.Text;
       
        selectSQL = "select * from users  WHERE " + "username = @username AND password  = @password  ";


        dbConn.ConnectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
        cmd.Connection = dbConn;
        cmd.CommandText = selectSQL;
        cmd.CommandType = CommandType.Text;





        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
        cmd.Parameters.AddWithValue("@password", Encrypt(TextBox2.Text.Trim()));



        try
        {
            dbConn.Open();
         //   Response.Write(selectSQL);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                DateTime date1 = Convert.ToDateTime(DateTime.Now.ToString("MM/dd/yyyy hh:mm tt"));
                Session["date"] = date1;
                string insertSQL;
                insertSQL = "INSERT INTO usertracking (";
                insertSQL += "username,loggedin)";
                insertSQL += "VALUES('";

                insertSQL += TextBox1.Text + "','";

                insertSQL += date1  + "')";




                String connectionString = "data source= Technot; Initial Catalog=kaging;User ID=sa;password=Cylindervalve?%*;Integrated Security=False;Max Pool Size=200;";
                SqlConnection con1 = new SqlConnection(connectionString);
                SqlCommand cmd1 = new SqlCommand(insertSQL, con1);
                int added = 0;

                try
                {
                    con1.Open();
                    added = cmd1.ExecuteNonQuery();


                    //Label5.Text = added.ToString();


                    if (added == 1)
                    {
                      
                    }

                    else
                    {
                        Label1.Text = "Error @ unit 7";
                    }

                }
                catch (Exception err)
                {
                    Response.Write(err.ToString());

                }
                finally
                {

                    con1.Close();

                }

              Session["privilege"] = dr["privilege"].ToString();

                if (dr["privilege"].ToString() == "1" )
                {
                    Response.Redirect("Home.aspx");
                }
                else if (dr["privilege"].ToString() == "2")
                {
                    Response.Redirect("Home.aspx");
                }
                else if (dr["privilege"].ToString() == "3")
                {
                    Response.Redirect("Home.aspx");
                }
                else if (dr["privilege"].ToString() == "4")
                {
                    Response.Redirect("Home.aspx");
                }
               
            }
            else
            {
                Label1.Text = "Sorry You Can't Login  ";
            }
            dr.Close();
        }
        catch (Exception err)
        {
            Label1.Text = "Error  Logging in  ";
            Label1.Text += err.Message;
        }
        finally
        {
            dbConn.Close();
        }


    }



    private string Decrypt(string cipherText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            encryptor.Mode = CipherMode.CBC;
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }

    private string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
}