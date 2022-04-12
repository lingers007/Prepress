<%@ Page Language="C#" AutoEventWireup="true"     debug="true"   CodeFile="Received.aspx.cs" Inherits="Received" %>

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
            url: "Received.aspx/GetCustomers",
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
                    $("td", row).eq(2).html($(this).find("posino_dieno_embid_gietzdieref").text());
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

   <script type="text/javascript">


       function ShowPopup() {
           $('#label41').html('');
           $("#dialog").dialog({
               title: "VIEW  JOB  DETAILS",
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
           $('#label71').html('');
           $("#dialog1").dialog({
               title: "EDIT  JOB  DETAILS",

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

       function Confirmationbox() {
           var result = confirm('Are you sure you want to delete selected User(s)?');
           if (result) {
               return true;
           } else {
               return false;
           }
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
 
        .Initial {
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
<table style="width: 100%; height: 10px;">
    <tr>
        <td class="style6">
          <img src="Images/Header.jpg" width="110%" height="112"  alt="header"/>
        </td>
    </tr>
</table>
<body>
    <form id="form1" runat="server">
        
                            
                                <table id="customGrid" class="display" style="width: 100%;border-color: black; height: 164px; color: #000080; background-color: black;">
                                    <tr>
                                        <td style="border-style: 1; border-color: black; background-color: #FFFFFF; font-family: 'Century Gothic'; font-weight: bold; color: #000000;" 
                                            class="style102" align="left" bgcolor="White">
                                           
                                            RECEIVED ORDER</td> 
                                        
                                    </tr>
                                    <tr>
                                        <td class="style102" align="left" bgcolor="White">
                                            
                                            <table style="width:100%; height: 47px;" align="center">
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
                                NavigateUrl="Order11.aspx" Font-Underline="False"></asp:HyperLink>
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
              </br> </br>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
                                
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                 <asp:HiddenField ID="hfCheckedIds" runat="server" />
                                                <asp:HiddenField ID="hfId" runat="server" />
                                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                        BackColor="White" BorderColor="black" BorderStyle="None"
                                                        Font-Names="Arial Narrow" Font-Size="12px" 
                                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid" ForeColor="Black">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>




                                                           <asp:BoundField DataField="orderid" HeaderText="Orderid" ItemStyle-Width="40px" />
                                                            <asp:BoundField DataField="posino_dieno_embid_gietzdieref" HeaderText="Film/No" ItemStyle-Width="80px"/>
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
                                                                    
                                                       <asp:Button  CssClass="view" Text="Accept" ID="lnkView" runat="server" OnClick="Inkview_Click"     ForeColor="white"  BackColor="orange"   Style="border-radius: 6px"/>
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                              <asp:Button  CssClass="view" Text="Reject" ID="lnkView1" runat="server" OnClick="Inkview_Click1"     ForeColor="white"  BackColor="orange"   Style="border-radius: 6px"/>
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