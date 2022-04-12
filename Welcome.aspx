<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>

html {
   min-height: 100%;
   background-image: url("Images/ts.jpg");
   background-size: cover;
   background-repeat: no-repeat;
   background-position: center center;
}
</style>



</head>
<body  >

    <form id="form1" runat="server">
    
    <table align="center"  style="width: 215px; height: 513px;">
        <tr>
            <td align="center" class="style4" 
                
                
                
                
                style="font-size: large; color: #FFFFFF; font-family: Cambria; font-weight: bolder;">
                <br />
                
                <br />
                    <br />
                    <br />
                    <br />
                <br />
                    <br />
                    <br />
                    <br />
                    <br />
                <br />
                <br />
                        <table align="center" border="1" style="width: 24%" bgcolor="White">
                    <tr>
                        <td class="style63" align="center" colspan="2" style="font-weight: bolder">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ADMIN LOGIN</td>
                    </tr>
                    <tr>
                        <td class="style63">
                            <b style="font-weight: bold">Username</b></td>
                        <td class="style63">
                            <asp:TextBox ID="TextBox1" runat="server" Width="128px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style63">
                            <b style="font-weight: bold">Password&nbsp;&nbsp; </b></td>
                        <td class="style63">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="128px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style63">
                            &nbsp;</td>
                        <td class="style63">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="31px" 
                                ImageUrl="Images/vb.png" onclick="ImageButton2_Click" style="margin-top: 3px" 
                                Width="82px" />
                        </td>
                    </tr>
                </table>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" 
                    ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                &nbsp;<br />
                       
                       
                     
                      
          
                <br />
                </td>
        </tr>
    </table>
       
 
  
    </form>
        
</body>
</html>

