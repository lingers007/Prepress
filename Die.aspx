<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Die.aspx.cs" Inherits="Die" %>






<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Manage Die</title>
    
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
            url: "Die.aspx/GetCustomersDetails",
            data: '{empid: ' + id + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var job_die = xml.find("job_die");

                var id = $(job_die[0]).find("id").text();
                
                var dieno = $(job_die[0]).find("dieno").text();
                var templateno = $(job_die[0]).find("templateno").text();
                var model = $(job_die[0]).find("model").text();
                var type = $(job_die[0]).find("type").text();
                var brassfemaleembossin = $(job_die[0]).find("brassfemaleembossin").text();
                var brassmaleembossing = $(job_die[0]).find("brassmaleembossing").text();
                var supplier = $(job_die[0]).find("supplier").text();
                var lcutterwidth = $(job_die[0]).find("lcutterwidth").text();
                var lcutterlength = $(job_die[0]).find("lcutterlength").text();
                var comment = $(job_die[0]).find("comment").text();
                var lmacross = $(job_die[0]).find("lmacross").text();
                var lmaround = $(job_die[0]).find("lmaround").text();
                var caditemidno = $(job_die[0]).find("caditemidno").text();
                var cadrefno = $(job_die[0]).find("cadrefno").text();
                var cadnoups = $(job_die[0]).find("cadnoups").text();
                var cadpackheight = $(job_die[0]).find("cadpackheight").text();
                var cadpackwidth = $(job_die[0]).find("cadpackwidth").text();
                var cadpackbreadth = $(job_die[0]).find("cadpackbreadth").text();
                var caddesignheight = $(job_die[0]).find("caddesignheight").text();
                var caddesignwidth = $(job_die[0]).find("caddesignwidth").text();
                var cadgripperwidth = $(job_die[0]).find("cadgripperwidth").text();
                var cadgripperlenth = $(job_die[0]).find("cadgripperlenth").text();
                var cadchargenno = $(job_die[0]).find("cadchargenno").text();
                $('[id*=TextBox407]').val(dieno);
                $('[id*=TextBox408]').val(templateno);
                $('[id*=TextBox409]').val(model);
                $('[id*=TextBox410]').val(type);
                $('[id*=TextBox411]').val(brassfemaleembossin);
                $('[id*=TextBox412]').val(brassmaleembossing);
                $('[id*=TextBox413]').val(supplier);
                $('[id*=TextBox414]').val(lcutterwidth);
                $('[id*=TextBox415]').val(lcutterlength);
                $('[id*=TextBox416]').val(comment);
                $('[id*=TextBox417]').val(lmacross);
                $('[id*=TextBox418]').val(lmaround);
                $('[id*=TextBox422]').val(caditemidno);
                $('[id*=TextBox423]').val(cadrefno);
                $('[id*=TextBox424]').val(cadnoups);
                $('[id*=TextBox425]').val(cadpackheight);
                $('[id*=TextBox426]').val(cadpackwidth);
                $('[id*=TextBox427]').val(cadpackbreadth);
                $('[id*=TextBox428]').val(caddesignheight);
                $('[id*=TextBox429]').val(caddesignwidth);
                $('[id*=TextBox430]').val(cadgripperwidth);
                $('[id*=TextBox431]').val(cadgripperlenth);
                $('[id*=TextBox432]').val(cadchargenno);


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
            url: "Die.aspx/GetCustomersDetails1",
            data: '{empid: ' + id + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);

                var job_die = xml.find("job_die");

                var dieno = $(job_die[0]).find("id").text();
                var dieno = $(job_die[0]).find("dieno").text();
                var templateno = $(job_die[0]).find("templateno").text();
                var model = $(job_die[0]).find("model").text();
                var type = $(job_die[0]).find("type").text();
                var brassfemaleembossin = $(job_die[0]).find("brassfemaleembossin").text();
                var brassmaleembossing = $(job_die[0]).find("brassmaleembossing").text();
                var supplier = $(job_die[0]).find("supplier").text();
                var lcutterwidth = $(job_die[0]).find("lcutterwidth").text();
                var lcutterlength = $(job_die[0]).find("lcutterlength").text();
                var comment = $(job_die[0]).find("comment").text();
                var lmacross = $(job_die[0]).find("lmacross").text();
                var lmaround = $(job_die[0]).find("lmaround").text();
                var caditemidno = $(job_die[0]).find("caditemidno").text();
                var cadrefno = $(job_die[0]).find("cadrefno").text();
                var cadnoups = $(job_die[0]).find("cadnoups").text();
                var cadpackheight = $(job_die[0]).find("cadpackheight").text();
                var cadpackwidth = $(job_die[0]).find("cadpackwidth").text();
                var cadpackbreadth = $(job_die[0]).find("cadpackbreadth").text();
                var caddesignheight = $(job_die[0]).find("caddesignheight").text();
                var caddesignwidth = $(job_die[0]).find("caddesignwidth").text();
                var cadgripperwidth = $(job_die[0]).find("cadgripperwidth").text();
                var cadgripperlenth = $(job_die[0]).find("cadgripperlenth").text();
                var cadchargenno = $(job_die[0]).find("cadchargenno").text();


                $('[id*=TextBox1]').val(dieno);
                $('[id*=TextBox2]').val(templateno);
                $('[id*=TextBox3]').val(model);
                $('[id*=TextBox4]').val(type);
                $('[id*=TextBox5]').val(brassfemaleembossin);
                $('[id*=TextBox6]').val(brassmaleembossing);
                $('[id*=TextBox7]').val(supplier);
                $('[id*=TextBox8]').val(lcutterwidth);
                $('[id*=TextBox9]').val(lcutterlength);
                $('[id*=TextBox10]').val(comment);
                $('[id*=TextBox11]').val(lmacross);
                $('[id*=TextBox12]').val(lmaround);
                $('[id*=TextBox13]').val(caditemidno);
                $('[id*=TextBox14]').val(cadrefno);
                $('[id*=TextBox15]').val(cadnoups);
                $('[id*=TextBox16]').val(cadpackheight);
                $('[id*=TextBox17]').val(cadpackwidth);
                $('[id*=TextBox18]').val(cadpackbreadth);
                $('[id*=TextBox19]').val(caddesignheight);
                $('[id*=TextBox20]').val(caddesignwidth);
                $('[id*=TextBox21]').val(cadgripperwidth);
                $('[id*=TextBox22]').val(cadgripperlenth);
                $('[id*=TextBox23]').val(cadchargenno);

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
            url: "Die.aspx/GetCustomers",
            data: '{searchTerm: "' + SearchTerm() + '", pageIndex: ' + pageIndex + ', pageSize: ' + $("[id*=ddlPageSize]").val() + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();

                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("job_die");
                if (row == null) {
                    row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                }
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();

                $.each(customers, function () {
                    $("td", row).eq(0).html($(this).find("id").text());
                    $("td", row).eq(1).html($(this).find("dieno").text());
                    $("td", row).eq(2).html($(this).find("templateno").text());
                    $("td", row).eq(3).html($(this).find("type").text());
                    $("td", row).eq(4).html($(this).find("model").text());
                    $("td", row).eq(5).html($(this).find("lmacross").text());
                    $("td", row).eq(6).html($(this).find("lmaround").text());
                    $("td", row).eq(7).html($(this).find("pid").text());
                    $("td", row).eq(8).html($(this).find("comment").text());
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
            title: "VIEW DIE DETAILS",
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
            title: "EDIT DIE DETAILS",

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
        .hiddencol
 {
     display:none;
 }
        
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
        .style35
        {
            width: 107px;
        }
        </style>
       <style>
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
  font-family: Century Gothic;
  border-collapse: collapse;
  width: 100%;
}

       </style>
<style>
table.roundedCorners { 
  border: 1px solid DarkOrange;
  border-radius: 6px; 
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
    
    </style>










<style type="text/css">
    body {
        font-family: Century Gothic;
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
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 100%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="left">
                                                <strong>MANAGE DIE</strong></td>
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
                                                    <strong>Page Size</strong>:
                                    <asp:DropDownList runat="server" ID="ddlPageSize" >
                                        <asp:ListItem Text="20" Value="20" />
                                     
                                        <asp:ListItem Text="100" Value="100" />
                                    </asp:DropDownList>
                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="black" BorderStyle="None"
                                        Font-Names="Arial Narrow" Font-Size="12px" 
                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid"  OnRowDataBound="OnRowCreated">
                                        <Columns>
                  
                                              <asp:BoundField DataField="id" HeaderText="id" />
                                            <asp:BoundField DataField="dieno" HeaderText="Die No" />
                                            <asp:BoundField DataField="templateno" HeaderText="Templ. No" />
                                            <asp:BoundField DataField="type" HeaderText="Type" />
                                            <asp:BoundField DataField="model" HeaderText="Model" />
                                            <asp:BoundField DataField="lmacross" HeaderText="Lay. Across" />
                                            <asp:BoundField DataField="lmaround" HeaderText="Lay. Around" />
                                           <asp:BoundField DataField="pid" HeaderText="Job Used" />
                                            <asp:BoundField DataField="comment" HeaderText="Comment" />
                                          
                                            <asp:TemplateField  ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                                    
                                                                    <asp:Button  CssClass="view" Text="View" ID="Inkview" runat="server"  ForeColor="white"  Style="border-radius: 6px"  BackColor="orange"  Width="50px"/>
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                         <asp:TemplateField  ItemStyle-HorizontalAlign="Center">
                                                                <ItemTemplate>
                                                              <asp:Button CssClass="view1"   Text="Edit" ID="Inkview1" runat="server"      ForeColor="white" Style="border-radius: 6px"  BackColor="orange"  Width="50px"/>
                                                         </ItemTemplate>
                                                            </asp:TemplateField>
                                                
                                               
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000000" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="#000000" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                         <br />
                                              <div class="Pager" style="width: 100%"></div>
                                    

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
            <table align="center" border="2"   font-size="xx-small">
               
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                              
                                 

                                 <asp:Button ID="Tab6" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab6_Click" Text="Cutting / Punch Die." Width="151px"  UseSubmitBehavior="false"     Font-Bold="True"     Font-Names="Century Gothic"     font-size="x-small" />
                                
                                 

                            







 
                                <asp:MultiView ID="MainView" runat="server">
                                    
                                   











                                 <asp:View ID="View6" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                
                                                <p align="center">
                                                    &nbsp;</p>
                                                <table border="1" class="roundedCorners"  align="center"
                                                    
                                                    style="width:80%; font-size: x-small; font-family: 'Century Gothic'; font-weight: bold;">
                                                    <tr>
                                                        <td class="style135">
                                                            Die No</td>
                                                        <td class="style29">
                                                            Template No</td>
                                                        <td class="style33">
                                                            Model</td>
                                                        <td class="style35">
                                                            Type</td>
                                                        <td class="style35">
                                                            Brass Female Emb:</td>
                                                        <td class="style140">
                                                            Brass Male Emb:</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135"><asp:TextBox ID="TextBox407" runat="server" 
                                                                Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29"><asp:TextBox ID="TextBox408" runat="server" Width="90px"    Enabled="False"></asp:TextBox>
                                                        </td>
                                                        <td class="style33"> <asp:TextBox ID="TextBox409" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox410" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox411" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style140"><asp:TextBox ID="TextBox412" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">Supplier:</td>
                                                        <td class="style29">Punch Width:</td>
                                                        <td class="style33">Punch Length:</td>
                                                        <td class="style35">Comments:</td>
                                                        <td class="style35">Layout Makeup Across:</td>
                                                        <td class="style140">Layout Makeup Around</td>
                                                    </tr>
                                                    <tr>
                                                   <td style="padding-top: 0px; padding-bottom: 10px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox413" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                     <td style="padding-top: 0px; padding-bottom: 10px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox414" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                  <td style="padding-top: 0px; padding-bottom: 10px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox415" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                      <td  >
           
                                                            <asp:TextBox ID="TextBox416" runat="server" Height="30px" TextMode="MultiLine" 
                                                                Width="90px"  Enabled="False"  ></asp:TextBox>
                                                        </td>
                                                      <td style="padding-top: 0px; padding-bottom: 20px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox417" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                <td style="padding-top: 0px; padding-bottom: 20px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox418" runat="server" Width="90px"  Enabled="False"  
                                                                ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135" colspan="6">
                                                            CAD Programming</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            Item No. ID</td>
                                                        <td class="style29">
                                                            Die Refrence No.</td>
                                                             <td class="style140">
                                                            No.Ups</td>
                                                        <td class="style33">
                                                            Pack Height</td>
                                                        <td class="style35">
                                                            Pack Width</td>
                                                        <td class="style35">
                                                            Pack Breadth</td>
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            <asp:TextBox ID="TextBox422" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox423" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox424" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox425" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox426" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            <asp:TextBox ID="TextBox427" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            Design Height</td>
                                                        <td class="style29">
                                                            Design Width</td>
                                                        <td class="style33">
                                                            Gripper Width</td>
                                                        <td class="style35">
                                                            Gripper Length</td>
                                                        <td class="style35">
                                                            Chargen No </td>
                                                        <td class="style140">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            <asp:TextBox ID="TextBox428" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox429" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox430" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox431" runat="server" Width="90px"  Enabled="False" ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox432" runat="server" Width="90px"  Enabled="False"  ></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table><br />
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
                                OnClick="Tab2_Click" Text=" Cutting/Punch Die." Width="151px"  UseSubmitBehavior="false"     Font-Bold="True"     Font-Names="Arial Narrow"     font-size="x-small" />
                                
                                 

                            







 
                                <asp:MultiView ID="MainView1" runat="server">
                                    <h3>
                                      
                                    </h3>
                                   



                                                                    <asp:View ID="View1" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td align="center">
                                                         
                         <asp:Label ID="Label71"    runat="server" Width="400px" ForeColor="White" BackColor="#00CC99"   Visible="False"></asp:Label>
                                                    
                                                         <p align="center"> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Height="32px" Width="93px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Export.jpg) no-repeat;" />


                                                </p>
                                                <table border="1" class="roundedCorners"  align="center"
                                                    
                                                    style="width:80%; font-size: x-small; font-family: 'Century Gothic'; font-weight: bold;">
                                                    <tr>
                                                        <td class="style135">
                                                            Die No</td>
                                                        <td class="style29">
                                                            Template No</td>
                                                        <td class="style33">
                                                            Model</td>
                                                        <td class="style35">
                                                            Type</td>
                                                        <td class="style35">
                                                            Brass Female Emb:</td>
                                                        <td class="style140">
                                                            Brass Male Emb:</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135"><asp:TextBox ID="TextBox1" runat="server" 
                                                                Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style29"><asp:TextBox ID="TextBox2" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style33"> <asp:TextBox ID="TextBox3" runat="server" Width="90px"  ></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox4" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox5" runat="server" Width="90px"  ></asp:TextBox>
                                                        </td>
                                                        <td class="style140"><asp:TextBox ID="TextBox6" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">Supplier:</td>
                                                        <td class="style29">Punch Width:</td>
                                                        <td class="style33">Punch Length:</td>
                                                        <td class="style35">Comments:</td>
                                                        <td class="style35">Layout Makeup Across:</td>
                                                        <td class="style140">Layout Makeup Around</td>
                                                    </tr>
                                                    <tr>
                                                   <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox7" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                     <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox8" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                  <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox9" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                      <td  >
           
                                                            <asp:TextBox ID="TextBox10" runat="server" Height="30px" TextMode="MultiLine" 
                                                                Width="90px"    ></asp:TextBox>
                                                        </td>
                                                      <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox11" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox12" runat="server" Width="90px"    
                                                                ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135" colspan="6">
                                                            CAD Programming</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            Item No. ID</td>
                                                        <td class="style29">
                                                            Die Refrence No.</td>
                                                             <td class="style140">
                                                            No.Ups</td>
                                                        <td class="style33">
                                                            Pack Height</td>
                                                        <td class="style35">
                                                            Pack Width</td>
                                                        <td class="style35">
                                                            Pack Breadth</td>
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            <asp:TextBox ID="TextBox13" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox14" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox15" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox16" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox17" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            <asp:TextBox ID="TextBox18" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            Design Height</td>
                                                        <td class="style29">
                                                            Design Width</td>
                                                        <td class="style33">
                                                            Gripper Width</td>
                                                        <td class="style35">
                                                            Gripper Length</td>
                                                        <td class="style35">
                                                            Chargen No </td>
                                                        <td class="style140">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            <asp:TextBox ID="TextBox19" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox20" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox21" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox22" runat="server" Width="90px"   ></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox23" runat="server" Width="90px"    ></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table><br />
                                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>

                               

                            </asp:MultiView>





                           
                            </ContentTemplate>
                            <Triggers>
                                
                                
                                  <asp:AsyncPostBackTrigger ControlID="Tab2" EventName="click" />
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
