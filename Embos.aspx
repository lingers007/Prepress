<%@ Page Language="C#" Debug="true"    AutoEventWireup="true" CodeFile="Embos.aspx.cs" Inherits="Embos" %>






<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Manage Embossing</title>
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
            url: "Embos.aspx/GetCustomersDetails",
            data: '{empid: ' + id + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var job_emboss = xml.find("job_emboss");
                var id = $(job_emboss[0]).find("id").text();
                var embid = $(job_emboss[0]).find("embid").text();
                var mandrel = $(job_emboss[0]).find("mandrel").text();
                var type = $(job_emboss[0]).find("type").text();
                var circmale = $(job_emboss[0]).find("circmale").text();
                var circfemale = $(job_emboss[0]).find("circfemale").text();
                var diameter = $(job_emboss[0]).find("diameter").text();
                var supplier = $(job_emboss[0]).find("supplier").text();
                var supplierno = $(job_emboss[0]).find("supplierno").text();
                var depth = $(job_emboss[0]).find("depth").text();
                var height = $(job_emboss[0]).find("height").text();
                var artworknumber = $(job_emboss[0]).find("artworknumber").text();
                var calyear = $(job_emboss[0]).find("calyear").text();
                var Month = $(job_emboss[0]).find("Month").text();
                var datereceived = $(job_emboss[0]).find("datereceived").text();
                var artworkdate = $(job_emboss[0]).find("artworkdate").text();
                var country = $(job_emboss[0]).find("country").text();
                var comment = $(job_emboss[0]).find("comment").text();




                $('[id*=TextBox393]').val(embid);
                $('[id*=TextBox394').val(mandrel);
                $('[id*=TextBox395]').val(type);
                $('[id*=TextBox419]').val(circmale);
                $('[id*=TextBox396]').val(circfemale);
                $('[id*=TextBox397]').val(diameter);
                $('[id*=TextBox398]').val(supplier);
                $('[id*=TextBox399]').val(supplierno);
                $('[id*=TextBox400]').val(depth);
                $('[id*=TextBox420]').val(height);
                $('[id*=TextBox401]').val(artworknumber);
                $('[id*=TextBox402]').val(calyear);
                $('[id*=TextBox403]').val(Month);
                $('[id*=TextBox404]').val(datereceived);
                $('[id*=TextBox405]').val(artworkdate);
                $('[id*=TextBox421]').val(country);
                $('[id*=TextBox406]').val(comment);



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
            url: "Embos.aspx/GetCustomersDetails1",
            data: '{empid: ' + id + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var job_emboss = xml.find("job_emboss");
                var id = $(job_emboss[0]).find("id").text();
                var embid = $(job_emboss[0]).find("embid").text();
                var mandrel = $(job_emboss[0]).find("mandrel").text();
                var type = $(job_emboss[0]).find("type").text();
                var circmale = $(job_emboss[0]).find("circmale").text();
                var circfemale = $(job_emboss[0]).find("circfemale").text();
                var diameter = $(job_emboss[0]).find("diameter").text();
                var supplier = $(job_emboss[0]).find("supplier").text();
                var supplierno = $(job_emboss[0]).find("supplierno").text();
                var depth = $(job_emboss[0]).find("depth").text();
                var height = $(job_emboss[0]).find("height").text();
                var artworknumber = $(job_emboss[0]).find("artworknumber").text();
                var calyear = $(job_emboss[0]).find("calyear").text();
                var Month = $(job_emboss[0]).find("Month").text();
                var datereceived = $(job_emboss[0]).find("datereceived").text();
                var artworkdate = $(job_emboss[0]).find("artworkdate").text();
                var country = $(job_emboss[0]).find("country").text();
                var comment = $(job_emboss[0]).find("comment").text();




                $('[id*=TextBox1]').val(embid);
                $('[id*=TextBox2').val(mandrel);
                $('[id*=TextBox3]').val(type);
                $('[id*=TextBox4]').val(circmale);
                $('[id*=TextBox5]').val(circfemale);
                $('[id*=TextBox6]').val(diameter);
                $('[id*=TextBox7]').val(supplier);
                $('[id*=TextBox8]').val(supplierno);
                $('[id*=TextBox9]').val(depth);
                $('[id*=TextBox10]').val(height);
                $('[id*=TextBox11]').val(artworknumber);
                $('[id*=TextBox12]').val(calyear);
                $('[id*=TextBox13]').val(Month);
                $('[id*=TextBox14]').val(datereceived);
                $('[id*=TextBox15]').val(artworkdate);
                $('[id*=TextBox16]').val(country);
                $('[id*=TextBox17]').val(comment);



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
            url: "Embos.aspx/GetCustomers",
            data: '{searchTerm: "' + SearchTerm() + '", pageIndex: ' + pageIndex + ', pageSize: ' + $("[id*=ddlPageSize]").val() + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
               

                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("job_emboss");
                if (row == null) {
                    row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                }
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();


                





                $.each(customers, function () {
                    $("td", row).eq(0).html($(this).find("id").text());
                    $("td", row).eq(1).html($(this).find("embid").text());
                    $("td", row).eq(2).html($(this).find("type").text());
                    $("td", row).eq(3).html($(this).find("circfemale").text());
                    $("td", row).eq(4).html($(this).find("circmale").text());
                    $("td", row).eq(5).html($(this).find("diameter").text());
                    $("td", row).eq(6).html($(this).find("artworkdate").text());
                    $("td", row).eq(7).html($(this).find("supplier").text());
                    $("td", row).eq(8).html($(this).find("pid").text());
                    $("td", row).eq(9).html($(this).find("comment").text());
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
            title: "VIEW EMBOSSING DETAILS",
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
            title: "EDIT EMBOSSING DETAILS",

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
        .style15
        {
            width: 407px;
        }
        .style20
        {
            width: 750px;
        }
        .Initial
        {}
        .style29
        {
            width: 122px;
        }
        .style32
        {
            width: 148px;
        }
        .style33
        {
            width: 138px;
        }
        .style35
        {
            width: 107px;
        }
        </style>
       <style type="text/css">
#customers {
  font-family: Century Gothic;
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
  font-family: Arial, Helvetica, Century Gothic;
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
        <td class="style15" align="center">
           

            <table class="display" align="center"      style=" width: 100%; border-color:black; border:solid ;">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Century Gothic; font-weight: bold;">


                      
                
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
                        <asp:LinkButton ID="LinkButton17" runat="server"  onclick="LinkButton1_Click" 
                                 ForeColor="Black">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton18" runat="server" 
                                onclick="LinkButton2_Click" ForeColor="Black">Logout</asp:LinkButton>
                            
                        </td>
                        
                        
                    </tr>
                </table>
              
                        <table id="customGrid" class="display" style="width: 100%; height: 164px; color: #000080; background-color: black;">
                            <tr>
                                <td style="border-style: 1; border-color: black; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 182%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style52" align="left">
                                               <strong style="font-size: large; font-family: 'Century Gothic'">MANAGE EMBOSSING</strong></td>
                                            <td>&nbsp;</td>
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

                             
                            
                                           <asp:BoundField DataField="id" HeaderText="id" />
                                            <asp:BoundField DataField="embid" HeaderText="Emb.Id" />
                                            <asp:BoundField DataField="type" HeaderText="Type" />
                                            <asp:BoundField DataField="circfemale" HeaderText="Emb Cir.Fem" />
                                            <asp:BoundField DataField="circmale" HeaderText="Emb Cir.Male" />
                                            <asp:BoundField DataField="diameter" HeaderText="Diameter" />
                                            <asp:BoundField DataField="artworkdate" HeaderText="Artworkdate" />
                                            <asp:BoundField DataField="supplier" HeaderText="Supplier" />
                                              <asp:BoundField DataField="pid" HeaderText="Job.Used" />                                         
                                            <asp:BoundField DataField="comment" HeaderText="Comment" />
                                           
                                        






                                                        <asp:TemplateField  ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    
                                                                    <asp:Button CssClass="view"  Text="View" ID="Inkview" runat="server"  ForeColor="white"   Style="border-radius: 6px"  BackColor="orange" Width="50px" />
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                            <asp:TemplateField  ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                              <asp:Button  CssClass="view1"  Text="Edit" ID="lnkView1" runat="server"     ForeColor="white"  Style="border-radius: 6px"  BackColor="orange"  Width="50px" />
                                                         </ItemTemplate>
                                                            </asp:TemplateField>
                                                
                                       





                                               
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="orange" />
                                        <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000000" />
                                        <SelectedRowStyle BackColor="black" Font-Bold="True" ForeColor="black" />
                                        <SortedAscendingCellStyle BackColor="black" />
                                        <SortedAscendingHeaderStyle BackColor="black" />
                                        <SortedDescendingCellStyle BackColor="black" />
                                        <SortedDescendingHeaderStyle BackColor="black" />
                                    </asp:GridView>
                                       <br />
                                              <div class="Pager" style="width: 100%"></div>
                             
                                    <br />
                                    <br />
                                    
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="lblRecord" runat="server"></asp:Label>
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
            <table align="center" border="2"    style=" font-family:Century Gothic; ">
               
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                              
                                 

                                 <asp:Button ID="Tab6" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab6_Click" Text="Embossing" Width="151px"  UseSubmitBehavior="false"     Font-Bold="True"     Font-Names="Century Gothic"     font-size="x-small" />
                                
                                 

                            







 
                                <asp:MultiView ID="MainView" runat="server">
                                    
                                   











                                  <asp:View ID="View5" runat="server">
                                    <table style="width: 100%; border-width: 1px; font-family:Century Gothic; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                
                                                <p>
                                                    &nbsp;</p>
                                                <table border="1" class="roundedCorners"  align="center"
                                                    
                                                    style="width:91%; font-size: x-small; font-family: 'Century Gothic'; font-weight: bold;">
                                                    <tr>
                                                        <td class="style32">
                                                            Film No </td>
                                                        <td class="style29">
                                                             	Mandrel </td>
                                                        <td class="style33">
                                                            Type</td>
                                                        <td class="style33">
                                                           Embossing Circ. Male</td>
                                                        <td class="style35">
                                                            Embossing Circ. Female</td>
                                                        <td class="style35">
                                                            Embossing Diameter </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style32">
                                                            <asp:TextBox ID="TextBox393" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox394" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox395" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox419" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox396" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox397" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style32">
                                                            Supplier </td>
                                                        <td class="style29">
                                                            Supplier No </td>
                                                        
                                                        <td class="style33">
                                                            Depth </td>
                                                        <td class="style35">
                                                            Height</td>
                                                        <td class="style35">
                                                           Artwork Number </td>
                                                           <td class="style33">
                                                            Calendar Year </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style32">
                                                            <asp:TextBox ID="TextBox398" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox399" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox400" runat="server"   Width="90px"  Enabled="False" >  </asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox420" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox401" runat="server"   Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox402" runat="server"   Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style32">
                                                           Month</td>
                                                        <td class="style29">
                                                            Date Received </td>
                                                        <td class="style33">
                                                             	Artwork Date </td>
                                                        <td class="style33">
                                                         Country </td>
                                                        <td class="style35">
                                                          Comments</td>
                                                        <td class="style35">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox403" runat="server"   Width="90px"  Enabled="False" ></asp:TextBox>
                                                            
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
                                                            <asp:TextBox ID="TextBox404" runat="server"   Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
                                                            <asp:TextBox ID="TextBox405" runat="server"   Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                            <asp:TextBox ID="TextBox421" runat="server"   Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox406" runat="server" Height="53px" 
                                                                 TextMode="MultiLine" Width="181px"  Enabled="False"  ></asp:TextBox>                      
                                                                 
                                                                 
                                                                 
                                                        </td>
                                                        <td class="style35">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
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
            <table align="center" border="2"    style=" font-family:Century Gothic;">
               
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                              
                                 

                                 <asp:Button ID="Tab2" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab2_Click" Text=" Embossing" Width="151px"  UseSubmitBehavior="false"     Font-Bold="True"     Font-Names="Arial Narrow"     font-size="x-small" />
                                
                                 

                            







 
                                <asp:MultiView ID="MainView1" runat="server">
                                    
                                   


                                    <asp:View ID="View1" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td align="center">
                                             <asp:Label ID="Label71"         runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label>
                                                    
                      
                                                
                                         <p align="center"> <asp:Button ID="Button1" runat="server" OnClick="ImageButton1_Click" Height="34px" Width="94px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Export.jpg) no-repeat;" />
                                                </p><br />
                                                <table border="1" class="roundedCorners"  align="center"
                                                    
                                                    style="width:91%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;">
                                                    <tr>
                                                        <td class="style32">
                                                            Film No </td>
                                                        <td class="style29">
                                                             	Mandrel </td>
                                                        <td class="style33">
                                                            Type</td>
                                                        <td class="style33">
                                                           Embossing Circ. Male</td>
                                                        <td class="style35">
                                                            Embossing Circ. Female</td>
                                                        <td class="style35">
                                                            Embossing Diameter </td>
                                                    </tr>   
                                                  
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox1" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox2" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox3" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox4" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox5" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox6" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Supplier
                                                            </td>
                                                            <td class="style29">
                                                                Supplier No
                                                            </td>
                                                            <td class="style33">
                                                                Depth
                                                            </td>
                                                            <td class="style35">
                                                                Height</td>
                                                            <td class="style35">
                                                                Artwork Number
                                                            </td>
                                                            <td class="style33">
                                                                Calendar Year
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox7" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox8" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox9" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox10" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox11" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox12" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Month</td>
                                                            <td class="style29">
                                                                Date Received
                                                            </td>
                                                            <td class="style33">
                                                                Artwork Date
                                                            </td>
                                                            <td class="style33">
                                                                Country
                                                            </td>
                                                            <td class="style35">
                                                                Comments</td>
                                                            <td class="style35">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox13" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox14" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox15" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox16" runat="server" Width="90px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox17" runat="server" Height="53px" TextMode="MultiLine" 
                                                                    Width="181px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                &nbsp;</td>
                                                        </tr>
                                                   
                                                </table>
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
