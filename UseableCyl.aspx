<%@ Page Language="C#" AutoEventWireup="true"  Debug="true"  CodeFile="UseableCyl.aspx.cs" Inherits="UseableCyl" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Useable Cylinder</title>
   
    
    <style type="text/css">
    body {
        font-family: Arial;
        font-size: 10pt;
    }
 
    .Pager span {
        text-align: center;
        color: #999;
        display: inline-block;
        width: 45px;
        background-color: #A1DCF2;
        margin-right: 3px;
        line-height: 150%;
        border: 1px solid #3AC0F2;
    }
 
    .Pager a {
        text-align: center;
        display: inline-block;
        width: 45px;
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
        .style1
        {
            width: 33px;
        }
     </style>

</head>
<table style="width: 100%; height: 131px;" >
    <tr>
        <td class="style6">
             <img src="Images/Header.jpg" width="111.5%" height="131"  alt="header"/>
        </td>
    </tr>
</table>
<body>
    <form id="form1" runat="server">

  

  <table style="width: 100%;" align="center">
            <tr>
                <td class="style15">
                   <table class="display" align="center"      style=" width: 100%; border-color:black; border:solid ;">
                        <tr>
                            <td align="center" class="style20"
                                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                                
                                
                                
                                
                             <table style="width: 100%; height: 121px;" align="center">
                                    <tr>
                                        <td bgcolor="#FFA346" class="style150" align="center" width="25%">
                                          <table  style="width: 100%;">
                                                <tr>
                                                    <td class="style2" align="left"
                                                        
                                                        
                                                        
                                                        
                                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold; font-family: Arial;" 
                                                        colspan="3">
                                                        <br />
                                                        &nbsp;&nbsp;Cylinders</td>
                                                </tr>
                                                <tr>
                                                    <td class="style1" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                      
                                                     </td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton1_Click" 
                                                            Font-Names="Arial" Font-Underline="False"> &nbsp;&nbsp;Useable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style1" align="right">
                                                      <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                      
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton2_Click" 
                                                            Font-Names="Arial" Font-Underline="False">&nbsp;&nbsp;Unuseable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                    <tr>
                                                    <td class="style1" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                    
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;"><span style="font:7.0pt &quot;Times New Roman&quot;"> &nbsp;</span></td>
                                                    <td class="style2" align="left">
                                                    
                                                        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton3_Click" 
                                                           Font-Names="Arial" Font-Underline="False">&nbsp;&nbsp;Obsolete</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td class="style1" align="right" style="font-family: Arial">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                        
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                        
                                                        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton4_Click" 
                                                           Font-Names="Arial" Font-Underline="False">&nbsp;&nbsp;Sent</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td bgcolor="#FFA346" class="style22" align="center" width="25%">
                                            <table  style="width: 100%;">
                                                <tr>
                                                    <td class="style2" align="left"
                                                        
                                                        
                                                        
                                                        
                                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold; font-family: Arial;" 
                                                        colspan="3">
                                                        <br />
                                                        &nbsp;&nbsp; Cutting Die</td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                      
                                                     </td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton5_Click" 
                                                            Font-Names="Bahnschrift Light" Font-Underline="False"> Useable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right">
                                                      <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                      
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton6_Click" 
                                                            Font-Names="Bahnschrift Light" Font-Underline="False">Unuseable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                    <tr>
                                                    <td class="style3" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                    
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;"><span style="font:7.0pt &quot;Times New Roman&quot;"> &nbsp;</span></td>
                                                    <td class="style2" align="left">
                                                    
                                                        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton7_Click" 
                                                           Font-Names="Bahnschrift Light" Font-Underline="False">Obsolete</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right" style="font-family: Arial">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                        
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                        
                                                        <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton8_Click" 
                                                           Font-Names="Bahnschrift Light" Font-Underline="False">Sent</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td bgcolor="#FFA346" class="style22" align="center" width="25%">
                                            <table  style="width: 100%;">
                                                <tr>
                                                    <td class="style2" align="left"
                                                        
                                                        
                                                        
                                                        
                                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold; font-family: Arial;" 
                                                        colspan="3">
                                                        <br />
                                                        &nbsp; &nbsp;Gietz Die</td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                      
                                                     </td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton9_Click" 
                                                            Font-Names="Arial" Font-Underline="False"> Useable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right">
                                                      <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                      
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton10_Click" 
                                                            Font-Names="Arial" Font-Underline="False">Unuseable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                    <tr>
                                                    <td class="style3" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                    
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;"><span style="font:7.0pt &quot;Times New Roman&quot;"> &nbsp;</span></td>
                                                    <td class="style2" align="left">
                                                    
                                                        <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton11_Click" 
                                                           Font-Names="Bahnschrift Light" Font-Underline="False">Obsolete</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right" style="font-family: Arial">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style10" align="center">
                                                        
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                        
                                                        <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton12_Click" 
                                                           Font-Names="Bahnschrift Light" Font-Underline="False">Sent</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td bgcolor="#FFA346" class="style22" align="center" width="25%">
                                            <table  style="width: 100%;">
                                                <tr>
                                                    <td class="style2" align="left"
                                                        
                                                        
                                                        
                                                        
                                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold; font-family: Arial;" 
                                                        colspan="3">
                                                        <br />
                                                        &nbsp;&nbsp; Embossing</td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style11" align="center">
                                                      
                                                     </td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton13_Click" 
                                                            Font-Names="Bahnschrift Light" Font-Underline="False"> Useable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right">
                                                      <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style11" align="center">
                                                      
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                      
                                                        <asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" OnClick="LinkButton14_Click" 
                                                            Font-Names="Bahnschrift Light" Font-Underline="False">Unuseable</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                    <tr>
                                                    <td class="style3" align="right">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style11" align="center">
                                                    
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;"><span style="font:7.0pt &quot;Times New Roman&quot;"> &nbsp;</span></td>
                                                    <td class="style2" align="left">
                                                    
                                                        <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White" 
                                                           Font-Names="Bahnschrift Light" Font-Underline="False">Obsolete</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" align="right" style="font-family: Arial">
                                                        <span style="font-size:12.0pt;font-family:Wingdings;mso-fareast-font-family:Wingdings;
mso-bidi-font-family:Wingdings"><span style="mso-list:Ignore; color: #FFFFFF;">§<span style="font:7.0pt &quot;Times New Roman&quot;"> </span></td>
                                                    <td class="style11" align="center">
                                                        
                                                        &nbsp;</td>
                                                    <td class="style2" align="left">
                                                        
                                                        <asp:LinkButton ID="LinkButton16" runat="server" Font-Bold="True"
                                                            Font-Size="Medium" ForeColor="White"  
                                                           Font-Names="Bahnschrift Light" Font-Underline="False">Sent</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                  





                                <asp:Label ID="NameL" runat="server" Font-Bold="False" Font-Size="Medium"></asp:Label>
                                <asp:Label ID="modelL" runat="server" Font-Bold="False" Font-Size="X-Small" Visible="False"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <table style="width: 50%; height: 47px;" align="right">
                                    <tr>
                                        <td class="style141" align="right">
                                                <asp:LinkButton ID="LinkButton17" runat="server"  onclick="LinkButton17_Click" 
                                 ForeColor="Black">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton18" runat="server" 
                                onclick="LinkButton18_Click" ForeColor="Black">Logout</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                               <table id="customGrid" class="display" style="width: 100%; height: 164px; color: #000080; background-color: black;">
                            <tr>
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    

                                           <table style="width: 100%; height: 25px;">
                                                <tr>
                                                    <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"
                                                        class="style142" align="left">
                                                        <strong style="font-size: large; color:Black; font-family: 'Century Gothic'">Useable Cylinder</strong></td>
                                                    <td class="style143"></td>
                                                   <td align="right" class="style151">
                                                        
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5" align="left" style="background-color: #FFFFFF">
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
                    checked.push($(this).closest('tr').find('td').eq(1).html());
                } else {
                    checked.pop($(this).closest('tr').find('td').eq(1).html());
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
            $('[id*=hfId]').val($(this).closest('tr').find('td').eq(1).html());
        });

        function SearchTerm() {
            return jQuery.trim($("input[type=search]").val());
        };
        $(document).on('click', '.view', function () {
            var id = $(this).closest('tr').find('td').eq(1).html();
            $('[id*=hfId]').val(id);
            $.ajax({
                type: "POST",
                url: "UseableCyl.aspx/UpdateCustomer",
                data: '{empid: ' + id + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $('[id*=NameL]').html(response.d);
                    GetCustomers(parseInt(1));
                },
                error: function (response) {
                    alert(response.responseText);
                }
            });

            return false;
        });
       function ThousandSeparator(num) {
            var part1 = num.toString().split(".");
            part1[0] = part1[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            return part1.join(".");
        }   
 
        var i = 0;
        var row;
        function GetCustomers(pageIndex) {
            $.ajax({
                type: "POST",
                url: "UseableCyl.aspx/GetCustomers",
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
                        $("td", row).eq(1).html($(this).find("id").text());
                        $("td", row).eq(2).html($(this).find("no").text());
                        $("td", row).eq(3).html($(this).find("pid").text());
                        $("td", row).eq(4).html($(this).find("posino").text());
                        $("td", row).eq(5).html($(this).find("description").text());
                        $("td", row).eq(6).html($(this).find("colour").text());

                        $("td", row).eq(7).html($(this).find("deliverydate").text());
                        $("td", row).eq(8).html($(this).find("purchaseorderno").text());
                        $("td", row).eq(9).html($(this).find("supplier").text());
                        $("td", row).eq(10).html($(this).find("waybillno").text());

              // $("td", row).eq(11).html(parseFloat($(this).find("totalrev").text()).toFixed(2));
                   $("td", row).eq(11).html(ThousandSeparator(parseFloat($(this).find("totalrev").text()).toFixed(2)));

                        // Set color based on condition.
                        if (parseInt($(this).find("totalrev").text()) > 700000) {
                            $("td", row).eq(11).css("background-color", "red")
                        } else {
                            $("td", row).eq(11).css("background-color", "")
                        }
                       

                        $("td", row).eq(12).html($(this).find("circumference").text());
                        $("td", row).eq(13).html($(this).find("comment").text());
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
    </script>
                                            
                                        <asp:ScriptManager ID="ScriptManager1" runat="server" />
                                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                            <asp:HiddenField ID="hfCheckedIds" runat="server" />
                                            <asp:HiddenField ID="hfId" runat="server" />
                                            Page Size:
                                    <asp:DropDownList runat="server" ID="ddlPageSize">
                                       <asp:ListItem Text="25" Value="25" />
                                        
                                        <asp:ListItem Text="100" Value="100" />
                                    </asp:DropDownList>
                                            <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                                Font-Names="Arial" Font-Size="11px" DataKeyNames="id" Font-Bold="false" 
                                                Width="100%" Style="margin-bottom: 0px" CssClass="grid" BorderWidth="1px"  OnRowDataBound="gvDetails_RowDataBound"  OnRowDataBound1="OnRowCreated"      >
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="id" HeaderText="stockid" />
                                                    <asp:BoundField DataField="no" HeaderText="Base No" />
                                                    <asp:BoundField DataField="pid" HeaderText="Prod.Code" />
                                                    <asp:BoundField DataField="posino" HeaderText="Film No" />
                                                    <asp:BoundField DataField="description" HeaderText="Description" />
                                                    <asp:BoundField DataField="colour" HeaderText="Colour" />
                                                    <asp:BoundField DataField="deliverydate" HeaderText="Date.Rec" />
                                                    <asp:BoundField DataField="purchaseorderno" HeaderText="Order No" />
                                                    <asp:BoundField DataField="supplier" HeaderText="Supplier" />
                                                    <asp:BoundField DataField="waybillno" HeaderText="Waybill No" />
                                                    <asp:BoundField DataField="totalrev" HeaderText="Total Rev" />
					          <asp:BoundField DataField="circumference" HeaderText="Circ." />
                                                    <asp:BoundField DataField="comment" HeaderText="Comment" />
                                                    <asp:TemplateField>
                                                        <ItemTemplate>  
                                      <asp:Button CssClass="view"  Text="Unuseable" ID="Button1"  runat="server"  ForeColor="white" Style="border-radius: 6px"  BackColor="orange"         />                                                       
                                                           
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










                                            </ContentTemplate>
                                         </asp:UpdatePanel>
                                            <br />
                                            <div class="Pager" style="width: 100%"></div>
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblRecord" runat="server" Visible="False"></asp:Label>
                                            &nbsp;<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
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
    </form>
</body>
</html>



