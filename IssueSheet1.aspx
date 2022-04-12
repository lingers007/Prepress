<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IssueSheet1.aspx.cs"   debug="true"  Inherits="IssueSheet1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>PRODUCTION SHEET</title>


</head>
<style>
table, td, th {
  border: 1px solid grey;
}

tr:nth-child(even) {background: #D1DDF1}
tr:nth-child(odd) {background: #EFF3FB}
table {
  width: 100%;
  border-collapse: collapse;
}
    .style2
    {
        height: 12px;
    }
    .style10
    {
        height: 12px;
        width: 187px;
    }
    .style11
    {
        width: 187px;
    }
    .style36
    {
        height: 13px;
    }
    .style67
    {
        width: 183px;
    }
    .style68
    {
    }
</style>
<body>


    <form id="form1" runat="server">
    <div>
  
    <asp:Panel ID="Panel2" runat="server">
        <table align="center" height="50%" style=" width: 100%;">
            <tr>
                <td align="center" >
                                

                  
                                <asp:Button ID="btnExport" runat="server" Text="EXPORT TO PDF" 
                                    OnClick="ExportToPDF" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnExport0" runat="server" OnClick="PRINT" 
                                    Text="PRINT" Width="154px" />
                               <asp:Label 
                                    ID="Label25" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="Label26" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="Label27" runat="server" Visible="False"></asp:Label>

                                <asp:Label ID="Label28" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="Label29" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="Label30" runat="server" Visible="False"></asp:Label>
 &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                    Font-Names="Arial Narrow" NavigateUrl="Home.aspx">Return Back</asp:HyperLink>
                                <table   style="width:100%;" >
                        <tr>
                            <td align="center">
                               <asp:Image ID="Image1" runat="server" ImageUrl = 'http://10.138.3.3/Press/Images/capres.gif' 
                                    Height="104px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <strong style="font-family: 'Century Gothic'; font-weight: bolder; font-size: x-large;">
                                PRODUCTION SHEET</strong></td>
                        </tr>
                    </table >
                    <table   style="width: 100%; height: 9px; line-height: 11px;border:1; font-family: Canadara ; font-size: 9px;">
                        <tr>
                            <td colspan="8" 
                                
                                style="font-family: Arial Narrow; font-size: small; font-weight: bold; ">
                                <p ALIGN="center">JOB DESCRIPTION</p></td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                WORK DOCKET</td>
                            <td class="style17" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                              


                                <asp:Label ID="Label1" runat="server"  Font-Size="11px"></asp:Label>
                              


                                 
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                JOB NUMBER</td>
                            <td class="style19" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label8" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style20" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                ARTWORK NO</td>
                            <td class="style11" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label14" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style10" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                REPRO APPROVED DATE</td>
                            <td class="style2" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label19" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                PRODUCT CODE</td>
                            <td style="font-family: Arial Narrow; font-size: 11px;  font-weight: bold;" 
                                class="style17">
                                <asp:Label ID="Label2" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; " 
                                class="style18">
                                TEMPLATE NUMBER</td>
                            <td style="font-family: Arial Narrow; font-size: 11px;  font-weight: bold;" 
                                class="style19">
                                <asp:Label ID="Label9" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; " 
                                class="style20">
                                ARTWORK DATE</td>
                            <td style="font-family: Arial Narrow; font-size: 11px;  font-weight: bold;" 
                                class="style11">
                                <asp:Label ID="Label15" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; " 
                                class="style10">
                                ARTWORK RECEIVED DATE</td>
                            <td style="font-family: Arial Narrow; font-size: 11px;  font-weight: bold;">
                                <asp:Label ID="Label20" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                PACK</td>
                            <td class="style17" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label3" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                PRINT TYPE</td>
                            <td class="style19" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label10" runat="server"  Font-Size="11px"></asp:Label>
                                </td>
                            <td class="style20" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                REPRO DATE</td>
                            <td class="style11" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label16" runat="server"  Font-Size="11px"></asp:Label>
                                </td>
                            <td class="style10" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                YIELD</td>
                            <td class="style2" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label21" runat="server"  Font-Size="11px"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                CUSTOMER</td>
                            <td class="style17" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label4" runat="server"  Font-Size="11px"></asp:Label>
                                </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                DESCRIPTION</td>
                            <td class="style19" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label11" runat="server"  Font-Size="11px"></asp:Label>
                                </td>
                            <td class="style20" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                NPK CODE NO</td>
                            <td class="style11" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label17" runat="server"  Font-Size="11px"></asp:Label>
                                </td>
                            <td class="style10" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                QUANTITY AROUND</td>
                            <td style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label22" runat="server"  Font-Size="11px"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                DATE</td>
                            <td class="style17" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label5" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                VARIANT</td>
                            <td class="style19" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label12" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style20" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                STRETCH DOUBLE CUT</td>
                            <td class="style11" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label18" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style10" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                QUANTITY ACROSS</td>
                            <td style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label23" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                ORDER QTY</td>
                            <td class="style17" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                


                               
                                <asp:Label ID="Label6" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                COUNTRY</td>
                            <td class="style19" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label13" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style20" 
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                &nbsp;</td>
                            <td class="style11" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style10" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                QTY&nbsp;PER REVOLUTION</td>
                            <td style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                <asp:Label ID="Label24" runat="server" Font-Size="11px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                MACHINE</td>
                            <td class="style17" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                               
                 
                                <asp:Label ID="Label7" runat="server"  Font-Size="11px"></asp:Label>
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                </td>
                            <td class="style19" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                            <td class="style20" 
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                </td>
                            <td class="style11" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                            <td class="style10" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                            <td class="style36" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                        </tr>
                        <tr>
                            <td class="style7" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style17" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style18" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style19" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style20" 
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 11px; font-weight: bold; ">
                                &nbsp;</td>
                            <td class="style11" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style10" 
                                style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td style="font-size: 11px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td align="center" 
                                style="font-size: x-small; font-weight: bold; font-family: Arial;">
                                CYLINDER SEQUENCE AND SPECIFICATION</td>
                        </tr>
                    </table>
                                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                        Font-Names="Arial Narrow" 
                        Font-Size="12px" DataKeyNames="unit"
                                                        Width="100%" Style="margin-bottom: 0px" 
                        CssClass="grid" CellPadding="1" ForeColor="#333333" GridLines="None" Font-Bold="false"><HeaderStyle Font-Size="8px"   />
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                        
                                                        
                                                            <asp:BoundField DataField="unit" HeaderText="UNIT" />
                                                            <asp:BoundField DataField="colour" HeaderText="COLOUR" />
                                                            <asp:BoundField DataField="inkcoverage" HeaderText="INK.COV" />
                                                            <asp:BoundField DataField="inkcode" HeaderText="INK CODE" />
                                                            <asp:BoundField DataField="posino" HeaderText="POSI NO" />
                                                            <asp:BoundField DataField="referencecolour" HeaderText="REF.COLOUR" />
                                                            <asp:BoundField DataField="screen" HeaderText="SCREEN/ANGLE/LENS SURF" />
                                                            <asp:BoundField DataField="stylusangle" HeaderText="STYLUS ANGLE" />
                                                            <asp:BoundField DataField="depth" HeaderText="DEPTH" />
                                                            <asp:BoundField DataField="xdiagonal" HeaderText="XDIAGONAL/BRD SURF" />
                                                            <asp:BoundField DataField="stretchfactor" HeaderText="STRETCHFACTOR" />
                                                            
                                                              <asp:BoundField DataField="engravingtype" HeaderText="ENGRAVING" />


                                                     
                                                
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
                    <table style="width:100%;">
                        <tr>
                            <td class="style67" 
                                style="font-size: x-small; font-weight: bold; font-family: Arial;">
                                TOLERANCES</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style67" >
                               
                             </td>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial;">
                                CYLINDER REQUIREMENT</td>
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td class="style68" align="center" 
                                style="font-size: x-small; font-weight: bold; font-family: Arial;">
                                CYLINDER STOCKS</td>
                        </tr>
                    </table>
                                                    <asp:GridView ID="avDetails" runat="server" AutoGenerateColumns="False"
                                                        Font-Names="Arial Narrow" 
                        Font-Size="12px" DataKeyNames="pid"
                                                        Width="100%" Style="margin-bottom: 0px" 
                        CssClass="grid" CellPadding="1" ForeColor="#333333" GridLines="None" Font-Bold="false"  ><HeaderStyle Font-Size="8px"   />
                                  
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                        
                                                       
                                                            <asp:BoundField DataField="no" HeaderText="cyl base NO" />
                                                           
                                                            <asp:BoundField DataField="Pid" HeaderText="PROD CODE" />
                                                                <asp:BoundField DataField="posino" HeaderText="POSI NO" />
                                                                  <asp:BoundField DataField="description" HeaderText="DESCRIPTION" />
                                                            <asp:BoundField DataField="colour" HeaderText="COLOUR" />
                                                            <asp:BoundField DataField="deliverydate" HeaderText="RECEIVED" />
                                                                <asp:BoundField DataField="supplier" HeaderText="SUPPLIER" />
                                                             <asp:BoundField DataField="lastprod" HeaderText="CYLINDER QTY PRODUCED" />



                                                            <asp:TemplateField HeaderText="Quantity Produced">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtcomment1" AutoPostBack="true" ontextchanged="TextBox1_TextChanged" runat="server" Width="45"></asp:TextBox>
                                                            </ItemTemplate>
                                                              <ItemStyle HorizontalAlign="Center" />
                                                               </asp:TemplateField>
                                                         <asp:BoundField DataField="qtyprod" HeaderText="TOTAL PRODUCED" />
                                                                
                                                                  <asp:BoundField DataField="totalrev" HeaderText="TOTAL REV" />
                                                            <asp:BoundField DataField="screen" HeaderText="SCR/ANG" />
                                                         
                                                                   <asp:BoundField DataField="depth" HeaderText="DEPTH" />
                                                            <asp:BoundField DataField="circumference" HeaderText="CIRC" />
                                                             <asp:BoundField DataField="" HeaderText="STATUS" />
                                                               
                                                          
                                                   
                                                          
                                                            
                                                             <asp:TemplateField HeaderText="NOT USEABLE">
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect" runat="server"   OnCheckedChanged="OnChckedChanged" AutoPostBack="True" />
                                                                </ItemTemplate>
                                                                </asp:TemplateField>
  

                                                     
                                                
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
                    <table style="width:100%;">
                        <tr>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;">
                                SPECIAL INSTRUCTIONS</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial;" 
                                align="center">
                                EMBOSSING STOCK</td>
                        </tr>
                    </table>

                  


                    <br />
                                                  
                                                    <asp:GridView ID="bvDetails" runat="server" AutoGenerateColumns="False"
                                                        Font-Names="Arial Narrow" 
                        Font-Size="12px" DataKeyNames="pid"
                                                        Width="100%" Style="margin-bottom: 0px" 
                        CssClass="grid" CellPadding="1" ForeColor="#333333" GridLines="None" Font-Bold="false"><HeaderStyle Font-Size="8px"   />
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                   
                                                     
                                                            <asp:BoundField DataField="no" HeaderText="ASSET CODE" />
                                                           
                                                            <asp:BoundField DataField="embid" HeaderText="EMBOS. POSI" />
                                                                <asp:BoundField DataField="mandrel" HeaderText="MANDREL" />
                                                                  <asp:BoundField DataField="type" HeaderText="TYPE" />
                                                            <asp:BoundField DataField="circmale" HeaderText="EMB CIRC MALE" />

                                                                <asp:BoundField DataField="circfemale" HeaderText="EMB CIRC FEMALE" />
                                                                <asp:BoundField DataField="diameter" HeaderText="CYL. DIAMETER" />
                                                            
                                                                  
                                                            <asp:BoundField DataField="pid" HeaderText="PROD CODE" />


                                                                    <asp:BoundField DataField="lastprod" HeaderText="QTY PROD" />
                                                                  <asp:TemplateField HeaderText="ADD LIFE">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtcomment2" AutoPostBack="true" ontextchanged="TextBox2_TextChanged" runat="server" Width="45"></asp:TextBox>
                                                            </ItemTemplate>
                                                              <ItemStyle HorizontalAlign="Center" />
                                                               </asp:TemplateField>
                                                               
                                                                   <asp:BoundField DataField="qtyprod" HeaderText="TOTAL LIFE" />
                                                                     <asp:BoundField DataField="totalrev" HeaderText="TOTAL REV" />
                                                          
                                                   
                                                          
                                                            
                                                             <asp:TemplateField HeaderText="NOT USEABLE">
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect11" runat="server"   AutoPostBack="true" OnCheckedChanged="OnChckedChanged1" />
                                                                </ItemTemplate>
                                                                </asp:TemplateField>
  

                                                     
                                                
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
                                                     <table style="width:100%; height: 25px;">
                        <tr>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial;" 
                                align="center">
                                DIE STOCKS</td>
                        </tr>
                    </table>
                    <asp:GridView ID="dvDetails2" runat="server" AutoGenerateColumns="False"
                                                        Font-Names="Arial Narrow" 
                        Font-Size="12px" DataKeyNames="dieno"
                                                        Width="100%" Style="margin-bottom: 0px" 
                        CssClass="grid" CellPadding="1" ForeColor="#333333" GridLines="None" Font-Bold="false"><HeaderStyle Font-Size="8px"   />
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                   
                                                     
                                                            <asp:BoundField DataField="no" HeaderText="ASSET CODE" />
                                                           
                                                            <asp:BoundField DataField="dieno" HeaderText="DIE NO" />
                                                                <asp:BoundField DataField="templateno" HeaderText="TEMPLATE" />
                                                                <asp:BoundField DataField="model" HeaderText="MODEL" />
                                                                  <asp:BoundField DataField="type" HeaderText="TYPE" />
                                                            

                                                                <asp:BoundField DataField="brassfemaleembossin" HeaderText="BRASS FEMALE" />
                                                                <asp:BoundField DataField="brassmaleembossing" HeaderText="BRASS MALE" />
                                                                <asp:BoundField DataField="supplier" HeaderText="SUPPLIER" />

                                                                  <asp:BoundField DataField="lcutterlength" HeaderText="PUNCH LENGTH" />
                                                                <asp:BoundField DataField="lcutterwidth" HeaderText="PUNCH WIDTH" />
                                                                <asp:BoundField DataField="noofrerule" HeaderText="NUMBER RULE" />



                                                                 <asp:BoundField DataField="lastprod" HeaderText="Asst.Qty Prod" />
                                                                  <asp:TemplateField HeaderText="ADD LIFE">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtcomment3" AutoPostBack="true" ontextchanged="TextBox3_TextChanged" runat="server" Width="45"></asp:TextBox>
                                                            </ItemTemplate>
                                                              <ItemStyle HorizontalAlign="Center" />
                                                               </asp:TemplateField>
                                                               
                                                                   <asp:BoundField DataField="qtyprod" HeaderText="TOTAL LIFE" />
                                                                  
                                                          



                                                                  
                                                       
                                                         
                                                                   <asp:BoundField DataField="totalrev" HeaderText="TOTAL REV" />
                                                           
                                                               <asp:BoundField DataField="deliverydate" HeaderText="DATE RECIEVED" />
                                                   
                                                          
                                                            
                                                             <asp:TemplateField HeaderText="NOT USEABLE">
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect02" runat="server"  OnCheckedChanged="OnChckedChanged2"  AutoPostBack="True" />
                                                                </ItemTemplate>
                                                                </asp:TemplateField>
  

                                                     
                                                
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
                                             
                   
                                                   
                </td>
            </tr>
        </table>  
  </asp:Panel>
    </div>
    </form>
</body>
</html>
