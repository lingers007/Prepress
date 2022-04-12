<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UseableCyl4.aspx.cs" Inherits="UseableCyl4" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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

        var i = 0;
        var row;
        function GetCustomers(pageIndex) {
            $.ajax({
                type: "POST",
                url: "UseableCyl4.aspx/GetCustomers",
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
                        $("td", row).eq(11).html($(this).find("totalrev").text());

                        // Set color based on condition.
                        if (parseInt($(this).find("totalrev").text()) > 700000) {
                            $("td", row).eq(11).css("background-color", "red")
                        } else {
                            $("td", row).eq(11).css("background-color", "")
                        }
                        $("td", row).eq(12).html($(this).find("comment").text());
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
        .style1
        {
            width: 23px;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; height: 25px;">
            <tr>
                <td style="border-style: 1; border-color: grey; background-color: #FFFFFF"
                    class="style142" align="left">
                    <strong style="font-size: large; font-family: 'Century Gothic'">Useable Cylinder</strong></td>
                <td class="style143"></td>
                <td align="right" class="style151">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style5" align="left" style="background-color: #FFFFFF; border-color: grey;">
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:HiddenField ID="hfCheckedIds" runat="server" />
                            <asp:HiddenField ID="hfId" runat="server" />
                            Page Size:
                                    <asp:DropDownList runat="server" ID="ddlPageSize">
                                        <asp:ListItem Text="20" Value="20" />
                                        <asp:ListItem Text="50" Value="50" />
                                    </asp:DropDownList>
                            <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                Font-Names="Arial Narrow" Font-Size="12px" DataKeyNames="id"
                                Width="100%" Style="margin-bottom: 0px" CssClass="grid" BorderWidth="1px" CellPadding="3">
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
                                    <asp:BoundField DataField="comment" HeaderText="Comment" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
 
                                            <asp:Button CssClass="view" Text="Unuseable" Style="border-radius: 6px" ID="Button1" runat="server" ForeColor="white" BackColor="#FF6600" />
 
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#7EA9D3" Font-Bold="True" ForeColor="White" />
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
