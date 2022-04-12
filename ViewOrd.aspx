<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="ViewOrd.aspx.cs" Inherits="ViewOrd" %>





<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>VIEW /EDIT JOB</title>

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
            url: "ViewOrd.aspx/GetCustomers",
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
                    $("td", row).eq(0).html($(this).find("orderid").text());
                    $("td", row).eq(1).html($(this).find("purchaseorderno").text());
                    $("td", row).eq(2).html($(this).find("pid").text());
                    $("td", row).eq(3).html($(this).find("description ").text());

                    if ($(this).find("producttype").text().toUpperCase() == "3") {
                        $("td", row).eq(4).html("Cylinder");
                    }
                    else if ($(this).find("producttype").text().toUpperCase() == "4") {
                        $("td", row).eq(4).html("Cutting Die");
                    }
                    else if ($(this).find("producttype").text().toUpperCase() == "1") {
                        $("td", row).eq(4).html("Offline Die");
                    }
                    else if ($(this).find("producttype").text().toUpperCase() == "6") {
                        $("td", row).eq(4).html("Embossing");
                    } else {
                        $("td", row).eq(4).html($(this).find("producttype").text());
                    }



                    $("td", row).eq(5).html($(this).find("quantity ").text());
                    $("td", row).eq(6).html($(this).find("dateordered").text());
                    $("td", row).eq(7).html($(this).find("dateexpected").text());
                    $("td", row).eq(8).html($(this).find("deliverydate").text());

                    $("td", row).eq(9).html($(this).find("supplier").text());
                    $("td", row).eq(10).html($(this).find("comment").text());
                    $("td", row).eq(11).html($(this).find("qtyreceived").text());

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
        .style6
        {
            width: 1079px;
            height: 24px;
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
            width: 71px;
        }
        .Initial
        {}
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
        height: 3px;
        width: 267px;
    }
    .style141
    {
        height: 45px;
    }
    .style142
    {
        height: 3px;
    }
    </style>

       
       <style type="text/css">

     .style141
    {
        width: 106px;
    }
    .style142
    {
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
          <img src="Images/Header.jpg" width="102%" height="112"  alt="header"/>
        </td>
    </tr>
</table>
<body>
    <form id="form1" runat="server">
 

  

<table style="width: 100%;border-color: black;">
    <tr>
        <td class="style15">
            <table class="display" align="center" border="1px"  style="width: 1050px;border-color: black;">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Century Gothic; font-weight: bold;">


                      
                
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
              
                        <table id="customGrid" class="display" style="width: 100%; height: 100%; border-color: black;color: #000080; background-color: black;">
                            <tr>
                                <td style="border-style: ; border-color: black; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 69%; height: 100%;" align="left">
                                        <tr>
                                         <td style="border-style: ; border-color: black; background-color: #FFFFFF"  
                                                class="style142" align="left">
                                                <strong>VIEW&nbsp; ORDERS</strong></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5" align="center" style="background-color: #FFFFFF">
                                                <asp:HiddenField ID="hfId" runat="server" />
                                   <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="black" BorderStyle="None"
                                        Font-Names="Arial Narrow" Font-Size="12px" 
                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid"   OnRowDataBound="gvDetails_RowDataBound"  >
                                        <Columns>

                             
                                                                                                                                                                                                                          
                           
                                          
                                          
                                           <asp:BoundField DataField="orderid" HeaderText="S/N" />
                                           
                                            <asp:BoundField DataField="purchaseorderno" HeaderText="PO.No" />
                                            <asp:BoundField DataField="pid" HeaderText="Prod.Code" />
                                            <asp:BoundField DataField="description" HeaderText="Desc" />
                                              <asp:BoundField DataField="producttype" HeaderText="Model" />


                                            <asp:BoundField DataField="Quantity" HeaderText="Qty" />
                                            <asp:BoundField DataField="dateordered" HeaderText="Ord.Date" />
                                            <asp:BoundField DataField="dateexpected" HeaderText="Exp.Date" />
                                            <asp:BoundField DataField="deliverydate" HeaderText="Del.Date" />                                        
                                            <asp:BoundField DataField="supplier" HeaderText="Suppliers" />
                                            <asp:BoundField DataField="comment" HeaderText="Comments" />
                                             <asp:BoundField DataField="qtyreceived" HeaderText="Qty Rec" />
                                        






                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    
                                                                    <asp:Button  CssClass="view" Text="Delete" ID="Inkview" runat="server" OnClick="Inkview_Click" ForeColor="white"   BackColor="orange"   Style="border-radius: 6px"   />
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
                                    <br />
                                              <div class="Pager" style="width: 100%"></div>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="lblRecord" runat="server"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
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
