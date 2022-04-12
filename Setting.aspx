<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Setting.aspx.cs"     Debug="true"   Inherits="Setting" %>




<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Manage Settings</title>
   

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
  font-family: Arial;
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
  font-family: Arial, ;
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
    .style142
    {
        width: 158px;
    }
    .style143
    {
        width: 118px;
    }
    .style144
    {
        width: 64px;
    }
    
    .style145
    {
        width: 418px;
    }
    
    .style146
    {
        width: 10px;
    }
    
    </style>

 <style type="text/css">
    body {
        font-family: Arial;
        font-size: 10pt;
    }
 
    .Pager span {
        text-align: center;
        color: #999;
        display: inline-block;
        width: 20px;
        background-color: #A1DCF2;
        margin-right: 3px;
        line-height: 150%;
        border: 1px solid #3AC0F2;
    }
 
    .Pager a {
        text-align: center;
        display: inline-block;
        width: 20px;
        background-color: #3AC0F2;
        color: #fff;
        border: 1px solid #3AC0F2;
        margin-right: 3px;
        line-height: 150%;
        text-decoration: none;
    }
        .style148
        {
            width: 780px;
        }
     </style>


</head>


<table style="width: 100%; height: 10px;">
    <tr>
        <td class="style6">
          <img src="Images/Header.jpg" width="100%" height="112"  alt="header"/>
        </td>
    </tr>
</table>
<body>
    <form id="form1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server" />

  

<table style="width: 100%; border-color :Black;">
    <tr>
        <td class="style23">&nbsp;</td>
        <td class="style15">
            <table class="display" align="center"  bordercolor="black" style="width: 1050px">
                <tr>
                    <td align="center" class="style20" 
                        style="border-color: #000000; font-size: large; color: #000000; font-family: Centhury Gothic; font-weight: bold;">


                      
                
                 <table style="width: 50%; height: 47px;" align="right" >
                    <tr>
                        <td class="style141" align="right"> 
                                     <asp:LinkButton ID="LinkButton1" runat="server"  onclick="LinkButton1_Click" 
                                 ForeColor="Black">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton2" runat="server" 
                                onclick="LinkButton2_Click" ForeColor="Black">Logout</asp:LinkButton>
                            
                        </td>
                        
                        
                    </tr>
                </table>
              
                        <table id="customGrid" class="display" style="width: 100%; height: 164px; color: #000080; background-color: black;">
                            <tr>
                                <td style="border-style: 1; border-color:black; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 100%; height: 25px;border-color:black; ">
                                        <tr>
                                         <td style="border-style: 1; border-color: black; background-color: #FFFFFF"  
                                                class="style52" align="left">
                                                <strong>MANAGE SETTINGS</strong></td>
                                            <td>&nbsp;</td>
                                            <td align="right">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>

                            
                                <td class="style5" align="left" style="background-color: #FFFFFF">
                                  <table align="center" style="width: 75%;  font-family:; font-size: large;Arial; font-size: small; font-weight: bold; font-style: normal; color: 
                                        #FF0000;" border="2px">
                    <tr>
                        <td>
                            <asp:Button ID="Tab1" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab1_Click" Text="General settings"
                                Font-Bold="True" Width="246px" Font-Names="Arial" 
                                Font-Size="Large" Height="45px" />
                            <asp:Button ID="Tab2" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab2_Click" Text="Asset Categories"  Font-Bold="True" 
                                Font-Names="Arial" Font-Size="Large" Width="250px" 
                                Height="45px"   />


                            <asp:Button ID="Tab3" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab3_Click" Text="Suppliers"  Font-Bold="True" 
                                Font-Names="Arial" Font-Size="Large" Width="257px" 
                                Height="45px"   />

                         










                            <asp:MultiView ID="MainView" runat="server">
                               
                                <asp:View ID="View1" runat="server">

                                 <br />
<strong style="font-weight: bold; font-family: Arial; font-size: large; color: #000000">General Settings</strong>
                                  <br />
                                    <br />
                                    <br />
                                 <br />
                                 <br />
                                    
                                   <table align="center" style="width: 85%;">
                                        <tr>
                                            <td class="style142">
                                                Set Finanacial Year</td>
                                            <td class="style143">
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style144">
                                                <asp:Button ID="Button1" runat="server" Text="Set" 
                                                    Width="75px" onclick="Button1_Click" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style142">
                                                Set Calendar Year</td>
                                            <td class="style143">
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style144">
                                                <asp:Button ID="Button2" runat="server" Text="Set " Width="75px" 
                                                    onclick="Button2_Click" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style142">
                                                Set Vat Value</td>
                                            <td class="style143">
                                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="style144">
                                                <asp:Button ID="Button3" runat="server" Text="Set" Width="75px" 
                                                    onclick="Button3_Click" />
                                            </td>
                                            <td class="style152">
                                                <asp:Label ID="Label3" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label8" runat="server"></asp:Label>
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
                                    
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                   
                                    <br />
<strong style="font-weight: bold; font-family: Arial; font-size: large; color: #000000">Assest Categories</strong>
                                   <br />
                                    <br />
                                    <br />
                                    <br />
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="style145">  
                                                <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="black" BorderStyle="None"
                                        Font-Names="Arial" Font-Size="12px" DataKeyNames="id"
                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid" 
                                                   >
                                        <Columns>

                             
                                                                                                                                                                                                                          
                              
                                           
                                            <asp:BoundField DataField="id" HeaderText="S/N" />
                                            <asp:BoundField DataField="Category" HeaderText="Categories" />
                                          
                                        






                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    
                                                                    <asp:Button Text="Delete" ID="Inkview" runat="server" OnClick="Inkview_Click" ForeColor="white"  BackColor="orange"   Style="border-radius: 6px"    />
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                            
                                       





                                               
                                        </Columns>
                                       <FooterStyle BackColor="White" ForeColor="#000066" />
                                                     <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="white" />
                                                        <PagerStyle BackColor="#99CCCC" ForeColor="black" HorizontalAlign="Left" />
                                                        <RowStyle BackColor="White" ForeColor="BLACK" />
                                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                        <SortedAscendingHeaderStyle BackColor="black" />
                                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                    </asp:GridView></td>
                                               
                                            <td align="center">
                                                



                                                
                                                <asp:Label ID="Label4" runat="server" Text="Add a new Category"></asp:Label><br /><br />
                                                <asp:TextBox ID="TextBox4" runat="server" Width="194px"></asp:TextBox><br /><br />
                                                



                                                
                                                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                                    Text="Add Category" Width="129px" />
                                                



                                                
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
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
                                   
                                </asp:View>


                               
                                

                                 <asp:View ID="View3" runat="server">
                                    <br />
<strong style="font-weight: bold; font-family: Arial; font-size: large; color: #000000">Suppliers</strong>
                                   <br />
                                    <br />
                                    <br />
                                    <br />
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="style145">  
                                                <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="black" BorderStyle="None"
                                        Font-Names="Arial" Font-Size="12px" DataKeyNames="id"
                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid" 
                                                   >
                                        <Columns>

                             
                                                                                                                                                                                                                          
                              
                                           
                                            <asp:BoundField DataField="id" HeaderText="S/N" />
                                            <asp:BoundField DataField="Company" HeaderText="Suppliers" />
                                          
                                        






                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    
                                                                    <asp:Button Text="Delete" ID="Inkview1" runat="server" OnClick="Inkview_Click1" ForeColor="white"     BackColor="orange"   Style="border-radius: 6px"           />
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                            
                                       





                                               
                                        </Columns>
                                       <FooterStyle BackColor="White" ForeColor="#000066" />
                                                     <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="white" />
                                                        <PagerStyle BackColor="#99CCCC" ForeColor="black" HorizontalAlign="Left" />
                                                        <RowStyle BackColor="White" ForeColor="BLACK" />
                                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                        <SortedAscendingHeaderStyle BackColor="black" />
                                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                    </asp:GridView>


























</td>
                                               
                                            <td align="center">
                                                



                                                
                                                <asp:Label ID="Label6" runat="server" Text="Add a new Supplier"></asp:Label><br /><br />
                                                <asp:TextBox ID="TextBox5" runat="server" Width="194px"></asp:TextBox><br /><br />
                                                



                                                
                                                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                                                    Text="Add Supplier" Width="129px" />
                                                



                                                
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
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
                                    <br />
                                    
                                </asp:View>

                            </asp:MultiView>
                        </td>
                    </tr>
                </table>

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
