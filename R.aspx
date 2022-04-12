<%@ Page Language="C#" AutoEventWireup="true"     debug="true"   CodeFile="R.aspx.cs" Inherits="R" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>RECEIVED ORDER</title>







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

    $(document).on('click', '.view', function () {
        $('[id*=hfId]').val($(this).closest('tr').find('td').eq(1).html());
    });
    var i = 0;
    function GetCustomers(pageIndex) {
        $.ajax({
            type: "POST",
            url: "R.aspx/GetCustomers",
            data: '{pageIndex: ' + pageIndex + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("orders");
                var row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();
                $.each(customers, function () {





                    $("td", row).eq(1).html($(this).find("orderid").text());
                    $("td", row).eq(2).html($(this).find("posino").text());
                    $("td", row).eq(3).html($(this).find("producttype").text());
                    $("td", row).eq(4).html($(this).find("pid").text());
                    $("td", row).eq(5).html($(this).find("description").text());
                    $("td", row).eq(6).html($(this).find("dateordered").text());
                    $("td", row).eq(7).html($(this).find("dateexpected").text());
                    $("td", row).eq(8).html($(this).find("deliverydate").text());
                    $("td", row).eq(9).html($(this).find("quantity").text());
                    $("td", row).eq(10).html($(this).find("qtyaccepted").text());
                    $("td", row).eq(11).html($(this).find("qtyrejected").text());

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

 

     

   
  
    <style type="text/css">
        .style6 {
            width: 1079px;
            height: 34px;
        }
 
        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote,
        pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q,
        s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul,
        li, fieldset, form, label, legend, caption {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            font-size: 100%;
            vertical-align: baseline;
            background: transparent;
        }
 
        .style9 {
            width: 104px;
            height: 104px;
        }
 
        .style15 {
            width: 241px;
        }
 
        .style20 {
            width: 687px;
        }
 
        .style23 {
            width: 51px;
        }
 
        .Initial {
        }
 
        .style29 {
            width: 122px;
        }
 
        .style32 {
            width: 148px;
        }
 
        .style33 {
            width: 138px;
        }
 
        .style35 {
            width: 107px;
        }
 
        .style101 {
            border-style: solid;
            border-color: red;
        }
    </style>
    <style type="text/css">
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
 
            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }
 
            #customers tr:nth-child(even) {
                background-color:;
            }
 
 
 
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
    <style type="text/css">
        #customers1 {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
 
            #customers1 td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }
 
            #customers1 tr:nth-child(even) {
                background-color:;
            }
 
 
 
            #customers1 th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
 
        #customers01 {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
    </style>

    <style type="text/css">
        #customers12 {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
 
            #customers12 td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }
 
            #customers12 tr:nth-child(even) {
                background-color:;
            }
 
 
 
            #customers12 th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
 
       
        }
    </style>
    <style type="text/css">
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
     .style102
     {
         width: 797px;
     }
 </style>
 
</head>
<table style="width: 100%; height: 10px;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">&nbsp;
           <img  alt="logo" class="style9" src="Images/capres.gif" /><img  alt="Header Image" src="Images/Continue.jpg" width="1022" height="104" /> </td>
    </tr>
</table>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
                                
                                <table style="width: 50%; height: 47px;" align="right">
                                    <tr>
                                        <td class="style24" align="right">
                                           <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Home.aspx">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton2" runat="server" 
                                onclick="LinkButton2_Click">Logout</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                                <table id="customGrid" class="display" style="width: 100%; height: 164px; color: #000080; background-color: #000099;">
                                    <tr>
                                        <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF" 
                                            class="style102" align="center" bgcolor="White">
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102" align="left" bgcolor="White">
                                            <br />
                                            <table style="width:70%; height: 47px;" align="center">
                    <tr>
                        <td bgcolor="#3366FF" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Receive Order" ForeColor="White"  
                                NavigateUrl="Receive.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>

                            <td bgcolor="Brown" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Received Order" ForeColor="White"  
                                NavigateUrl="Received.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                       
                       
                         <td bgcolor="#CC0099" class="style22" align="center" >
                           
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="View Order" ForeColor="White"  
                                NavigateUrl="ViewOrd.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                        <td bgcolor="#00CC99" class="style22" align="center">
                           
                            
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Place Order" ForeColor="White"  
                                NavigateUrl="Order.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                    </tr>
                    </table>
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                 <asp:HiddenField ID="hfCheckedIds" runat="server" />
                                                <asp:HiddenField ID="hfId" runat="server" />
                                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                        BackColor="White" BorderColor="#3366CC" BorderStyle="None"
                                                        Font-Names="Century Gothic" Font-Size="XX-Small" 
                                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>




                                                           <asp:BoundField DataField="orderid" HeaderText="Orderid" ItemStyle-Width="40px" />
                                                            <asp:BoundField DataField="posino" HeaderText="Film/No" ItemStyle-Width="80px"/>
                                                             <asp:BoundField DataField="producttype" HeaderText="Model" ItemStyle-Width="60px"/>
                                                            <asp:BoundField DataField="pid" HeaderText="Prod.code"  ItemStyle-Width="90px"/>
                                                            <asp:BoundField DataField="description" HeaderText="Description" ItemStyle-Width="190px" />
                                                            <asp:BoundField DataField="dateordered" HeaderText="Date Ordered" />
                                                            <asp:BoundField DataField="dateexpected" HeaderText="Date expected" />
                                                            <asp:BoundField DataField="deliverydate" HeaderText="Delivery Date" />
                                                            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                                            <asp:BoundField DataField="qtyaccepted" HeaderText="Quantity Accepted" />
                                                            <asp:BoundField DataField="qtyrejected" HeaderText="Quantity Rejected" />
                                                         
                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    
                                                       <asp:Button  CssClass="view" Text="Accept" ID="lnkView" runat="server" OnClick="Inkview_Click"     ForeColor="white"  BackColor="#FF6600"/>
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                              <asp:Button  CssClass="view" Text="Reject" ID="lnkView1" runat="server" OnClick="Inkview_Click1"     ForeColor="white"  BackColor="#FF6600"/>
                                                         </ItemTemplate>
                                                            </asp:TemplateField>
                                                
                                                        </Columns>
                                                        <HeaderStyle BackColor="green" Font-Bold="True" ForeColor="#CCCCFF" />
                                                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                        <RowStyle BackColor="White" ForeColor="#003399" />
                                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                                    </asp:GridView>
                                                    <br />
                                              <div class="Pager" style="width: 100%"></div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblRecord" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>
                                            <asp:Label ID="Label47" runat="server" Visible="False"></asp:Label>
                                              <asp:Label ID="Label48" runat="server" Visible="False"></asp:Label>
                                                <asp:Label ID="Label49" runat="server" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            
</form>
</body>
    </html>