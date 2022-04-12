<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="IssueSheet.aspx.cs" Inherits="IssueSheet" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ISSUE SHEET</title>
    



    
       
       <style type="text/css">
        .editable {
            cursor: pointer;
        }
        .editable1 {
            cursor: pointer;
        }
        .editable2 {
            cursor: pointer;
        }
        
    </style> 
    <style type="text/css" >
table, td, th {
  border: 1px solid grey;
}

tr:nth-child(even) {background: #D1DDF1}
tr:nth-child(odd) {background: #EFF3FB}
table {
  width: 100%;
  border-collapse: collapse;
}
tr {
  height:18px;
}
</style>



</head>
<body>

    <style type="text/css">
        h3 {
            border: 1px solid black;
        }
 
        .content-template {
            display: none
        }
        .style1
        {
            width: 630px;
        }
        .style2
        {
            width: 165px;
        }
        .style18
        {
            width: 191px;
        }
        .style21
        {
            width: 145px;
        }
        .style24
        {
            width: 298px;
        }
        .style25
        {
            width: 270px;
        }
        .style26
        {
            width: 225px;
        }
        .style27
        {
            width: 158px;
        }
        .style28
        {
            width: 169px;
        }
        .style29
        {
            width: 146px;
        }
        .style30
        {
            width: 245px;
        }
    </style>
   
    <form id="form1" runat="server">
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            $(function () {
                //Loop through all Labels with class 'editable'.
                $(".editable").each(function () {
                    //Reference the Label.
                    var label = $(this);

                    //Add a TextBox next to the Label.
                    label.after("<input type='text' style='display:none' />");

                    //Reference the TextBox.
                    var textbox = $(this).next();

                    //Set the name attribute of the TextBox.
                    var id = this.id.split('_')[this.id.split('_').length - 1];
                    textbox[0].name = id.replace("lbl", "txt");

                    //Assign the value of Label to TextBox.
                    textbox.val(label.html().replace('&nbsp;', ''));

                    //When Label is clicked, hide Label and show TextBox.
                    label.click(function () {
                        $(this).hide();
                        $(this).next().show();
                    });

                    //When focus is lost from TextBox, hide TextBox and show Label.
                    textbox.focusout(function () {
                        $(this).hide();
                        $(this).prev().html($(this).val());
                        $(this).prev().show();
                        $('[id*=Button1]').trigger('click');
                    });
                });
            });


            $(function () {
                //Loop through all Labels with class 'editable'.
                $(".editable1").each(function () {
                    //Reference the Label.
                    var label = $(this);

                    //Add a TextBox next to the Label.
                    label.after("<input type='text' style='display:none' />");

                    //Reference the TextBox.
                    var textbox = $(this).next();

                    //Set the name attribute of the TextBox.
                    var id = this.id.split('_')[this.id.split('_').length - 1];
                    textbox[0].name = id.replace("lbl", "txt");

                    //Assign the value of Label to TextBox.
                    textbox.val(label.html().replace('&nbsp;', ''));

                    //When Label is clicked, hide Label and show TextBox.
                    label.click(function () {
                        $(this).hide();
                        $(this).next().show();
                    });

                    //When focus is lost from TextBox, hide TextBox and show Label.
                    textbox.focusout(function () {
                        $(this).hide();
                        $(this).prev().html($(this).val());
                        $(this).prev().show();
                        $('[id*=Button2]').trigger('click');
                    });
                });
            });


            $(function () {
                //Loop through all Labels with class 'editable'.
                $(".editable2").each(function () {
                    //Reference the Label.
                    var label = $(this);

                    //Add a TextBox next to the Label.
                    label.after("<input type='text' style='display:none' />");

                    //Reference the TextBox.
                    var textbox = $(this).next();

                    //Set the name attribute of the TextBox.
                    var id = this.id.split('_')[this.id.split('_').length - 1];
                    textbox[0].name = id.replace("lbl", "txt");

                    //Assign the value of Label to TextBox.
                    textbox.val(label.html().replace('&nbsp;', ''));

                    //When Label is clicked, hide Label and show TextBox.
                    label.click(function () {
                        $(this).hide();
                        $(this).next().show();
                    });

                    //When focus is lost from TextBox, hide TextBox and show Label.
                    textbox.focusout(function () {
                        $(this).hide();
                        $(this).prev().html($(this).val());
                        $(this).prev().show();
                        $('[id*=Button3]').trigger('click');
                    });
                });
            });



          </script>
          
 
    <div >
    <asp:Panel ID="Panel2" runat="server">
   
        <table align="center" height="50%" style=" width: 1022px;">
            <tr>
                <td align="center" >
                             
                                <asp:Button ID="btnExport" runat="server" Text="EXPORT TO PDF" OnClick="ExportToPDF" />
                                
                                <asp:Button ID="btnExport0" runat="server" OnClick="PRINT" 
                                    Text="PRINT" Width="154px" />
                                <asp:Label 
                                    ID="Label25" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="Label26" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="Label27" runat="server" Visible="False"></asp:Label>
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
                                <strong style="font-family: 'Arial Narrow'; font-weight: bolder; font-size: x-large;">
                                ISSUE SHEET</strong></td>
                        </tr>
                    </table >
                     <table   class="tableDetails" style="width: 100%; height: 9px; line-height: 9px;border:1; font-family: Arial Narrow ; font-size: 12px;">
                        <tr>
                            <td colspan="8" 
                                
                                style="font-family: Arial Narrow; font-size: small; font-weight: bold; ">
                                <p ALIGN="center">JOB DESCRIPTION</p></td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                WORK DOCKET</td>
                            <td class="style28" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                              


                                  <asp:Label ID="lblName" runat="server" Text="&nbsp;" CssClass="editable"
                            ToolTip="Click to edit" />
                 <asp:Button ID="Button1" Text="Submit" runat="server"
                    OnClick="TextBox1_TextChanged" Style='display: none' />
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                JOB NUMBER</td>
                            <td class="style30" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label8" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td class="style26" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                ARTWORK NO</td>
                            <td class="style29" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label14" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td class="style24" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                REPRO APPROVED DATE</td>
                            <td class="style2" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label19" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                PRODUCT CODE</td>
                            <td style="font-family: Arial Narrow; font-size: 12px;  " 
                                class="style28">
                                <asp:Label ID="Label2" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; " 
                                class="style18">
                                TEMPLATE NUMBER</td>
                            <td style="font-family: Arial Narrow; font-size: 12px;  ;" 
                                class="style30">
                                <asp:Label ID="Label9" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; " 
                                class="style26">
                                ARTWORK DATE</td>
                            <td style="font-family: Arial Narrow; font-size: 12px;  " 
                                class="style29">
                                <asp:Label ID="Label15" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; " 
                                class="style24">
                                ARTWORK RECEIVED DATE</td>
                            <td style="font-family: Arial Narrow; font-size: 12px;  ">
                                <asp:Label ID="Label20" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                PACK</td>
                            <td class="style28" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label3" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                PRINT TYPE</td>
                            <td class="style30" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label10" runat="server"  Font-Size="12px"></asp:Label>
                                </td>
                            <td class="style26" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                REPRO DATE</td>
                            <td class="style29" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label16" runat="server"  Font-Size="12px"></asp:Label>
                                </td>
                            <td class="style24" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                YIELD</td>
                            <td class="style2" 
                                style="font-size: 12px; font-family: Arial Narrow;">
                                <asp:Label ID="Label21" runat="server"  Font-Size="12px"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                CUSTOMER</td>
                            <td class="style28" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label4" runat="server"  Font-Size="12px"></asp:Label>
                                </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                DESCRIPTION</td>
                            <td class="style30" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label11" runat="server"  Font-Size="12px"></asp:Label>
                                </td>
                            <td class="style26" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                NPK CODE NO</td>
                            <td class="style29" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label17" runat="server"  Font-Size="12px"></asp:Label>
                                </td>
                            <td class="style24" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                QUANTITY AROUND</td>
                            <td style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label22" runat="server"  Font-Size="12px"></asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                DATE</td>
                            <td class="style28" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label5" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                VARIANT</td>
                            <td class="style30" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label12" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td class="style26" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                STRETCH DOUBLE CUT</td>
                            <td class="style29" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label18" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td class="style24" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                QUANTITY ACROSS</td>
                            <td style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label23" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                ORDER QTY</td>
                            <td class="style28" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                


                                <asp:Label ID="lblName2" runat="server" Text="&nbsp;" CssClass="editable2"
                            ToolTip="Click to edit" />
                 <asp:Button ID="Button3" Text="Submit" runat="server"
                    OnClick="TextBox3_TextChanged" Style='display: none' />
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                COUNTRY</td>
                            <td class="style30" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label13" runat="server"  Font-Size="12px"></asp:Label>
                            </td>
                            <td class="style26" 
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 12px; font-weight: bold; ">
                                &nbsp;</td>
                            <td class="style29" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style24" 
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                QTY&nbsp;PER REVOLUTION</td>
                            <td style="font-size: 12px; font-family: Arial Narrow; ">
                                <asp:Label ID="Label24" runat="server" Font-Size="12px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 10px; font-weight: bold; ">
                                MACHINE</td>
                            <td class="style28" 
                                style="font-size: 12px; font-family: Arial Narrow; ">
                               
                    <asp:Label ID="lblName1" runat="server" Text="&nbsp;" CssClass="editable1"
                            ToolTip="Click to edit" />
                 <asp:Button ID="Button2" Text="Submit" runat="server"
                    OnClick="TextBox2_TextChanged" Style='display: none' />
                            </td>
                            <td class="style18" 
                                
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 12px; font-weight: bold; ">
                                </td>
                            <td class="style30" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                            <td class="style26" 
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 12px; font-weight: bold; ">
                                </td>
                            <td class="style29" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                            <td class="style24" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                            <td class="style36" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                </td>
                        </tr>
                        <tr>
                            <td class="style21" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style28" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style18" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style30" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style26" 
                                
                                
                                
                                
                                style="font-family: Arial Narrow; font-size: 12px; font-weight: bold; ">
                                &nbsp;</td>
                            <td class="style29" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td class="style24" 
                                style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                            <td style="font-size: 12px; font-family: Arial Narrow; font-weight: bold;">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td align="center" 
                                style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;">
                                CYLINDER SEQUENCE AND SPECIFICATION</td>
                        </tr>
                    </table>
                                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                        Font-Names="Arial" 
                        Font-Size="11px" DataKeyNames="unit"
                                                        Width="100%" Style="margin-bottom: 0px" 
                        CssClass="grid" CellPadding="4" ForeColor="black" GridLines="None"  BorderWidth="1px" ><HeaderStyle Font-Size="8px" />
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
                                                        <HeaderStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="Black" />
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
                                style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;">
                                TOLERANCES</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style67" 
                               
                             </td>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;">
                                CYLINDER REQUIREMENT</td>
                        </tr>
                    </table>
                    <table style="width:100%; height: 25px;">
                        <tr>
                            <td class="style68" align="center" 
                                style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;">
                                CYLINDER STOCKS</td>
                        </tr>
                    </table>
                    <div id="dialog" style="display: none" align="center">
    <span id="lblMessage"></span></div>
                                                   <asp:GridView ID="avDetails" runat="server" AutoGenerateColumns="False"                              
                                  
        Font-Names="Arial" 
                        Font-Size="10px" DataKeyNames="pid" OnSorting="OnSorting" AllowSorting="True" OnRowDataBound="OnRowDataBound"
                                                        Width="100%" Style="margin-bottom: 0px" 
                        CssClass="grid" CellPadding="2" ForeColor="black" GridLines="None" ><HeaderStyle Font-Size="8px"   />
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                     
                   <asp:BoundField DataField="no" HeaderText="BASE NO" SortExpression="no" />
                                                       
                                                            
                     <asp:TemplateField
                    HeaderText="PROD CODE"
                    SortExpression="pid">
                    <ItemTemplate>
                        <%# Eval("pid")%>
                    </ItemTemplate>
                </asp:TemplateField>
                                                      
                                                                <asp:BoundField DataField="posino" HeaderText="POSI NO" SortExpression="posino"  />
                                                                  <asp:BoundField DataField="description" HeaderText="DESCRIPTION" SortExpression="description"  />
                                                            <asp:BoundField DataField="colour" HeaderText="COLOUR" SortExpression="colour"  />

                                                                <asp:BoundField DataField="deliverydate" HeaderText="RECEIVED" SortExpression="deliverydate"  />
                                                                <asp:BoundField DataField="supplier" HeaderText="SUPPLIER" SortExpression="supplier"  />
                                                                  <asp:BoundField DataField="totalrev" HeaderText="TOTAL REV" SortExpression="totalrev"  DataFormatString="{0:N2}" />
                                                            <asp:BoundField DataField="screen" HeaderText="SCR/ANG" SortExpression="screen"  />
                                                         
                                                                   <asp:BoundField DataField="depth" HeaderText="DEPTH" SortExpression="depth"  />
                                                            <asp:BoundField DataField="circumference" HeaderText="CIRC" SortExpression="circumference"  />
                                                             <asp:BoundField DataField="" HeaderText="STATUS"  />
                                                               
                                                          
                                                   
                                                          
                                                            
                                                             <asp:TemplateField HeaderText="USE" >
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect" runat="server" OnCheckedChanged="OnChckedChanged"  AutoPostBack="True" />
                                                                </ItemTemplate>
                                                                </asp:TemplateField>
  

                                                     
                                                
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="black" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
                                                    
                                                     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js"></script>
<script  type="text/javascript">
    function ShowPopup(message) {
        $("#lblMessage").html(message);
        $("#dialog").dialog({
            modal: true,
            title: "jQuery Dialog Popup",
            width: 350,
            height: 160
        });
    }
</script>
                    <table style="width:100%;">
                        <tr>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;" 
                                class="style1">
                                SPECIAL INSTRUCTIONS</td>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;">
                                COMMENTS</td>
                        </tr>
                    </table>

                    <table style="width:100%; height: 25px;">
                        <tr>
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;" 
                                align="center">
                                EMBOSSING STOCKS</td>
                        </tr>
                    </table>

                                                   
                                                    <asp:GridView ID="bvDetails" runat="server" AutoGenerateColumns="False"
                                                        Font-Names="Arial" 
                        Font-Size="10px" DataKeyNames="embid"
                                                        Width="100%" Style="margin-bottom: 0px" 
                       
                       
                        CssClass="grid" CellPadding="4" ForeColor="black" GridLines="None"  AllowSorting="true" OnSorting="OnSorting1" OnRowDataBound="OnRowDataBound1"><HeaderStyle Font-Size="8px"   />
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                   
                                                     
                                                            <asp:BoundField DataField="no" HeaderText="ASSET CODE"   SortExpression="no"  />
                                                           

                    <asp:TemplateField
                    HeaderText="EMBOSSING POSI"
                    SortExpression="embid">
                    <ItemTemplate>
                        <%# Eval("embid")%>
                    </ItemTemplate>
                </asp:TemplateField>

                                                            <asp:BoundField DataField="embid" HeaderText="EMBOSSING POSI"  SortExpression="embid"  />
                                                                <asp:BoundField DataField="mandrel" HeaderText="MANDREL" SortExpression="mandrel"  />
                                                                  <asp:BoundField DataField="type" HeaderText="TYPE" SortExpression="type"  />
                                                            <asp:BoundField DataField="circmale" HeaderText="EMB CIRC MALE" SortExpression="circmale"  />

                                                                <asp:BoundField DataField="circfemale" HeaderText="EMB CIRC FEMALE" SortExpression="circfemale"  />
                                                                <asp:BoundField DataField="diameter" HeaderText=" DIAMETER" SortExpression="diameter"  />
                                                                <asp:BoundField DataField="supplier" HeaderText="SUPPLIER" SortExpression="supplier"  />
                                                                  
                                                            <asp:BoundField DataField="pid" HeaderText="PROD CODE" SortExpression="pid"  />
                                                         
                                                                   <asp:BoundField DataField="totalrev" HeaderText="TOTAL LIFE"  SortExpression="totalrev"  />
                                                           
                                                          
                                                   
                                                          
                                                            
                                                             <asp:TemplateField HeaderText="USE">
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect01" runat="server"  OnCheckedChanged="OnChckedChanged1"  AutoPostBack="True" />
                                                                </ItemTemplate>
                                                                </asp:TemplateField>
  

                                                     
                                                
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="black" />
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
                            <td style="font-size: x-small; font-weight: bold; font-family: Arial Narrow;" 
                                align="center">
                                DIE STOCKS</td>
                        </tr>
                    </table>
                     
                    <asp:GridView ID="dvDetails2" runat="server" AutoGenerateColumns="False"
                                                        Font-Names="Arial" 
                        Font-Size="11px" DataKeyNames="dieno"
                                                        Width="100%" Style="margin-bottom: 0px" GridLines="Both"  RowStyle-BorderWidth="3" RowStyle-BorderColor="white"
                        CssClass="grid" CellPadding="1" ForeColor="black"  AllowSorting="true" OnSorting="OnSorting2"  OnRowDataBound="OnRowDataBound2" ><HeaderStyle Font-Size="8px" />
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                   
                                                     
                                                            <asp:BoundField DataField="no" HeaderText="ASSET CODE" SortExpression="no"  />
                                                           
                                                            
                     <asp:TemplateField
                    HeaderText="DIE NO"
                    SortExpression="dieno">
                    <ItemTemplate>
                        <%# Eval("dieno")%>
                    </ItemTemplate>
                </asp:TemplateField>






                                                                <asp:BoundField DataField="templateno" HeaderText="TEMPLATE" SortExpression="templateno"  />
                                                                <asp:BoundField DataField="model" HeaderText="MODEL" SortExpression="model"  />
                                                                  <asp:BoundField DataField="type" HeaderText="TYPE" SortExpression="type"  />
                                                            

                                                                <asp:BoundField DataField="brassmaleembossing" HeaderText="BRASS FEMALE" SortExpression="brassmaleembossing"  />
                                                                <asp:BoundField DataField="brassmaleembossing" HeaderText="BRASS MALE" SortExpression="brassmaleembossing"  />
                                                                <asp:BoundField DataField="supplier" HeaderText="SUPPLIER" SortExpression="supplier"  />

                                                                  <asp:BoundField DataField="lcutterlength" HeaderText="PUNCH LENGTH" SortExpression="lcutterlength"  />
                                                                <asp:BoundField DataField="lcutterwidth" HeaderText="PUNCH WIDTH" SortExpression="lcutterwidth"  />
                                                                <asp:BoundField DataField="noofrerule" HeaderText="NUMBER RULE" SortExpression="noofrerule"  />



                                                                  
                                                       
                                                         
                                                                   <asp:BoundField DataField="totalrev" HeaderText="TOTAL LIFE" SortExpression="totalrev"  />
                                                           
                                                               <asp:BoundField DataField="deliverydate" HeaderText="DATE RECIEVED" SortExpression="deliverydate"  />
                                                   
                                                          
                                                            
                                                             <asp:TemplateField HeaderText="USE">
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect02" runat="server"  OnCheckedChanged="OnChckedChanged2"  AutoPostBack="True" />
                                                                </ItemTemplate>
                                                                </asp:TemplateField>
  

                                                     
                                                
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="black" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js"></script>
<script  type="text/javascript">
    function ShowPopup(message) {
        $("#lblMessage").html(message);
        $("#dialog").dialog({
            modal: true,
            title: "jQuery Dialog Popup",
            width: 350,
            height: 160
        });
    }
</script>
                                                    
                </td>
            </tr>
        </table>                 
    </asp:Panel>
    </div>
    </form>
</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  