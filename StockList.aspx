<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StockList.aspx.cs" Inherits="StockList" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Obosolete Cutting Die Stock</title>
   
    
    <style type="text/css">
    body {
        font-family: Arial;
        font-size: 12px;
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
             <img src="Images/Header.jpg" width="100%" height="131"  alt="header"/>
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
                                                <strong style="font-size: large;color:Black;  font-family: 'Century Gothic'">STOCK PACKING LIST</strong></td>
                                            <td class="style143"></td>
                                            <td align="right" class="style151">
                                                        
                                                    </td>
                                        </tr>
                                    </table>
                                           









                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5" align="left" style="background-color: #FFFFFF">
<br />
<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                    <br />
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
            $('[id*=hfId]').val($(this).closest('tr').find('td').eq(0).html());
        });

        function SearchTerm() {
            return jQuery.trim($("input[type=search]").val());
        };
        $(document).on('click', '.view', function () {
            var id = $(this).closest('tr').find('td').eq(0).html();
            $('[id*=hfId]').val(id);
        });
 
        var i = 0;
        var row;
        function GetCustomers(pageIndex) {
            $.ajax({
                type: "POST",
                 url: "StockList.aspx/GetCustomers",
                data: '{searchTerm: "' + SearchTerm() + '", pageIndex: ' + pageIndex + ', pageSize: ' + $("[id*=ddlPageSize]").val() + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
 
    var xmlDoc = $.parseXML(response.d);
                    var xml = $(xmlDoc);
                    var customers = xml.find("stocktracking");
                    if (row == null) {
                        row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                    }
                    $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();

                                                            $.each(customers, function () {
                                                                $("td", row).eq(0).html($(this).find("id").text());
                                                                $("td", row).eq(1).html($(this).find("no").text());
                                                                $("td", row).eq(2).html($(this).find("packinglist").text());

                                                                if ($(this).find("type").text().toUpperCase() == "3") {
                                                                    $("td", row).eq(3).html("Cylinder");
                                                                }
                                                                else if ($(this).find("type").text().toUpperCase() == "4") {
                                                                    $("td", row).eq(3).html("Cutting Die");
                                                                }
                                                                else if ($(this).find("type").text().toUpperCase() == "6") {
                                                                    $("td", row).eq(3).html("Embossing");

                                                                }
                                                                else if ($(this).find("type").text().toUpperCase() == "1") {
                                                                    $("td", row).eq(3).html("Offline Die");

                                                                }




                                                                else {
                                                                    $("td", row).eq(3).html($(this).find("type").text());
                                                                }
                                                                $("td", row).eq(4).html($(this).find("location ").text());
                                                                $("td", row).eq(5).html($(this).find("datesent").text());
                                                                $("td", row).eq(6).html($(this).find("datereceived").text());
                                                                $("td", row).eq(7).html($(this).find("waybillno").text());

                                                                if ($(this).find("status").text().toUpperCase() == "2") {
                                                                    $("td", row).eq(8).html("Received");
                                                                }
                                                                else if ($(this).find("status").text().toUpperCase() == "0") {
                                                                    $("td", row).eq(8).html("Pending");
                                                                }
                                                                else if ($(this).find("status").text().toUpperCase() == "1") {
                                                                    $("td", row).eq(8).html("Sent");
                                                                }

                                                                else {
                                                                    $("td", row).eq(9).html($(this).find("status").text());
                                                                }
                                                                if ($(this).find("status").text().toUpperCase() == "2") {
                                                                    $("td", row).find('[id*=lblCompleted]').hide();
                                                                    $("td", row).find('[id*=Label1]').show();
                                                                    $("td", row).find('[id*=btnPending]').hide();
                                                                } else if ($(this).find("status").text().toUpperCase() == "1") {
                                                                    $("td", row).find('[id*=lblCompleted]').show();
                                                                    $("td", row).find('[id*=Label1]').hide();
                                                                    $("td", row).find('[id*=btnPending]').hide();
                                                                } else if ($(this).find("status").text().toUpperCase() == "0") {
                                                                    $("td", row).find('[id*=lblCompleted]').hide();
                                                                    $("td", row).find('[id*=Label1]').hide();
                                                                    $("td", row).find('[id*=btnPending]').show();
                                                                } else {
                                                                    $("td", row).eq(9).html($(this).find("status").text());
                                                                }


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
                                        BackColor="White" BorderColor="black" BorderStyle="None"
                                        Font-Names="Arial Narrow" Font-Size="12px" DataKeyNames="id" OnRowDataBound="gvDetails_RowDataBound"
                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid"  Font-Bold="false">

                                        






                                        <Columns>

                                       
                                           <asp:BoundField DataField="id" HeaderText="stockid" />
                                            <asp:BoundField DataField="no" ItemStyle-Width="95px" HeaderText="Base No" />
                                            <asp:BoundField DataField="packinglist" ItemStyle-Width="50px" HeaderText="Packing List" />
                                            <asp:BoundField DataField="type"  ItemStyle-Width="80px" HeaderText="Type" />
                                            <asp:BoundField DataField="location" ItemStyle-Width="95px" HeaderText="Location" />
                                            <asp:BoundField DataField="datesent"   ItemStyle-Width="60px"   HeaderText="Date Sent" />
                                            <asp:BoundField DataField="datereceived"  ItemStyle-Width="60px" HeaderText="Date Received" />
                                           <asp:BoundField DataField="waybillno" HeaderText="Waybill No." />
                                            <asp:BoundField DataField="status" HeaderText="Status" />
                                          
                                          <asp:TemplateField>
            <ItemTemplate>
           
                <asp:Label ID="lblCompleted" Text="Receive Back" runat="server" />
                <asp:Label ID="Label1" Text="Received Back" runat="server" />
                <asp:Button ID="btnPending" CssClass="view" Text="Send Out" runat="server" OnClick="Inkview_Click"  ForeColor="White" BackColor="#FF6600" />
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



