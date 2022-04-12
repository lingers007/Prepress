<%@ Page Language="C#" AutoEventWireup="true"     Debug="true"  CodeFile="Send.aspx.cs" Inherits="Send" %>






<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Manage Embossing</title>
   

  <style type="text/css">
        .style6
        {
            width: 1079px;
            height: 34px;
        }
        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, caption {
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
}
      
        </style>
       <style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:;}



#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
#customers0 {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

       </style>
<style>
table.roundedCorners { 
  border: 1px solid DarkOrange;
  border-radius: 13px; 
  border-spacing: 0;
  }
table.roundedCorners td, 
table.roundedCorners th { 
  border-bottom: 1px solid DarkOrange;
  padding: 4px; 
  }
table.roundedCorners tr:last-child > td {
  border-bottom: none;
}

    .style52
    {
        width: 228px;
    }
    .style140
    {
        width: 112px;
    }
    
    .Initial
    {}
    
    .style141
    {
        width: 175px;
    }
        
    .style146
    {
        width: 10px;
    }
    
        .style2
        {
            width: 303px;
        }
    .style147
    {
        width: 976px;
    }
    
    </style>












</head>


<table style="width: 100%; height: 10px;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">
           <img  alt="logo" class="style9" src="Images/capres.gif" /><img  alt="Header Image" src="Images/Continue.jpg" width="1022" height="104" /> </td>
    </tr>
    </table>
<body>
    <form id="form1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server" />

  

<table style="width: 100%;">
    <tr>
        <td class="style23">&nbsp;</td>
        <td class="style15">
            <table class="display" align="center" border="1px" bordercolor="grey" 
                style="width: 69%">
                <tr>
                    <td align="center" class="style147" 
                        style="font-size: large; color: #006699; font-family: Arial; font-weight: bold;">


                      
                
                 <table style="width: 50%; height: 47px;" align="right">
                    <tr>
                       
                         <td class="style141" align="right"> 
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx">Home</asp:HyperLink> |<asp:HyperLink 
                                ID="HyperLink2" runat="server" NavigateUrl="Login.aspx">Logout</asp:HyperLink>
                            
                        </td>
                        
                    </tr>
                </table>
              
                        <table id="customGrid" class="display" 
                            
                            
                            
                            style="width: 100%; height: 164px; color: #000080; background-color: #000099; margin-right: 5px;">
                            <tr>
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 96%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style52" align="left">
                                                <strong>SEND ITEMS</strong></td> 
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>

                            
                                <td class="style5" align="center" style="background-color: #FFFFFF">
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" 
            style="width: 58%; font-family: 'Arial'; font-weight: bolder;">
            <tr>
                <td class="style2">
                    Packing List No</td>
                <td>
                     <asp:TextBox ID="TextBox1" runat="server" Width="249px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style2">
                     Send To</td>
                <td>
                   

                       <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" 
                                style="margin-left: 0px" Width="253px" 
                                 
                               Font-Names="Arial" Font-Bold="True">
                               
                              
                                   <asp:ListItem Value="1">ADEHAM</asp:ListItem>
                                    <asp:ListItem Value="2">DIE RERULING</asp:ListItem>
                                     <asp:ListItem Value="3">GRAVURE CYLINDERS</asp:ListItem>
                                     <asp:ListItem Value="4">JANOSCHKA</asp:ListItem>
                                    <asp:ListItem Value="5">KAPCON</asp:ListItem>
                                     <asp:ListItem Value="6">KEATING</asp:ListItem>
                                     <asp:ListItem Value="7">KROMA</asp:ListItem>
                                    <asp:ListItem Value="8">KUNYUN</asp:ListItem>
                                     <asp:ListItem Value="9">MARBACH</asp:ListItem>
                                     <asp:ListItem Value="10">SAUERESSIG</asp:ListItem>
                                    <asp:ListItem Value="11">SAUERESSIG AFRICA</asp:ListItem>
                                     <asp:ListItem Value="12">SHILPEE</asp:ListItem>
                                     <asp:ListItem Value="13">SIGWERK</asp:ListItem>




                            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Reason&nbsp; For Sending</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="252px" Height="102px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="38px" onclick="Button1_Click" 
            Text="Send Out" Width="123px" Font-Bold="True" />
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
                                    <br />

                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style146"></td>
    </tr>
</table>





  
       









       
       
    </form>
</body>
</html>
