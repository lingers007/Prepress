<%@ Page Language="C#" AutoEventWireup="true"  Debug="true"   CodeFile="All.aspx.cs" Inherits="All" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

<link href="StyleSheet.css" rel="stylesheet" />
</head>
<style>
table, td, th {
  border: 1px solid grey;
}


table {
  width: 80%;
  border-collapse: collapse;
}
        .editable {
            cursor: pointer;
        }
        .editable2 {
            cursor: pointer;
        }
        
        .editable1 {
            cursor: pointer;
        }
                    
    .style36
    {
        width: 220px;
    }
        .style32
        {
            width: 148px;
        }
        .style29
        {
            width: 122px;
        }
        .style33
        {
            width: 138px;
        }
        .style35
        {
            width: 107px;
        }
        .style91
    {
        width: 220px;
        height: 8px;
    }
    .style92
    {
        width: 148px;
        height: 8px;
    }
    .style93
    {
        width: 122px;
        height: 8px;
    }
    .style94
    {
        width: 138px;
        height: 8px;
    }
        .style97
    {
        width: 134px;
        height: 6px;
    }
        .style101
    {
        width: 134px;
        height: 3px;
    }
    .style102
    {
        height: 3px;
    }
    .style103
    {
        height: 6px;
    }
    .style104
    {
        width: 107px;
        height: 8px;
    }
        .style106
    {
        font-weight: normal;
    }
        .style107
    {
        width: 83px;
    }
    .style108
    {
        width: 116px;
    }
    .style111
    {
        width: 17px;
    }
    .style113
    {
        width: 252px;
    }
    .style114
    {
        height: 43px;
    }
        .style116
    {
        height: 3px;
        width: 84px;
    }
    .style117
    {
        height: 6px;
        width: 84px;
    }
    .style120
    {
        width: 84px;
    }
    .style121
    {
        width: 134px;
    }
        .style137
    {
        width: 100px;
    }
    .style138
    {
        width: 98px;
    }
    .style148
    {
        width: 74px;
    }
    .style149
    {
        width: 92px;
    }
    .style150
    {
        width: 90px;
    }
    .style151
    {
        width: 89px;
    }
    .style152
    {
        width: 207px;
    }
        .style153
    {
        width: 104px;
        height: 104px;
    }
        </style>
        
    
<body>
<form id="form1" runat="server">

  <div>
  
   
       
                                

                   <table align="center" 
                       style=" width: 80%; height: 100%; padding-right: 16px; padding-left: 16px;">
            <tr>
                <td align="center" >
                 <asp:Panel ID="pnlPerson" runat="server">
                <asp:Panel ID="Panel8" runat="server">
                                <table   style="width:100%;" >
                        <tr>
                            <td align="center" class="style114">
    <asp:Label ID="Label28" runat="server" Visible="False"></asp:Label>
   
    <asp:Label ID="Label008" runat="server" Visible="False"></asp:Label>
   

    <asp:Label ID="Label009" runat="server" Visible="False"></asp:Label>
   

    <asp:Label ID="Label010" runat="server" Visible="False"></asp:Label>
   

    <asp:Label ID="Label011" runat="server" Visible="False"></asp:Label>
   

   
   

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnExport0" runat="server" OnClick="PRINT" 
                                    Text="PRINT" Width="154px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnExport" runat="server" Text="Export" 
                                    OnClick="btnExport_Click" Width="154px" /></td>
                        </tr>
                        <tr>
                            <td align="center">
                            
                   
                               <asp:Image ID="Image1" runat="server" ImageUrl = 'http://10.138.3.3/Press/Images/capres.gif' 
                                    Height="104px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <strong style="font-family: 'Century Gothic'; ">DESIGN TECHNICAL 
                                SPECIFICATION</strong></td>
                        </tr>
                    </table >
                       </asp:Panel>   
                           
                      
                    <asp:Panel ID="Panel1" runat="server">
                      <div align="center"  class="div">  
                          <strong style="font-family: Arial, Helvetica, sans-serif; color: #000000;">JOB SPECIFICATION</strong></div>


                         <table class="tableDetails"  align="center"  border="1"  style="width:99.7%; border-collapse: collapse; border-color:Black;"   >

                                                       
                                                        <tr>
                                                            <td class="style111" align="left"   style="font-size:10px; font-family: Arial, Helvetica, sans-serif;height:20px;"> 
                                                                
                                                                Product Id &nbsp; :
                                                                <asp:Label ID="Label7" runat="server"    Font-Size="9px"    
                                                                    Font-Names="Arial"   height="9px" 
                                                                    Width="87px"></asp:Label>
                                                            </td>
                                                            <td class="style113" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                               Description : <asp:Label ID="Label8" runat="server" 
                                                                      Font-Size="9px"    Font-Names="Arial" height="12px" 
                                                                    Width="282px"></asp:Label>
                                                                </td>
                                                            <td class="style108" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                             Variant&nbsp; : <asp:Label ID="Label9" runat="server" 
                                                                      Font-Size="9px"    Font-Names="Arial" height="9px" Width="95px"></asp:Label>
                                                            </td>
                                                            <td class="style107" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                             Country :<asp:Label ID="Label10" runat="server"   Font-Size="9px"    Font-Names="Arial" height="12px" 
                                                                    Width="95px"></asp:Label>
                                                                   
                                                            </td>
                                                            <td class="style35" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                              Pack :  <asp:Label ID="Label11" runat="server" 
                                                                      Font-Size="9px"    Font-Names="Arial" height="9px" Width="78px"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style111" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Customer&nbsp;&nbsp; :
                                                                <asp:Label ID="Label12" runat="server"   Font-Size="9px"    
                                                                    Font-Names="Arial" height="12px" 
                                                                    Width="62px"></asp:Label>
                                                            </td>
                                                            <td class="style113" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Job Number&nbsp;&nbsp; :
                                                                <asp:Label ID="Label13" runat="server"   Font-Size="9px"    Font-Names="Arial" height="11px" 
                                                                    Width="113px"></asp:Label>
                                                            </td>
                                                            <td class="style108" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Template No :<asp:Label ID="Label14" runat="server"   Font-Size="9px"    Font-Names="Arial"
                                                                    height="12px" Width="80px"></asp:Label>
                                                            </td>
                                                            <td class="style107" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;">
                                                                Artwork Date :
                                                                <asp:Label ID="Label15" runat="server"   Font-Size="9px"    Font-Names="Arial"  height="9px" 
                                                                    Width="80px"></asp:Label>
                                                            </td>
                                                            <td class="style35" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Repr. Date :<asp:Label ID="Label16" runat="server"  
                                                                    Font-Names="Arial" Font-Size="9px" height="9px" Width="71px"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style111" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Artwork No :<asp:Label ID="Label17" runat="server"   Font-Size="9px"  
                                                                      Font-Names="Arial"
                                                                    height="12px" Width="79px"></asp:Label>
                                                            </td>
                                                            <td class="style113" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Printer&#39;s Code :
                                                                <asp:Label ID="Label18" runat="server"   Font-Size="9px"    Font-Names="Arial" height="9px" 
                                                                    Width="105px"></asp:Label>
                                                            </td>
                                                            <td class="style108" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Repr.Appr.Date :
                                                                <asp:Label ID="Label19" runat="server"   Font-Size="9px"    Font-Names="Arial" height="9px" 
                                                                    Width="78px"></asp:Label>
                                                                <br />
                                                             
                                                          </td>
                                                            <td class="style107" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Artwk Recieved .Date : <asp:Label ID="Label20" runat="server" 
                                                                      Font-Size="9px"    Font-Names="Arial" height="9px" 
                                                                    Width="48px"></asp:Label>
                                                            </td>
                                                            <td class="style35" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Yield :<asp:Label ID="Label21" runat="server"   Font-Size="9px"    Font-Names="Arial"
                                                                    height="12px" Width="62px"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style111" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Qty&nbsp; Around :<asp:Label ID="Label22" runat="server"   Font-Size="9px"    Font-Names="Arial"
                                                                    height="20px" Width="120px"></asp:Label>
                                                            </td>
                                                            <td class="style113" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Quantity across :<asp:Label ID="Label23" runat="server"   Font-Size="9px"  
                                                                      Font-Names="Arial"
                                                                    height="20px" Width="92px"></asp:Label>
                                                            </td>
                                                            <td class="style108" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Stretch Double Cut :<asp:Label ID="Label24" runat="server" 
                                                                      Font-Size="9px"    Font-Names="Arial" height="20px" Width="69px"></asp:Label>
                                                            </td>
                                                            <td class="style107" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Qty Per Rev :<asp:Label ID="Label25" runat="server"   Font-Size="9px"  
                                                                      Font-Names="Arial"
                                                                    height="20px" Width="56px"></asp:Label>
                                                            </td>
                                                            <td class="style35" align="left" 
                                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                                Print Type :
                                                                <asp:Label ID="Label26" runat="server"   Font-Size="9px"    Font-Names="Arial" height="20px" 
                                                                    Width="54px"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table><br />
                    </asp:Panel>    


                                <asp:Panel ID="Panel2" runat="server" Font-Names="Arial" Height="115px" Width="100%">
                                    <div align="center"  class="div"> <strong>MATERIAL SPECIFICATION</strong></div>
                                     <table class="tableDetails"  align="center" border="1"  style="width:99.7%; border-collapse: collapse; border-color:Black;">
                                        <tr>
                                            <td class="style36">
                                                &nbsp;</td>
                                            <td class="style32" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Board Name</td>
                                            <td class="style29" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Gsm</td>
                                            <td class="style33" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Material Code</td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Web Width</td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Cost Per Kg</td>
                                        </tr>
                                        <tr>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Board</td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label27" runat="server"  height="16px" 
                                                    Width="125px"  Font-Size="9px" Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label280" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label29" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label30" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label31" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style91" 
                                                style="font-family: Arial, Helvetica, sans-serif ; font-size: 9px;height:20px;">
                                                Foil</td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label32" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label33" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label34" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label35" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                            <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label36" runat="server" Font-Size="9px" Font-Names="Arial" height="16px" 
                                                    Width="125px"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                               
                                <asp:Panel ID="Panel3" runat="server" Height="442px">
                                   <div align="center"  class="div">  
                                       <strong style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold">CYLINDER SPECIFICATION</strong></div>
                                    <table class="tableDetails"   align="center"border="1"  style="width:99.7%; border-collapse: collapse; border-color:Black;"   >


                                        <tr>
                                              <td class="style35" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;"></td>
                                            <td align="center" 
                                                
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 1</td>
                                            <td align="center" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 2</td>
                                            <td align="center"  style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 3</td>
                                            <td align="center" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 4</td>
                                            <td align="center" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 5</td>
                                            <td align="center" 
                                               style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 6</td>
                                            <td align="center" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 7</td>
                                            <td align="center" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 8</td>
                                            <td align="center" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 9</td>
                                            <td align="center" 
                                                style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                Unit 10</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Posino</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label46" runat="server"  Width="75px"    Font-Size="9px"    Font-Names="Arial"
                                                    ></asp:Label>
                                            </td>
                                            <td >
                                                <asp:Label ID="Label63" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label80" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label97" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label114" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label131" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label148" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label165" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label182" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label199" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Colour</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label47" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label64" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label81" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label98" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label115" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label132" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label149" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label166" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label183" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label200" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Cylinder Diameter</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label48" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label65" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label82" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label99" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label116" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label133" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label150" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label167" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label184" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label201" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Circumference</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label49" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label66" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label83" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label100" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label117" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label134" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label151" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label168" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label185" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label202" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Print Width</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label50" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label67" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label84" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label101" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label118" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label135" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label152" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label169" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label186" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td>
                                                <asp:Label ID="Label203" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Rreference Colour</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label51" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label68" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label85" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label102" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label119" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label136" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label153" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label170" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label187" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label204" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Cylinder Face Width</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label52" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label69" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label86" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label103" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label120" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label137" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label154" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label171" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label188" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label205" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Roughness</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label53" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label70" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label87" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label104" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label121" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label138" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label155" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label172" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label189" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label206" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Screen</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label54" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label71" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label88" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label105" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label122" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label139" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label156" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label173" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label190" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label207" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style101" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Stylusangle</td>
                                            <td class="style116" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label55" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label72" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label89" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label106" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label123" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label140" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label157" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label174" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label191" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style102">
                                                <asp:Label ID="Label208" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Depth</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label56" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label73" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label90" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label107" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label124" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label141" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label158" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label175" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label192" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label209" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" 
                                                
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal" 
                                                class="style121">
                                                Cell wall volume</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label57" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label74" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label91" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label108" runat="server" Height="11px"  Width="75px"   
                                                    Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label125" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label142" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label159" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label176" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label193" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label210" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Channel</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label58" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label75" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label92" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label109" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label126" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label143" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label160" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label177" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label194" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label211" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Engraving Type</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label59" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label76" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label93" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label110" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label127" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label144" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label161" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label178" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label195" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label212" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style97" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Stretch Factor</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label60" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style103">
                                                <asp:Label ID="Label77" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style103">
                                                <asp:Label ID="Label94" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style103">
                                                <asp:Label ID="Label111" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style103">
                                                <asp:Label ID="Label128" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style103">
                                                <asp:Label ID="Label145" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td class="style103">
                                                <asp:Label ID="Label162" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td class="style103">
                                                <asp:Label ID="Label179" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                            <td class="style103">
                                                <asp:Label ID="Label196" runat="server"  Width="75px"   Font-Size="9px"  
                                                      Font-Names="Arial" Height="11px"></asp:Label>
                                                </td>
                                            <td class="style103">
                                                <asp:Label ID="Label213" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Chrome Layer Thickness</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label61" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label78" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label95" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label112" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label129" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label146" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label163" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label180" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label197" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label214" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style121" 
                                                
                                                
                                                
                                                style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                Xdiagonal</td>
                                            <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                <asp:Label ID="Label62" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label79" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label96" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label113" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label130" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label147" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label164" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label181" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label198" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label215" runat="server"  Width="75px"   Font-Size="9px"    Font-Names="Arial"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                  
                                  
                                </asp:Panel>
                                 <asp:Panel ID="Panel4" runat="server">
                                        <br />
                                       
                                       <div align="center"  class="div">  
                                           <strong style="font-family: Arial, Helvetica, sans-serif; font-style: normal; font-weight: bold">INK SPECIFICATION</strong></div>
                                         <table class="tableDetails"  align="center"  border="1"  style="width:99.7%; border-collapse: collapse; border-color:Black;"   >

                                            <tr>
                                                <td align="left" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    &nbsp;</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style150">
                                                    Unit 1</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style150">
                                                    Unit 2</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style151">
                                                    Unit 3</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style137">
                                                    Unit 4</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style138">
                                                    Unit 5</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style137">
                                                    Unit 6</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style149">
                                                    Unit 7</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style150">
                                                    Unit 8</td>
                                                <td style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style150">
                                                    Unit 9</td>
                                                <td align="center" 
                                                    
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal" 
                                                    class="style148">
                                                    Unit 10</td>
                                                <td align="center" 
                                                    style="font-family: Arial; font-size: 10px;  font-style: normal">
                                                    Nitrogen</td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Inkcode</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label216" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label233" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label250" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label267" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label284" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label301" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label318" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label335" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label352" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label381" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label369" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Inkcoverage</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label217" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label234" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label251" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label268" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label285" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label302" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label319" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label336" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label353" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label382" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label370" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Description</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label218" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label235" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label252" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label269" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label286" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label303" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label320" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label337" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label354" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label383" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label371" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Gsm</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label219" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label236" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label253" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label270" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label287" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label304" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label321" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label338" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label355" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label384" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label372" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Price</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label220" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label237" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label254" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label271" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label288" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label305" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label322" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label339" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label356" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label385" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label373" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Reducer</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label221" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label238" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label255" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label272" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label289" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label306" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label323" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label340" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label357" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label386" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label374" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Retarder</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label222" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label239" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label256" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label273" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label290" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label307" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label324" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label341" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label358" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label387" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label375" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Viscosity</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label223" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label240" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label257" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label274" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label291" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label308" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label325" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label342" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label359" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label388" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label376" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Mmediums</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label224" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label241" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label258" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label275" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label292" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label309" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label326" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label343" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label360" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label389" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label377" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Toners</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label225" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label242" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label259" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label276" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label293" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label310" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label327" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label344" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label361" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label390" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label378" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Tonerratio</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label226" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label243" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label260" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label277" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label294" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label311" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label328" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label345" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label362" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label391" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label379" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style107" 
                                                    
                                                    style="font-family: Arial; font-size: 9px;  font-style: normal">
                                                    Additive</td>
                                                <td style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;height:20px;">
                                                    <asp:Label ID="Label227" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label244" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style151">
                                                    <asp:Label ID="Label261" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label278" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style138">
                                                    <asp:Label ID="Label295" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style137">
                                                    <asp:Label ID="Label312" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style149">
                                                    <asp:Label ID="Label329" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label346" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style150">
                                                    <asp:Label ID="Label363" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td class="style148">
                                                    <asp:Label ID="Label392" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label380" runat="server"  Font-Names="Arial" 
                                                        Font-Size="9px" Width="69px"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                   
                                       
                                    </asp:Panel>                 
             
                    <asp:Panel ID="Panel5" runat="server">
                        <br />
                        <div align="center"  class="div">  
                                           <strong style="font-family: Arial, Helvetica, sans-serif; font-style: normal; font-weight: bold">EMBOSSING</strong></div>
                         <table class="tableDetails" align="center"  border="1"  style="width:99.7%; border-collapse: collapse; border-color:Black;"   >

                            <tr>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal;height:20px;">
                                    Embid&nbsp; :
                                    <asp:Label ID="Label1001" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Mandrel&nbsp; :<asp:Label ID="Label1002" runat="server" 
                                         Font-Names="Arial" Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Type&nbsp; :
                                    <asp:Label ID="Label1003" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Circmale&nbsp; ;<asp:Label ID="Label1004" runat="server"  
                                        Font-Names="Arial" Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Circfemale&nbsp; :<asp:Label ID="Label1005" runat="server"  
                                        Font-Names="Arial" Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Diameter&nbsp; :<asp:Label ID="Label1006" runat="server"  
                                        Font-Names="Arial" Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                            </tr>
                            <tr>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal;height:20px;">
                                    Supplier&nbsp; :
                                    <asp:Label ID="Label1007" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Supplierno&nbsp; :
                                    <asp:Label ID="Label1008" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" class="style106" 
                                    style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Depth&nbsp; :<asp:Label ID="Label1009" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Height&nbsp; :<asp:Label ID="Label1010" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Artworknumber&nbsp; :<asp:Label ID="Label1011" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Calyear&nbsp; :<asp:Label ID="Label1012" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   </td>
                            </tr>
                            <tr>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal;height:20px;">
                                    Month&nbsp; : 
                                    <asp:Label ID="Label1013" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Datereceived&nbsp; :<asp:Label ID="Label1014" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Artworkdate&nbsp; :<asp:Label ID="Label1" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Country&nbsp; :<asp:Label ID="Label1015" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Comment&nbsp; :<asp:Label ID="Label1016" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    </td>
                            </tr>
                        </table>
                       
                       </asp:Panel>

                    <asp:Panel ID="Panel6" runat="server">
                     
                         <div align="center"  class="div">  
                                           <strong style="font-family: Arial, Helvetica, sans-serif; font-style: normal; font-weight: bold">
                                           CUTTING /PUNCH DIE DETAILS</strong></div>
                          <table class="tableDetails" align="center"  border="1"  style="width:99.7%; border-collapse: collapse; border-color:Black;"   >

                            <tr>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal;height:20px;">
                                  Dieno&nbsp; : 
                                    <asp:Label ID="Label2" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Template No&nbsp; :<asp:Label ID="Label1017" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Model&nbsp; : 
                                    <asp:Label ID="Label1018" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                     Type&nbsp; :<asp:Label ID="Label1019" runat="server" 
                                         Font-Names="Arial" Font-Size="9px" Height="11px" 
                                        Width="107px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Brass Female Emb&nbsp; :<asp:Label ID="Label1020" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                  Brass male Emb&nbsp; :<asp:Label ID="Label1021" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                  
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal;height:20px;">
                                    Supplier&nbsp; : 
                                    <asp:Label ID="Label1022" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Lcutterwidth&nbsp; :
                                   
                                    <asp:Label ID="Label1023" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                  
                                </td>
                                <td align="left" class="style106" 
                                    style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Lcutterlength&nbsp; :<asp:Label ID="Label1024" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Comment &nbsp;:<asp:Label ID="Label1025" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                     Lmacross&nbsp; :<asp:Label ID="Label1026" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                 Lmaround&nbsp; :<asp:Label ID="Label1027" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="6" 
                                    style="font-family: Arial; font-size: 9px; font-style: normal">
                                    <strong style="font-size: 12px; font-family: Arial, Helvetica, sans-serif; font-weight: bold">CAD Programming</strong></td>
                            </tr>
                            <tr>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal;height:20px;">
                                   Caditemidno&nbsp; : 
                                    <asp:Label ID="Label1028" runat="server"  Font-Names="Arial" 
                                        Font-Size="9px" Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Cadrefno&nbsp; :<asp:Label ID="Label1029" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Cadnoups&nbsp; :<asp:Label ID="Label1030" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Cadpackheight&nbsp; :<asp:Label ID="Label1031" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Cadpackwidth&nbsp; :<asp:Label ID="Label1032" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                   Cadpackbreadth&nbsp; :<asp:Label ID="Label1033" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                            </tr>
                            <tr>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal;height:20px;">
                                    Caddesignheight&nbsp; :<asp:Label ID="Label1034" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Caddesignwidth&nbsp; :<asp:Label ID="Label1035" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Cadgripperwidth&nbsp; :<asp:Label ID="Label1036" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                    
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Cadgripperlenth&nbsp; :<asp:Label ID="Label1037" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                  
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                    Cadchargenno&nbsp; :<asp:Label ID="Label1038" 
                                        runat="server"  Font-Names="Arial" Font-Size="9px" 
                                        Height="11px" Width="69px"></asp:Label>
                                   
                                </td>
                                <td align="left" style="font-family: Arial; font-size: 9px; font-style: normal">
                                  </td>
                            </tr>
                        </table>
                        
              
                    </asp:Panel>


                    <asp:Panel ID="Panel7" runat="server" Height="89px">
                     
                          <div align="center"  class="div">  
                                           <strong style="font-family: Arial, Helvetica, sans-serif;  font-style: normal; font-weight: bold">
                                           OFFLINE DIE SPECIFICATION</strong></div>
                             <table class="tableDetails" align="center"  border="1"  style="width:99.7%; border-collapse: collapse; border-color:Black;"   >

                                <tr>
                                    <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;height:20px;"> 
                                          Gietzdieref&nbsp; :<asp:Label ID="Label1039" runat="server" 
                                             Font-Names="Arial" Font-Size="8px" Height="11px" Width="69px"></asp:Label>
                                        
                                    </td>
                                  <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                       Packing Per Pallet&nbsp; :<asp:Label ID="Label1040" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="50px"></asp:Label>
                                        
                                    </td>
                                   <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                          Status&nbsp; :<asp:Label ID="Label1041" 
                                            runat="server" Font Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="69px"></asp:Label>
                                        
                                    </td>
                                    <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                        Cadgietzdie&nbsp; :<asp:Label ID="Label1042" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="69px"></asp:Label>
                                       
                                    </td>
                                   <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                         Hot Foil Coverage&nbsp; :<asp:Label ID="Label1043" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="50px"></asp:Label>
                                       
                                    </td>
                                    <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                        Blocks Per Sheet&nbsp; :<asp:Label ID="Label1044" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="69px"></asp:Label>
                                       
                                    </td>
                                </tr>
                                <tr>
                                   <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;height:20px;"> 
                                        Blocks Per Carton&nbsp; :<asp:Label ID="Label1045" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="50px"></asp:Label>
                                      
                                    </td>
                                   <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                         Foil Area&nbsp; :<asp:Label ID="Label1046" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="69px"></asp:Label>
                                       
                                    </td>
                                    <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                        Foil Square Meter&nbsp; :<asp:Label ID="Label1047" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="50px"></asp:Label>
                                        
                                    </td>
                                  <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                        Sheet Length&nbsp; :<asp:Label ID="Label1048" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="69px"></asp:Label>
                                      
                                    </td>
                                   <td class="style152" align="left"  style="font-size:9px; font-family: Arial, Helvetica, sans-serif;"> 
                                        Sheet Width&nbsp; :<asp:Label ID="Label1049" 
                                            runat="server"  Font-Names="Arial" Font-Size="8px" 
                                            Height="11px" Width="69px"></asp:Label>
                                       
                                    </td>
                                    <td align="left">
                                        </td>
                                </tr>
                            </table>
                           
                            </asp:Panel>
                            </asp:Panel>
                           
                </td>

            </tr>
        </table>
  
    </div>
    </form>
    
    
   
   
    </body>
</html>

