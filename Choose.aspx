<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Choose.aspx.cs" Inherits="Choose" %>




<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>DESIGN TRACKING SYSTEM</title>


   




    
    <style type="text/css">
        .style6
        {
            width: 1079px;
            height: 24px;
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
        .style9
        {
            width: 104px;
            height: 104px;
        }
        .style15
        {
            width: 407px;
        }
        .style20
        {
            width: 750px;
        }
        .style23
        {
            width: 149px;
        }
        .Initial
        {}
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
  border: 1px solid grey;
  border-radius: 5px; 
  border-spacing: 0;
  }
table.roundedCorners td, 
table.roundedCorners th  
{
     border-right: 0.2px solid #bbb;
  
  border-bottom: 1px solid grey;
  padding: 4px; 
  }
table.roundedCorners tr:last-child > td {
  border-bottom: none;
}

    .style140
    {
        height: 3px;
        width: 267px;
    }
    .style141
    {
        height: 45px;
    }
    
    
    
    .style142
    {
        width: 373px;
    }
    
    
    
    .style143
    {
        height: 3px;
        }
    
    
    
    .style144
    {
        width: 175px;
        height: 101px;
    }
    .style145
    {
        width: 175px;
        height: 79px;
    }
    .style146
    {
        height: 79px;
    }
    .style147
    {
        height: 101px;
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
 

  

<table style="width: 100%;">
    <tr>
        <td class="style23">&nbsp;</td>
        <td class="style15">
            <table class="display" align="center" border="1px" bordercolor="grey" style="width: 1050px">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">


                      
                



             
                 <table style="width: 50%; height: 47px;" align="right">
                    <tr>
                        <td class="style141" align="right"> 
                             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Home.aspx">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton2" runat="server" 
                                onclick="LinkButton2_Click">Logout</asp:LinkButton>
                            
                        </td>
                        
                        
                    </tr>
                </table>
              
                        <table id="customGrid" class="display" style="width: 100%; height: 164px; color: #000080; background-color: #000099;">
                            <tr>
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 100%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style143" align="center">
                                                <strong>DESIGN TECHNICAL SPECIFICATION</strong></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5" align="center" style="background-color: #FFFFFF">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <table style="width:100%;" class="roundedCorners">
                                        <tr>
                                            <td colspan="4">
                                                <strong style="font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize">
                                                CHOOSE WHAT TO DISPLAY</strong></td>
                                        </tr>
                                        <tr>
                                            <td class="style144">
                                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Job Description" 
                                                    Width="168px" />
                                            </td>
                                            <td class="style147">
                                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Material Specification" 
                                                    Width="170px" />
                                            </td>
                                            <td class="style147">
                                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Cylinder Specification" 
                                                    Width="176px" />
                                            </td>
                                            <td class="style147">
                                                <asp:CheckBox ID="CheckBox4" runat="server" Height="19px" Text="Ink" 
                                                    Width="168px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style145">
                                                <asp:CheckBox ID="CheckBox5" runat="server" Text="Embossing" Width="168px" />
                                            </td>
                                            <td class="style146">
                                                <asp:CheckBox ID="CheckBox6" runat="server" Text="Cutting /Punch Die" 
                                                    Width="168px" />
                                            </td>
                                            <td class="style146">
                                                <asp:CheckBox ID="CheckBox7" runat="server" Text="Offline Die Specs" 
                                                    Width="168px" />
                                            </td>
                                            <td class="style146">
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" 
                                        ForeColor="White" Height="50px" Text="Display DTS" Width="178px" 
                                        onclick="Button1_Click" />
                                    <br />
                                    <br />
                                    <br />
                                  
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="style142">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style142">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style142">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                  
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
                                    <asp:Label ID="lblRecord" runat="server"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td></td>
    </tr>
</table>

    </form>

  
</body>
</html>
