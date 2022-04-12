<%@ Page Language="C#" AutoEventWireup="true"    Debug="true" CodeFile="Assets.aspx.cs" Inherits="Assets" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>MANAGE  ASSETS</title>
   
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css" />
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="ASPSnippets_Pager.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        GetCustomers(1);
    });
    $(document).on("click", '.Pager .page', function () {
        GetCustomers(parseInt($(this).attr('page')));
    });

    $(document).on('click', '.view', function () {
        $('[id*=hfId]').val($(this).closest('tr').find('td').eq(0).html());
    });
    var i = 0;
    function GetCustomers(pageIndex) {
        $.ajax({
            type: "POST",
            url: "Assets.aspx/GetCustomers",
            data: '{pageIndex: ' + pageIndex + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("assets");
                var row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();
                $.each(customers, function () {
                    $("td", row).eq(0).html($(this).find("id").text());
                    $("td", row).eq(1).html($(this).find("baseno").text());
                    $("td", row).eq(2).html($(this).find("type").text());
                    $("td", row).eq(3).html($(this).find("date").text());
                    $("td", row).eq(4).html($(this).find("description").text());


                    $("[id$=gvDetails]").append(row);
                    row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                });
                $("[id$=gvDetails] tbody tr:first-child").remove();
                if (i != 0) {
                    $('[id$=gvDetails]').DataTable({
                        "paging": false,
                        "info": false
                    });
                } else {
                    $('[id$=gvDetails]')
                        .prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first")))
                        .DataTable({
                            "paging": false,
                            "info": false
                        });
                }
                i++;
                var pager = xml.find("Pager");
                $(".Pager").ASPSnippets_Pager({
                    ActiveCssClass: "current",
                    PagerCssClass: "pager",
                    PageIndex: parseInt(pager.find("PageIndex").text()),
                    PageSize: parseInt(pager.find("PageSize").text()),
                    RecordCount: parseInt(pager.find("RecordCount").text())
                });
            },
            failure: function (response) {
                alert(response.responseText);
            },
            error: function (response) {
                alert(response.responseText);
            }
        });
    }
</script>


 <script type="text/javascript">

     function ShowPopup() {
         $('#label71').html('');
         $("#dialog").dialog({
             title: "VIEW ASSETS  RECORD",
             width: 830,
             height: 300,
             buttons: {
                 Close: function () {
                     $(this).dialog('close');
                 }
             },
             modal: true
         });
         $("#dialog").parent().appendTo($("form:first"));
     };


     function ShowPopup1() {
         $('#label71').html('');
         $("#dialog1").dialog({
             title: "EDIT  MATERIAL  DETAILS",

             width: 830,
             height: 300,
             buttons: {
                 Close: function () {
                     $(this).dialog('close');
                 }
             },
             modal: true
         });

         $("#dialog1").parent().appendTo($("form:first"));
     };
    </script>

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
  font-family: candara;
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
        
    .style145
    {
        width: 418px;
    }
    
    .style146
    {
        width: 764px;
    }
    
    </style>








 <style type="text/css">
    body {
        font-family:candara;
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
     .style147
     {
         width: 46px;
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

  

<table style="width: 100%; ">
    <tr>
        <td class="style15">
            <table class="display" align="center"      style=" width: 1050px; border-color:black; border:solid ;">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Canadra; font-weight: bold;">


                      
                
                 <table style="width: 50%; height: 47px;" align="right">
                    <tr>
                        <td class="style141" align="right"> 
                             <asp:LinkButton ID="LinkButton1" runat="server"  onclick="LinkButton1_Click" 
                                 ForeColor="Black">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton2" runat="server" 
                                onclick="LinkButton2_Click" ForeColor="Black">Logout</asp:LinkButton>
                            
                        </td>
                        
                        
                    </tr>
                </table>
              
                        <table id="customGrid" class="display" 
                            style="width: 100%; height: 164px; color: #000000; background-color: #000000;">
                            <tr>
                                <td style="border-style: 1; border-color: black; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 100%; height: 25px; border-color: black;">
                                        <tr>
                                         <td style=" background-color: #FFFFFF"  
                                                class="style142" align="left">
                                                <strong style="font-family: 'Century Gothic'; font-size: 14px">
                                                <strong>MANAGE ASSETS</strong></td>
                                            <td>&nbsp;</td>
                                            <td align="right">
                                                &nbsp;</td>
                                        </tr>
                                    </table>





                                </td>
                            </tr>
                            <tr>

                            
                                <td class="style5" align="left" style="background-color: #FFFFFF">
                                  <table align="center" style="width: 100%;  font-family:candara; font-size: large; font-size: small; font-weight: bold; font-style: normal; color: 
                                        #FF0000;" border="2px">
                    <tr>
                        <td class="style146">
                             <asp:Button ID="Tab1" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab1_Click" Text="Assets" UseSubmitBehavior="false"
                                Font-Bold="True" Width="50%" Font-Names="candara" 
                                Font-Size="Large" Height="45px" />


                            <asp:Button ID="Tab3" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab3_Click" Text="Add Asset"  Font-Bold="True"  UseSubmitBehavior="false"
                                Font-Names="candara" Font-Size="Large" Width="49.5%" 
                                Height="45px"   /></td>

                              </tr>
                                    </table>

                         










                            <asp:MultiView ID="MainView" runat="server">
                               
                                <asp:View ID="View1" runat="server">

                                 
                                 <br />
                                    <strong>Assets Categories</strong><br />
                                    <br />
                                    <br />
                                   
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="style145"> 
                                             <asp:HiddenField ID="hfId" runat="server" /> 
                                                <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="Black" BorderStyle="None"
                                        Font-Names="Arial Narrow" Font-Size="12px" DataKeyNames="id"
                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid" OnRowDataBound="gvDetails_RowDataBound"  >
                                                   
                                        <Columns>

                             
                                                                                                                                                                                                                          
                              
                                             <asp:BoundField DataField="id" HeaderText="S/N" />
                                            <asp:BoundField DataField="baseno" HeaderText="BASE.NO" />
                                            <asp:BoundField DataField="type" HeaderText="TYPE" />
                                            <asp:BoundField DataField="date" HeaderText="DATE" />
                                            <asp:BoundField DataField="description" HeaderText="DESCRIPTION" />
                                          
                                        





                                         <asp:TemplateField  ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate  >
                                                                    
                                                                    <asp:Button CssClass="view" Text="Edit" ID="Inkview"  Style="border-radius: 6px"  runat="server" OnClick="Inkview_Click" ForeColor="white"  BackColor="orange" Width="80px" />
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                             <asp:TemplateField  ItemStyle-HorizontalAlign="Center" >
                                                                <ItemTemplate>
                                                              <asp:Button CssClass="view"  Text="Delete" ID="lnkView1"  Style="border-radius: 6px" runat="server" OnClick="Inkview_Click1"     ForeColor="white"  BackColor="orange"  Width="80px"/>
                                                         </ItemTemplate>
                                                            </asp:TemplateField>
                                                            
                                       





                                               
                                        </Columns>
                                       <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="white" />
                                                        <PagerStyle BackColor="#99CCCC" ForeColor="black" HorizontalAlign="Left" />
                                                        <RowStyle BackColor="White" ForeColor="BLACK" />
                                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                        <SortedAscendingHeaderStyle BackColor="black" />
                                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                    </asp:GridView>  <br />
                                              <div class="Pager" style="width: 100%"></div></td>
                                     </tr>
                                    </table>
                                            <br />
                                    <br />
                                    <br />     
                                        <asp:Label ID="Label5" runat="server" Text=""  Visible="False"></asp:Label>
                                     <asp:Label ID="Label1" runat="server" Text=""  Visible="False"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                <div id="dialog" style="display: none">  
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td align="center">
                                             <asp:Label ID="Label71" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label>
                                               
                                                    <p align="center"> <asp:Button ID="Button1" runat="server" OnClick="ImageButton1_Click" Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Export.jpg) no-repeat;" />
                                                </p>
                                                <p>
                                                    &nbsp;</p>
                                                     </tr>
                                    </table>
                                                <table border="1" class="roundedCorners" align="center"
                                                    
                                                    style="width:100%; font-size: x-small; font-family: candara; font-weight: bold;">
                                                    <tr>
                                                        
                                                        <td class="style32">
                                                            BASE NO</td>
                                                        <td class="style29">
                                                            DESCRIPTION</td>
                                                        <td class="style33">
                                                            TYPE OF ASSET</td>
                                                    <tr>
                                                       
                                                        <td class="style32">
                                                            <asp:TextBox ID="TextBox1" runat="server" Width="225px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox2" runat="server" Width="225px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px"
                    Style="margin-left: 0px" Width="306px"
                    Font-Names="candara" Font-Bold="True">
                    
                    <asp:ListItem Value="cylinder" >Cylinder</asp:ListItem>
                    <asp:ListItem Value="Cutting Die" >Cutting Die</asp:ListItem>
                    <asp:ListItem Value="Embossing" >Embossing</asp:ListItem>
                </asp:DropDownList>
                                                        </td>
                                                        
                                                    </tr>
                                                   
                                                </table>
                                                </div>
                                    <br />
                                  
                                    
                                </asp:View>
                             


                               
                                

                                 <asp:View ID="View3" runat="server">
                                    <br />
                                    <strong>ADD ASSETS</strong><br />
                                     <table style="width:100%;" id="test11">
                                         <tr>
                                             <td align="center">
                                                 <asp:Label ID="Label72" runat="server" Text="ASSET CODE" Font-Bold="True"></asp:Label>
                                             </td>
                                             <td align="center">
                                                 <asp:Label ID="Label73" runat="server" Text="DESCRIPTION" Font-Bold="True"></asp:Label>
                                             </td>
                                             <td align="center">
                                                 <asp:Label ID="Label74" runat="server" Text="TYPE OF ASSET" Font-Bold="True"></asp:Label>
                                                 </td>
                                         </tr>
                                         <tr>
                                             <td align="center">
                                                 <asp:TextBox ID="TextBox3" runat="server" Width="232px" Height="32px"></asp:TextBox>
                                             </td>
                                             <td align="center">
                                                 <asp:TextBox ID="TextBox4" runat="server" Width="232px" Height="30px"></asp:TextBox>
                                             </td>
                                             <td align="center">
                                                 <asp:DropDownList ID="DropDownList2" runat="server" 
                                                     Font-Bold="True" Font-Names="candara" Height="34px" 
                                                     Style="margin-left: 0px" Width="240px">
                                                     
                                                     <asp:ListItem Value="3">Cylinder</asp:ListItem>
                                                     <asp:ListItem Value="4">Cutting Die</asp:ListItem>
                                                     <asp:ListItem Value="6">Embossing</asp:ListItem>
                                                 </asp:DropDownList>
                                             </td>
                                         </tr>
                                         <tr>
                                             <td>
                                                 &nbsp;</td>
                                             <td align="center">
                                                 &nbsp;</td>
                                             <td>
                                                 &nbsp;</td>
                                         </tr>
                                         <tr>
                                             <td>
                                                 &nbsp;</td>
                                             <td align="center">
                                                 <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Add Asset(s)" Width="198px" Height="30px" />
                                                     <br>
                                                     </br>
                                                <asp:Label ID="Label50" runat="server"  ></asp:Label>
                                             </td>
                                             <td>
                                                 &nbsp;</td>
                                         </tr>
                                     </table>
                                    <br />
                                    <br />
                                     <div align="center">
                                         <asp:TextBox ID="txtNo" runat="server" />
                                         <asp:Button ID="Button13" runat="server" OnClick="Add" Text="+ Add More" 
                                             Width="88px" />
                                         <br />
                                     
                                         <br />
                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                                             Width="315px">
                                             <Columns>
                                                 <asp:TemplateField HeaderText="ASSET CODE">
                                                     <ItemTemplate>
                                                         <asp:TextBox ID="base" runat="server" Text='<%# Eval("baseno") %>' Width="232" />
                                                     </ItemTemplate>
                                                 </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="DESCRIPTION">
                                                     <ItemTemplate>
                                                         <asp:TextBox ID="descrip" runat="server" Text='<%# Eval("description") %>' Width="232px" />
                                                     </ItemTemplate>
                                                 </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="TYPE OF ASSET">
                                                     <ItemTemplate>
                                                         <asp:DropDownList ID="DropDownList2" runat="server" 
                                                             Font-Bold="True" Font-Names="candara" Height="25px" 
                                                             Style="margin-left: 0px" Width="232px">
                                                             
                                                             <asp:ListItem Value="3">Cylinder</asp:ListItem>
                                                             <asp:ListItem Value="4">Cutting Die</asp:ListItem>
                                                             <asp:ListItem Value="6">Embossing</asp:ListItem>
                                                         </asp:DropDownList>
                                                     </ItemTemplate>
                                                 </asp:TemplateField>
                                             </Columns>
                                         </asp:GridView>
                                         <asp:Button ID="Button12" runat="server" Height="30px" OnClick="OnSave" 
                                             Text="Add Assets" Visible="False" Width="187px" />
                                     </div>
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
        

       
       
    </form>
     <script type="text/javascript">
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        if (prm != null) {
            prm.add_endRequest(function (sender, e) {
                if (sender._postBackSettings.panelsToUpdate != null) {
                    GetCustomers(1);
                }
            });
        };
</body>
</html>
