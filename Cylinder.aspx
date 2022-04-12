﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cylinder.aspx.cs" Inherits="Cylinder" %>

 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Manage Cylinder</title>
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css" />
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="ASPSnippets_Pager.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            GetCustomers(parseInt(1));
            var checked = [];
            $('[id*=chkSelect]').on('click', function () {
                if ($(this).is(":checked")) {
                    checked.push($(this).closest('tr').find('td').eq(0).html());
                } else {
                    checked.pop($(this).closest('tr').find('td').eq(0).html());
                }

                $('[id*=hfCheckedIds]').val(checked.join(','));
            });
        });

        $(document).on("click", '.Pager .page', function () {
            GetCustomers(parseInt($(this).attr('page')));
        });

        var term = '';
        $(document).on("keyup", 'input[type=search]', function () {
            term = $(this).val();
            GetCustomers(parseInt(1));
        });

        $(document).on("change", '[id*=ddlPageSize]', function () {
            GetCustomers(parseInt(1));
        });

        $(document).on('click', '.view', function () {
            $('[id*=hfId]').val($(this).closest('tr').find('td').eq(0).html());
        });

        function SearchTerm() {
            return jQuery.trim($("input[type=search]").val());
        };
        $(document).on('click', '.view', function () {
            var id = $(this).closest('tr').find('td').eq(0).html();
            $('[id*=hfId]').val(id);






        $.ajax({
            type: "POST",
            url: "Cylinder.aspx/GetCustomersDetails",
            data: '{empid: ' + id + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var job_cylinder = xml.find("job_cylinder");
                var id = $(job_cylinder[0]).find("id").text();
                var posino = $(job_cylinder[0]).find("posino").text();
                var colour = $(job_cylinder[0]).find("colour").text();
                var screen = $(job_cylinder[0]).find("screen").text();
                var stylusangle = $(job_cylinder[0]).find("stylusangle").text();
                var Depth = $(job_cylinder[0]).find("Depth").text();
                var cellwallvolume = $(job_cylinder[0]).find("cellwallvolume").text();
                var xdiagonal = $(job_cylinder[0]).find("xdiagonal").text();
                var engravingtype = $(job_cylinder[0]).find("engravingtype").text();
                var stretchfactor = $(job_cylinder[0]).find("stretchfactor").text();
                var channel = $(job_cylinder[0]).find("channel").text();
                var cylinderdiameter = $(job_cylinder[0]).find("cylinderdiameter").text();
                var circumference = $(job_cylinder[0]).find("circumference").text();
                var printwidth = $(job_cylinder[0]).find("printwidth").text();
                var referencecolour = $(job_cylinder[0]).find("referencecolour").text();
                var cylinderfacewidth = $(job_cylinder[0]).find("cylinderfacewidth").text();
                var roughness = $(job_cylinder[0]).find("roughness").text();
                var chromelayerthickness = $(job_cylinder[0]).find("chromelayerthickness").text();


                $('[id*=TextBox6]').val(posino);
                $('[id*=TextBox7').val(colour);
                $('[id*=TextBox8]').val(screen);
                $('[id*=TextBox9]').val(stylusangle);
                $('[id*=TextBox10]').val(Depth);
                $('[id*=TextBox11]').val(cellwallvolume);
                $('[id*=TextBox12]').val(xdiagonal);
                $('[id*=TextBox13]').val(engravingtype);
                $('[id*=TextBox14]').val(stretchfactor);
                $('[id*=TextBox15]').val(channel);
                $('[id*=TextBox16]').val(cylinderdiameter);
                $('[id*=TextBox17]').val(circumference);
                $('[id*=TextBox18]').val(printwidth);
                $('[id*=TextBox19]').val(referencecolour);
                $('[id*=TextBox20]').val(cylinderfacewidth);
                $('[id*=TextBox21]').val(roughness);
                $('[id*=TextBox22]').val(chromelayerthickness);



                ShowPopup();
            },
            error: function (response) {
                alert(response.responseText);
            }
        });

        return false;
    });


    $(document).on('click', '.view1', function () {
        var id = $(this).closest('tr').find('td').eq(0).html();
        // Setting hidden field.
        $('[id*=hfId]').val(id);
        $.ajax({
            type: "POST",
            url: "Cylinder.aspx/GetCustomersDetails1",
            data: '{empid: ' + id + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var job_cylinder = xml.find("job_cylinder");

                var id = $(job_cylinder[0]).find("id").text();
                var posino = $(job_cylinder[0]).find("posino").text();
                var colour = $(job_cylinder[0]).find("colour").text();
                var screen = $(job_cylinder[0]).find("screen").text();
                var stylusangle = $(job_cylinder[0]).find("stylusangle").text();
                var Depth = $(job_cylinder[0]).find("Depth").text();
                var cellwallvolume = $(job_cylinder[0]).find("cellwallvolume").text();
                var xdiagonal = $(job_cylinder[0]).find("xdiagonal").text();
                var engravingtype = $(job_cylinder[0]).find("engravingtype").text();
                var stretchfactor = $(job_cylinder[0]).find("stretchfactor").text();
                var channel = $(job_cylinder[0]).find("channel").text();
                var cylinderdiameter = $(job_cylinder[0]).find("cylinderdiameter").text();
                var circumference = $(job_cylinder[0]).find("circumference").text();
                var printwidth = $(job_cylinder[0]).find("printwidth").text();
                var referencecolour = $(job_cylinder[0]).find("referencecolour").text();
                var cylinderfacewidth = $(job_cylinder[0]).find("cylinderfacewidth").text();
                var roughness = $(job_cylinder[0]).find("roughness").text();
                var chromelayerthickness = $(job_cylinder[0]).find("chromelayerthickness").text();

                $('[id*=TextBox1]').val(posino);
                $('[id*=TextBox2').val(colour);
                $('[id*=TextBox3]').val(screen);
                $('[id*=TextBox4]').val(stylusangle);
                $('[id*=TextBox5]').val(Depth);
                $('[id*=TextBox23]').val(cellwallvolume);
                $('[id*=TextBox24]').val(xdiagonal);
                $('[id*=TextBox25]').val(engravingtype);
                $('[id*=TextBox26]').val(stretchfactor);
                $('[id*=TextBox27]').val(channel);
                $('[id*=TextBox28]').val(cylinderdiameter);
                $('[id*=TextBox29]').val(circumference);
                $('[id*=TextBox30]').val(printwidth);
                $('[id*=TextBox31]').val(referencecolour);
                $('[id*=TextBox32]').val(cylinderfacewidth);
                $('[id*=TextBox33]').val(roughness);
                $('[id*=TextBox34]').val(chromelayerthickness);




                ShowPopup1();
            },
            error: function (response) {
                alert(response.responseText);
            }
        });

        return false;
    });

    var i = 0;
    var row;
    function GetCustomers(pageIndex) {
        $.ajax({
            type: "POST",
            url: "Cylinder.aspx/GetCustomers",
            data: '{searchTerm: "' + SearchTerm() + '", pageIndex: ' + pageIndex + ', pageSize: ' + $("[id*=ddlPageSize]").val() + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("job_cylinder");
                if (row == null) {
                    row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                }
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();

                $.each(customers, function () {
                    $("td", row).eq(0).html($(this).find("id").text());
                    $("td", row).eq(1).html($(this).find("posino").text());
                    $("td", row).eq(2).html($(this).find("colour").text());
                    $("td", row).eq(3).html($(this).find("screen").text());
                    $("td", row).eq(4).html($(this).find("stylusangle").text());
                    $("td", row).eq(5).html($(this).find("channel").text());
                    $("td", row).eq(6).html($(this).find("cylinderdiameter").text());
                    $("td", row).eq(7).html($(this).find("pid").text());
                    $("td", row).eq(8).html($(this).find("referencecolour").text());



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
                if (term != '') {
                    $('input[type=search]').val(term);
                    $('input[type=search]').focus().val($('input[type=search]').val());
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
    function ShowPopup() {
        $('#Label71').html('');
        $("#dialog").dialog({
            title: "VIEW  CYLINDER  DETAILS",
            width: 830,
            height: 500,
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
        $('#Label71').html('');
        $("#dialog1").dialog({
            title: "EDIT  CYLINDER   DETAILS",

            width: 830,
            height: 500,
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
            width: 101px;
        }
        .Initial
        {}
        .style29
        {
            width: 122px;
        }
        .style33
        {
            width: 138px;
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

    .style140
    {
        width: 112px;
    }
    
    .style141
    {
        width: 124px;
    }
    .style142
    {
        width: 227px;
    }
    .style143
    {
        width: 164px;
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
        width: 35px;
        background-color: #A1DCF2;
        margin-right: 3px;
        line-height: 150%;
        border: 1px solid #3AC0F2;
    }
 
    .Pager a {
        text-align: center;
        display: inline-block;
        width: 35px;
        background-color: #3AC0F2;
        color: #fff;
        border: 1px solid #3AC0F2;
        margin-right: 3px;
        line-height: 150%;
        text-decoration: none;
    }
     .hiddencol
    {
        display:none;
    }
    .viscol
    {
        display:block;
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

  

<table style="width: 100%;">
    <tr>
        <td class="style15">
           <table class="display" align="center"      style=" width: 1050px; border-color:black; border:solid ;">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">


                      
                
                <table style="width: 100%; height: 47px;">
                    <tr>
                        <td bgcolor="#3366FF" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Die" ForeColor="White"  
                                NavigateUrl="Die.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                         <td bgcolor="Black" class="style22" align="center" >
                           
                            
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Embossing" ForeColor="White"  
                                NavigateUrl="Embos.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                        <td bgcolor="#009999" class="style22" align="center" >
                         
                            
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Ink" ForeColor="White"  
                                NavigateUrl="Ink.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                         <td bgcolor="#FF9933" class="style22" align="center" >
                         
                            
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Solvent" ForeColor="White"  
                                NavigateUrl="#" Font-Underline="False"></asp:HyperLink>
                            </td>
                         <td bgcolor="#CC0099" class="style22" align="center" >
                           
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Materials" ForeColor="White"  
                                NavigateUrl="Material.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                        <td bgcolor="#00CC99" class="style22" align="center">
                           
                            
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Cylinder" ForeColor="White"  
                                NavigateUrl="Cylinder.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                    </tr>
                    </table>







             
                <table style="width: 50%; height: 47px;">
                    <tr>
                        <td class="style24" align="center">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/l1.jpg" 
                                PostBackUrl="JobsV.aspx" height="67px" />
                           <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="Images/l2.jpg" 
                                PostBackUrl="Jobs.aspx" Height="67px" />
                        </td>
                        
                        
                    </tr>
                </table>

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
                            style="width: 100%; height: 164px; color: #000080; background-color: #000099;background-color: black;" 
                            align="center">
                            <tr>
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 100%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style142" align="Left">
                                                <strong>MANAGE CYLINDER</strong></td>
                                            <td class="style143">&nbsp;</td>
                                            <td align="right">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>

                            
                                <td class="style5" align="left" style="background-color: #FFFFFF">
                                    <br />
                                    <br />
                                    
                                               <asp:HiddenField ID="hfId" runat="server" />
                                                Page Size <asp:DropDownList runat="server" ID="ddlPageSize" >
                                        <asp:ListItem Text="30" Value="30" />
                                        <asp:ListItem Text="70" Value="70" />
                                        
                                        <asp:ListItem Text="100" Value="100" />
                                    </asp:DropDownList>
                                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                        BackColor="White" BorderColor="black" BorderStyle="None"
                                                        Font-Names="Arial Narrow" Font-Size="12px" 
                                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid" OnRowDataBound="OnRowCreated">
                                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="ID" />
                                            <asp:BoundField DataField="posino" HeaderText="Film No" />
                                            <asp:BoundField DataField="colour" HeaderText="Colour" />
                                            <asp:BoundField DataField="screen" HeaderText="Screen" />
                                            <asp:BoundField DataField="stylusangle" HeaderText="Stylus Angle" />                                        
                                            <asp:BoundField DataField="channel" HeaderText="Channel" />
                                            <asp:BoundField DataField="cylinderdiameter" HeaderText="Diameter" />
                                            <asp:BoundField DataField="pid" HeaderText="Job Used" />
                                             <asp:BoundField DataField="referencecolour" HeaderText="Ref.Colour" />
                               
                                              
                            
                                                          
                                                                       <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    
                                                                    <asp:Button CssClass="view" Text="View" ID="Inkview" runat="server" OnClick="Inkview_Click"   ForeColor="white"    BackColor="orange"  Style="border-radius: 6px" />
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                                <asp:Button   CssClass="view1" Text="Edit" ID="lnkView1" runat="server" OnClick="Inkview_Click1"     ForeColor="white"   BackColor="orange"  Style="border-radius: 6px"    />
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
                                                    </asp:GridView>
                                                   <br />
                                              <div class="Pager" style="width: 100%"></div>
                                    
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="lblRecord" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>





  
        <div id="dialog" style="display: none">   
            <table align="center" border="2"   font-size="12px">
               
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                              
                                 

                                 <asp:Button ID="Tab6" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab6_Click" Text="Cylinder" Width="151px"  UseSubmitBehavior="false"     Font-Bold="True"     Font-Names="Arial Narrow"     font-size="x-small" />
                                
                                 

                            

                          





 
                                <asp:MultiView ID="MainView" runat="server">
                                    
                                   







                                    <asp:View ID="View2" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                               
                                                <p>
                                                    &nbsp;</p>
                                                <p>
                                                    &nbsp;</p>
                                                <table border="1" class="roundedCorners"  align="center"
                                                    
                                                    style="width:80%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;">
                                                    

                                                    
                                                    <tr>
                                                        <td class="style142">
                                                           Film No</td>
                                                        <td class="style29">
                                                            Colour</td>
                                                        <td class="style33">
                                                            Screen</td>
                                                        <td class="style143">
                                                            Stylus Angle</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox6" runat="server" 
                                                                Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox7" 
                                                                runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style33"> 
                                                            <asp:TextBox ID="TextBox8" 
                                                                runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox9" 
                                                                runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                           Depth</td>
                                                        <td class="style29">
                                                            Cell Wall.Vol</td>
                                                             <td class="style140">
                                                            X-Diagonal</td>
                                                        <td class="style143">
                                                           Engraving Type</td>      
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox10" runat="server" Width="135px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox11" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox12" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox13" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            Stretch Factor </td>
                                                        <td class="style29">
                                                            Channel</td>
                                                        <td class="style33">
                                                          Cylinder Diameter</td>
                                                        <td class="style143">
                                                            Circumference</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox14" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox15" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox16" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox17" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                    </tr>
                                                   <tr>
                                                        <td class="style142">
                                                            Print Width </td>
                                                        <td class="style29">
                                                            Reference Colour</td>
                                                        <td class="style33">
                                                            Cylinder Face Width</td>
                                                        <td class="style143">
                                                           Roughness: </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox18" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox19" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox20" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox21" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                    </tr>



                                                    <tr>
                                                        <td class="style142">
                                                            Chrome Layer Thickness </td>
                                                        <td class="style29">
                                                           </td>
                                                        <td class="style33">
                                                           </td>
                                                        <td class="style143">
                                                             </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox22" runat="server" Width="135px" Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            
                                                        </td>
                                                        <td class="style33">
                                                           
                                                        </td>
                                                        <td class="style143">
                                                            
                                                </table>


                                                
                                                        <br />
                                                          <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                          <br />  <br />  <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>



                                 

                               

                            </asp:MultiView>





                            </ContentTemplate>
                            <Triggers>
                                
                                <asp:AsyncPostBackTrigger ControlID="Tab6" EventName="click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>
        </div>





 
  
       <div id="dialog1" style="display: none">    
            <table align="center" border="2"   font-size="xx-small">
               
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                              
                                 

                                 <asp:Button ID="Tab2" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab2_Click" Text="Cylinder" Width="151px"  UseSubmitBehavior="false"     Font-Bold="True"     Font-Names="Arial Narrow"     font-size="x-small" />
                                
                                 

                            







 
                                <asp:MultiView ID="MainView1" runat="server">
                                    
                                     <asp:View ID="View1" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td align="center">
  <asp:Label ID="Label71" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label>
                                               
                                               
                                                    <p align="center"><asp:Button ID="Button1" runat="server" OnClick="ImageButton1_Click" Height="34px" Width="94px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Export.jpg) no-repeat;" />
                                                <p>
                                                    &nbsp;</p>
                                                <table border="1" class="roundedCorners"  align="center"
                                                    
                                                    style="width:80%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;">
                                                      <tr>
                                                        <td class="style142">
                                                           Film No</td>
                                                        <td class="style29">
                                                            Colour</td>
                                                        <td class="style33">
                                                            Screen</td>
                                                        <td class="style143">
                                                            Stylus Angle</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox1" runat="server" 
                                                                Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox2" 
                                                                runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33"> 
                                                            <asp:TextBox ID="TextBox3" 
                                                                runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox4" 
                                                                runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                           Depth</td>
                                                        <td class="style29">
                                                            Cell Wall.Vol</td>
                                                             <td class="style140">
                                                            X-Diagonal</td>
                                                        <td class="style143">
                                                           Engraving Type</td>
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox5" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox23" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox24" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox25" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            Stretch Factor </td>
                                                        <td class="style29">
                                                            Channel</td>
                                                        <td class="style33">
                                                          Cylinder Diameter</td>
                                                        <td class="style143">
                                                            Circumference</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox26" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox27" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox28" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox29" runat="server" Width="135px"></asp:TextBox>
                                                    </tr>
                                                   <tr>
                                                        <td class="style142">
                                                            Print Width </td>
                                                        <td class="style29">
                                                            Reference Colour</td>
                                                        <td class="style33">
                                                            Cylinder Face Width</td>
                                                        <td class="style143">
                                                           Roughness: </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox30" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox31" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox32" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style143">
                                                            <asp:TextBox ID="TextBox33" runat="server" Width="135px"></asp:TextBox>
                                                    </tr>



                                                    <tr>
                                                        <td class="style142">
                                                            Chrome Layer Thickness </td>
                                                        <td class="style29">
                                                           </td>
                                                        <td class="style33">
                                                           </td>
                                                        <td class="style143">
                                                             </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style142">
                                                            <asp:TextBox ID="TextBox34" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            
                                                        </td>
                                                        <td class="style33">
                                                           
                                                        </td>
                                                        <td class="style143">
                                                            
                                                </table>


                                                
                                                        <br />
                                                          <br />
                                              
                                                <br />
                                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>



                                                                   

                               

                            </asp:MultiView>





                            </ContentTemplate>
                            <Triggers>
                                
                                <asp:AsyncPostBackTrigger ControlID="Tab6" EventName="click" />
                                    <asp:AsyncPostBackTrigger ControlID="Button1" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>
        </div>











        
       
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
</script>
</body>
</html>
