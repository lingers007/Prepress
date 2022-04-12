<%@ Page Language="C#" AutoEventWireup="true"  Debug="true" CodeFile="UseableCyl.aspx.cs" Inherits="UseableCyl" %>





<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <title>Useable Cylinder</title>



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
            url: "UseableCyl.aspx/GetCustomers",
            data: '{pageIndex: ' + pageIndex + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("job_cylinder");
                var row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();
                $.each(customers, function () {
                    $("td", row).eq(1).html($(this).find("id").text());
                    $("td", row).eq(2).html($(this).find("no").text());
                    $("td", row).eq(3).html($(this).find("pid").text());
                    $("td", row).eq(4).html($(this).find("posino").text());
                    $("td", row).eq(5).html($(this).find("description").text());
                    $("td", row).eq(6).html($(this).find("colour").text());
                    $("td", row).eq(7).html($(this).find("orderid").text());
                    $("td", row).eq(8).html($(this).find("deliverydate").text());
                    $("td", row).eq(9).html($(this).find("purchaseorderno").text());
                    $("td", row).eq(10).html($(this).find("supplier").text());
                    $("td", row).eq(11).html($(this).find("waybillno").text());
                    $("td", row).eq(12).html($(this).find("totalrev").text());
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
.hiddencol
 {
     display:none;
 }

#LinkButton1
{
  text-decoration: none;
}
#LinkButton2
{
  text-decoration: none;
}
#LinkButton3
{
  text-decoration: none;
}
#LinkButton4
{
  text-decoration: none;
}
#LinkButton5
{
  text-decoration: none;
}
#LinkButton6
{
  text-decoration: none;
}
#LinkButton7
{
  text-decoration: none;
}
#LinkButton8
{
  text-decoration: none;
}
#LinkButton9
{
  text-decoration: none;
}
#LinkButton10
{
  text-decoration: none;
}
#LinkButton11
{
  text-decoration: none;
}
#LinkButton12
{
  text-decoration: none;
} 
#LinkButton13
{
  text-decoration: none;
} 
#LinkButton14
{
  text-decoration: none;
}  
#LinkButton15
{
  text-decoration: none;
}  
#LinkButton16
{
  text-decoration: none;
} 
#LinkButton17
{
  text-decoration: none;
}  
#LinkButton18
{
  text-decoration: none;
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
            width: 476px;
        }
        .style20
        {
            width: 856px;
        }
        .Initial
        {
         }
        </style>
       <style>
#customers {
  font-family: Candara;
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
        width: 576px;
    }
    .style143
    {
        width: 17px;
    }
    
    .style147
    {
        width: 206px;
    }
    .style148
    {
        width: 79px;
    }
        
    .style150
    {
        width: 132px;
    }
    
    .style151
    {
        width: 116px;
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
         width: 106px;
     }
 </style>





</head>


<table style="width: 100%; height: 10px;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">
           <img  alt="logo" class="style9" src="Images/capres.gif" /><img  alt="Header Image" src="Images/Continue.jpg" width="1022" height="104" /> </td>
    </tr>
    </table>
<body>
    <form id="form1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server" />

  

<table style="width: 100%;" align="center">
    <tr>
        
        <td class="style15">
            <table class="display" align="center" border="1px" bordercolor="grey" style="width: 100%;">
                <tr>
                    <td align="center" class="style20" 
                        
                        style="font-size: large; color: #006699; font-family: Candara; font-weight: bold;">


                      
                
                <table style="width: 100%; height: 121px;" align="center">
                    <tr>
                        <td bgcolor="#3366FF" class="style150" align="center" width="25%">
                          
                           
                            <table border="1" style="width: 100%;">
                                <tr>
                                    <td class="style147" align="center" 
                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold">
                                        <br />
                                        Cylinders</td>
                                </tr>
                                <tr>
                                    <td class="style147" align="center">
                                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton1_Click">Useable</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style147" align="center">
                                         <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton2_Click">Unuseable</asp:LinkButton> </tr>
                                <tr>
                                    <td class="style147" align="center">
                                         <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton3_Click">Obsolete</asp:LinkButton></td>
                                </tr>
                                <tr>
                                
                                <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton4_Click">Sent</asp:LinkButton> 
                                </td>
                                
                                </tr>
                          
                                   
                            </table>
                        
                            </td>
                       
                        <td bgcolor="#009999" class="style22" align="center" width="25%" >
                         
                             
                            <table border="1" style="width: 100%;" >
                                <tr>
                                    <td class="style148" align="center" 
                                        
                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold; olor: #FFFFFF;">
                                        <br />
                                        Cutting Die</td>
                                </tr>
                               

                                <tr>
                                     <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton5_Click">Useable</asp:LinkButton> 
                                </td>
                                </tr>
                                <tr>
                                    <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton6_Click">Unuseable</asp:LinkButton> 
                                </td>
                                    
                                    
                                     </tr>
                                <tr>
                                    
                                    <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton7_Click">Obsolete</asp:LinkButton> 
                                </td>
                                         <tr>
                                         
                                         <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton8_Click">Sent</asp:LinkButton> 
                                </td>
                                </tr>
                          
                               
                            </table>
                        
                            
                            </td>
                         <td bgcolor="#FF9933" class="style22" align="center" width="25%">
                         
                             
                            <table border="1" style="width: 100%;" >
                                <tr>
                                    <td class="style148" align="center" 
                                        
                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold; olor: #FFFFFF;">
                                        <br />
                                        Gietz Die</td>
                                </tr>
                                 <tr>
                                   <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton9_Click">Useable</asp:LinkButton>  </td>
                                </tr>
                                <tr>
                                    
                                    <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton10_Click">Unuseable</asp:LinkButton> </td>
                                    
                                      </tr>
                                <tr>
                                       <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton11_Click">Obsolete</asp:LinkButton> </td>
                                    
                                       </tr>
                                <tr>
                                
                                  <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton12_Click">Sent</asp:LinkButton> </td> 
                                </tr>
                          
                            </table>
                        
                             
                             </td>
                         <td bgcolor="#CC0099" class="style22" align="center" width="25%">
                           
                            
                            <table border="1" style="width: 100%;" >
                                <tr>
                                    <td class="style148" align="center" 
                                        
                                        style="color: #FFFFFF; font-size: x-large; font-weight: bold; olor: #FFFFFF;">
                                        <br />
                                        Embossing</td>
                                </tr>
                                <tr>
                                       <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton13_Click">Useable</asp:LinkButton> </td>
                                </tr>
                                <tr>
                                       <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton14_Click">Unuseable</asp:LinkButton> </td>
                                    
                                      </tr>
                                <tr>
                                     <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton15_Click">Obsolete</asp:LinkButton> </td>
                                  
                                  
                                       <tr>
                                       
                                         <td class="style147" align="center">
                                  <asp:LinkButton ID="LinkButton16" runat="server" Font-Bold="True" 
                                            Font-Size="Medium" ForeColor="White" onclick="LinkButton16_Click">Sent</asp:LinkButton> </td>
                                
                                </tr>
                          
                            </table>
                        
                           
                           </td>
                    </tr>
                    </table>

                  





             
                <asp:Label ID="NameL" runat="server" Font-Bold="False" Font-Size="X-Small" Visible="False"></asp:Label>
               <asp:Label ID="modelL" runat="server" Font-Bold="False" Font-Size="X-Small"  Visible="False"></asp:Label>
                       







             
                <br />  <br />  <br />  

                 <table style="width: 50%; height: 47px;" align="right">
                    <tr>
                        <td class="style141" align="right"> 
                             <asp:LinkButton ID="LinkButton41" runat="server"  onclick="LinkButton41_Click">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton42" runat="server" 
                                onclick="LinkButton42_Click">Logout</asp:LinkButton>
                            
                        </td>
                        
                        
                    </tr>
                </table>
              
                        <table id="customGrid" class="display" style="width: 100%; height: 164px; color: #000080; background-color: #000099;">
                            <tr>
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                   <table style="width: 100%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style142" align="left">
                                                <strong style="font-size: large; font-family: 'Candara'">Useable Cylinder</strong></td>
                                            <td class="style143"></td>
                                            <td align="right" class="style151">
                                                    &nbsp;&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>

                            
                                <td class="style5" align="left" style="background-color: #FFFFFF">
                                    <br />
                                    <br />
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                     <asp:HiddenField ID="hfCheckedIds" runat="server" />
                                                 <asp:HiddenField ID="hfId" runat="server" />
                                      <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                                Font-Names="Arial" Font-Size="11px" DataKeyNames="id"
                                                Width="100%" Style="margin-bottom: 0px" CssClass="grid" Font-Bold="false"  BorderWidth="1px" CellPadding="1" OnRowDataBound="OnRowCreated">
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
                                            <asp:BoundField DataField="orderid" HeaderText="id" />
                                            <asp:BoundField DataField="deliverydate" HeaderText="Date.Rec" />
                                            <asp:BoundField DataField="purchaseorderno" HeaderText="Order No" />

                                              <asp:BoundField DataField="supplier" HeaderText="Supplier" />
                                            <asp:BoundField DataField="waybillno" HeaderText="Waybill No" />
                                             <asp:BoundField DataField="totalrev" HeaderText="Total Rev" />
                                            <asp:BoundField DataField="comment" HeaderText="Comment" />
                                            









                                            
                                        
                                           
                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    
                                                                    <asp:Button CssClass="view"  Text="Unuseable" ID="Inkview" runat="server" OnClick="Inkview_Click" ForeColor="white"  BackColor="#FF6600"/>
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
