<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssetH.aspx.cs" Inherits="AssetH" %>




<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>ASSET HISTORY</title>
    
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
    $(document).on("change", '[id*=ddlPageSize]', function () {
        GetCustomers(parseInt(1));
    });
    $(document).on('click', '.view', function () {
        $('[id*=hfId]').val($(this).closest('tr').find('td').eq(0).html());
    });
    var i = 0;
    function GetCustomers(pageIndex) {
        $.ajax({
            type: "POST",
            url: "AssetH.aspx/GetCustomers",

            data: '{ pageIndex: ' + pageIndex + ', pageSize: ' + $("[id*=ddlPageSize]").val() + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("stock");
                var row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();
                $.each(customers, function () {



                    $("td", row).eq(0).html($(this).find("base_no").text());
                    $("td", row).eq(1).html($(this).find("type").text());
                    $("td", row).eq(2).html($(this).find("docket_no").text());


                    $("td", row).eq(3).html($(this).find("product_code").text());

                    $("td", row).eq(4).html($(this).find("description").text());
                    $("td", row).eq(5).html($(this).find("total_qty").text());
                    $("td", row).eq(6).html($(this).find("order_qty").text());
                    $("td", row).eq(7).html($(this).find("totalrev").text());
                    $("td", row).eq(8).html($(this).find("date").text());








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
     .style141
    {
        width: 118px;
    }
    .style142
    {
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
            <table class="display" align="center"      style=" width: 1050px; border-color:#96D4D4; border:solid ;">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">


                      
                
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
                            style="width: 100%; height: 164px; color: #000000; background-color: black;" 
                            >
                            <tr>
                                <td style=" background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 99%; height: 25px;">
                                        <tr>
                                         <td style=" background-color: #FFFFFF"  
                                                class="style142" align="left">
                                                <strong style="font-family: 'Century Gothic'; font-size: 14px">ASSET HISTORY PER DOCKET</strong></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>

                            
                                <td class="style140" align="left" style="background-color: #FFFFFF">
                                    <br />
                                    <br />
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                <asp:HiddenField ID="hfId" runat="server" />
                                                Page Size:
                                    <asp:DropDownList runat="server" ID="ddlPageSize" Height="30px">
                                        <asp:ListItem Text="15" Value="15" />
                                        <asp:ListItem Text="50" Value="50" />
                                        <asp:ListItem Text="100" Value="100" />
                                    </asp:DropDownList>
                                     <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                        BackColor="White"  BorderStyle="None"
                                                        Font-Names="Arial Narrow" Font-Size="12px" 
                                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid" >
                                                        <Columns>   
                                                        
                                                                                                           
                                                     
                                                           <asp:BoundField DataField="base_no" HeaderText="Base No" ItemStyle-Width="60px" />
                                                            <asp:BoundField DataField="type" HeaderText="Type" ItemStyle-Width="20px"/>
                                                             <asp:BoundField DataField="docket_no" HeaderText="Work Docket" ItemStyle-Width="80px"/>
                                                            <asp:BoundField DataField="product_code" HeaderText="Product code"  ItemStyle-Width="90px"/>
                                                            <asp:BoundField DataField="description" HeaderText="Description" ItemStyle-Width="250px" />
                                                            <asp:BoundField DataField="total_qty" HeaderText="Date Ordered" />
                                                            <asp:BoundField DataField="order_qty" HeaderText="Date expected" />
                                                            <asp:BoundField DataField="totalrev" HeaderText="Total Rev" />
                                                            <asp:BoundField DataField="date" HeaderText="Date" />
                                                        </Columns>
                                                        <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="white" />
                                                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                                        <RowStyle BackColor="White" ForeColor="BLACK" />
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

