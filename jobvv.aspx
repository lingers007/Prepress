



<%@ Page Language="C#" AutoEventWireup="true"    Debug="true" CodeFile="jobvv.aspx.cs" Inherits="Jobvv" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>VIEW /EDIT JOB</title>





    .
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
    });
     var row;
    var i = 0;
    function GetCustomers(pageIndex) {
        $.ajax({
            type: "POST",
            url: "Jobvv.aspx/GetCustomers",
          data: '{searchTerm: "' + SearchTerm() + '", pageIndex: ' + pageIndex + ', pageSize: ' + $("[id*=ddlPageSize]").val() + '}',
                
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
                var xmlDoc = $.parseXML(response.d);
                    var xml = $(xmlDoc);
                    var customers = xml.find("job");
                    if (row == null) {
                        row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                    }
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();
                $.each(customers, function () {
                    $("td", row).eq(1).html($(this).find("id").text());
                    $("td", row).eq(2).html($(this).find("pid").text());
                    $("td", row).eq(3).html($(this).find("description").text());
                    $("td", row).eq(4).html($(this).find("country").text());
                    $("td", row).eq(5).html($(this).find("pack").text());
                    $("td", row).eq(6).html($(this).find("customer").text());
                    $("td", row).eq(7).html($(this).find("jobnumber").text());
                    $("td", row).eq(8).html($(this).find("artworkdate").text());
                    $("td", row).eq(9).html($(this).find("reprodate").text());
                    $("td", row).eq(10).html($(this).find("artworknumber").text());
                    $("td", row).eq(11).html($(this).find("templateno").text());
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
      .button_color
      {
          background-color:Silver;
      }
  </style>
   <script type="text/javascript">


       function ShowPopup() {
           $('#label41').html('');
           $("#dialog").dialog({
               title: "VIEW  JOB  DETAILS",
               width: 860,
               height: 600,
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

               width: 860,
               height: 600,
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
   <style>
table.roundedCorners { 
  border: 1px solid silver;
  border-radius: 6px; 
  border-spacing: 0;
   border-bottom: 1px solid silver;
font-weight:bold;
  }
table.roundedCorners td, 
table.roundedCorners th { 
  border-bottom: 1px solid silver;
  padding: 4px; 
 
  }
  
  
  
  
 table.roundedCorners tr th,
table.roundedCorners tr td {
  border-right: 0.2px solid #bbb;
  
  padding: 5px;
}
table.roundedCorners tr th:first-child,
table.roundedCorners tr td:first-child {
   border-bottom: 1px solid silver;
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
      
     }
 </style>
 
</head>
<table style="width: 100%; height: 10px;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">&nbsp;
            <img class="style9" src="Images/capres.gif" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
</table>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <table style="width: 100%;">
            <tr>
                <td class="style15">
                    <table class="display" align="center" border="1px" bordercolor="grey" style="width: 1050px">
                        <tr>
                            <td align="center" class="style20" 
                                style="font-size: large; color: #FFFFFF; font-family: Cambria; font-weight: bold;">
                                <table style="width: 100%; height: 47px;">
                                    <tr>
                                        <td bgcolor="#3366FF" class="style22" align="center">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True"
                                                Font-Names="Century Gothic" Text="Manage Die" ForeColor="White"
                                                NavigateUrl="Die.aspx" Font-Underline="False"></asp:HyperLink>
                                        </td>
                                        <td bgcolor="Black" class="style22" align="center">
                                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True"
                                                Font-Names="Century Gothic" Text="Manage Embossing" ForeColor="White"
                                                NavigateUrl="Embos.aspx" Font-Underline="False"></asp:HyperLink>
                                        </td>
                                        <td bgcolor="#009999" class="style22" align="center">
                                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True"
                                                Font-Names="Century Gothic" Text="Manage Ink" ForeColor="White"
                                                NavigateUrl="Ink.aspx" Font-Underline="False"></asp:HyperLink>
                                        </td>
                                        <td bgcolor="#FF9933" class="style22" align="center">
                                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True"
                                                Font-Names="Century Gothic" Text="Manage Solvent" ForeColor="White"
                                                NavigateUrl="#" Font-Underline="False"></asp:HyperLink>
                                        </td>
                                        <td bgcolor="#CC0099" class="style22" align="center">
                                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True"
                                                Font-Names="Century Gothic" Text="Manage Materials" ForeColor="White"
                                                NavigateUrl="Material.aspx" Font-Underline="False"></asp:HyperLink>
                                        </td>
                                        <td bgcolor="#00CC99" class="style22" align="center">
                                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True"
                                                Font-Names="Century Gothic" Text="Manage Cylinder" ForeColor="White"
                                                NavigateUrl="Cylinder.aspx" Font-Underline="False"></asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                                <table style="width: 50%; height: 47px;">
                                    <tr>
                                        <td class="style24" align="center">
                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="Images/l1.jpg"
                                                PostBackUrl="JobsV.aspx" Height="67px" />
                                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="Images/l2.jpg"
                                                PostBackUrl="Jobs.aspx" Height="67px" />
                                        </td>
                                    </tr>
                                </table>
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
                                            <table style="width: 100%; height: 25px;">
                                                <tr>
                                                    <td>
                                                        <strong>VIEW /EDIT JOB</strong></td>
                                                    <td>&nbsp;</td>
                                                    <td align="right">
                                                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="Images/del.jpg"
                                                            Width="72px" Height="19px" OnClick="ImageButton3_Click" OnClientClick="javascript:return Confirmationbox();" />
                                                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="Images/dup.jpg"  OnClick="ImageButton4_Click"
                                                            Width="78px" Height="18px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style102" align="center" bgcolor="White">
                                            <br />
                                            <br />
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
                                                        BackColor="White" BorderColor="#3366CC" BorderStyle="None"
                                                        Font-Names="Arial" Font-Size="10px" 
                                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                           <asp:BoundField DataField="id" HeaderText="S/N" />
                                                            <asp:BoundField DataField="pid" HeaderText="pid" />
                                                            <asp:BoundField DataField="description" HeaderText="Description" />
                                                            <asp:BoundField DataField="country" HeaderText="country" />
                                                            <asp:BoundField DataField="pack" HeaderText="pack" />
                                                            <asp:BoundField DataField="customer" HeaderText="customer" />
                                                            <asp:BoundField DataField="jobnumber" HeaderText="jobnumber" />
                                                            <asp:BoundField DataField="artworkdate" HeaderText="artworkdate" />
                                                            <asp:BoundField DataField="reprodate" HeaderText="reprodate" />
                                                            <asp:BoundField DataField="artworknumber" HeaderText="artworknumber" />
                                                            <asp:BoundField DataField="templateno" HeaderText="templateno" />
                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    
                                                       <asp:Button  CssClass="view" Text="View" ID="lnkView" runat="server" OnClick="Inkview_Click"     ForeColor="white"  BackColor="#FF6600"/>
                                                                </ItemTemplate>
                                                                 
                                                            </asp:TemplateField>
                                                             <asp:TemplateField>
                                                                <ItemTemplate>
                                                              <asp:Button  CssClass="view" Text="Edit" ID="lnkView1" runat="server" OnClick="Inkview_Click1"     ForeColor="white"  BackColor="#FF6600"/>
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
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>








        <div id="dialog" style="display: none;">
            <table align="center"  font-size="10px">
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
           <asp:Button ID="Tab1" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab1_Click" Text="Job.Desc" class="button_color"
                                Font-Bold="True" Width="112px" Font-Names="Arial" Font-Size="Small"  />
                            <asp:Button ID="Tab2" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab2_Click" Text="Material Spec."  Font-Bold="True" Width="112px"
                                Font-Names="Arial"  class="button_color" Font-Size="Small"  />


                            <asp:Button ID="Tab3" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab3_Click" Text="Cylinder.Spec" Width="112px"  Font-Bold="True" class="button_color"
                                Font-Names="Arial"  Font-Size="Small"   />

                          <asp:Button ID="Tab4" runat="server" BorderStyle="None" CssClass="Initial"  class="button_color"
                                OnClick="Tab4_Click" Text="Ink.Spec" Width="111px"  Font-Bold="True" Font-Names="Arial" Font-Size="Small" />
                                 <asp:Button ID="Tab5" runat="server" BorderStyle="None" CssClass="Initial"  class="button_color"
                                OnClick="Tab5_Click" Text="Embossing" Width="112px" Font-Bold="True"  Font-Size="Small"   Font-Names="Arial"/> 

                                 <asp:Button ID="Tab6" runat="server" BorderStyle="None" CssClass="Initial"  class="button_color"
                                OnClick="Tab6_Click" Text="Cut./Punch Die" Width="112px" Font-Size="Small" 
                                Font-Bold="True" Font-Names="Arial" />

                                  <asp:Button ID="Tab7" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab7_Click" Text="Off Prod. Spec" Width="112px" class="button_color" 
                                Font-Bold="True" Font-Names="Arial" Font-Size="Small" />
                                <asp:MultiView ID="MainView" runat="server">
                                    <h3>
                                        <span>Job Description </span>
                                    </h3>
                                    <asp:View ID="View1" runat="server">
                                        <table>
                                            <tr>
                                                <td>
                                                    <strong> Job Specification
                                                     
                                                    </strong>
                                                       
                                                    </p>
                                                    <p>
 
                                                        <p align="center">
                                                            
                                                              
                                                        </p>
                                                        
                                                        <p>
                                                            <asp:Label ID="Label3" runat="server" Font-Size="XX-Small" ForeColor="Red"></asp:Label>
                                                        </p>
                                                        <p align="center">
                                                          
                                                           <asp:Button ID="Button1" runat="server" OnClick="ImageButton30_Click"  Height="80px" Width="294px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Design.jpg) no-repeat;" />
                                                        </p>
 
                                                        <p>
                                                            
                                                   <table style="width:100%; font-size: x-small; font-family: Candara; font-weight:bolder;" class="roundedCorners" align="center">
                                                       
                                                        <tr >
                                                            <td class="style32">
                                                                <strong>Product Id</strong>
                                                            </td>
                                                            <td class="style29">
                                                                <strong>Description</strong>
                                                            </td>
                                                            <td class="style33">
                                                                <strong>Variant</strong>
                                                            </td>
                                                            <td class="style35">
                                                                <strong>Country</strong>
                                                            </td>
                                                            <td class="style35">
                                                                <strong>Pack</strong>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox7" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox8" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox9" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox10" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox11" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Customer</td>
                                                            <td class="style29">
                                                                Job Number</td>
                                                            <td class="style33">
                                                                Template Number</td>
                                                            <td class="style35">
                                                                Artwork Date</td>
                                                            <td class="style35">
                                                                Reproduction Date</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox12" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox13" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox14" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox15" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox16" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Artwork Number</td>
                                                            <td class="style29">
                                                                Printer&#39;s Code</td>
                                                            <td class="style33">
                                                                Reprodction Approved . date</td>
                                                            <td class="style35">
                                                                Artwk Recieved .Date</td>
                                                            <td class="style35">
                                                                Yield</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox17" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox18" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox19" runat="server" Fheight="24px" Font-Size="x-Small" 
                                                                    Height="24px" Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox20" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox21" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Quantity Around</td>
                                                            <td class="style29">
                                                                Quantity across</td>
                                                            <td class="style33">
                                                                Stretch Double Cut</td>
                                                            <td class="style35">
                                                                Quantity Per Revolution:</td>
                                                            <td class="style35">
                                                                Print Type</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style136" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox22" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style137" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox23" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style138" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox24" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style139" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox25" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                            <td class="style139" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox26" runat="server" Font-Size="x-Small" height="24px" 
                                                                    Width="140px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <caption>
                                                            <p>
                                                                &nbsp;
                                                            </p>
                                                            <p>
                                                                &nbsp;
                                                            </p>
                                                            <p>
                                                                <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Label33" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Label001" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Label11112" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Label8" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Label15" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Label16" runat="server" Visible="false"></asp:Label>
                                                               <asp:Label ID="Labelembos" runat="server" Visible="false"></asp:Label>
                                                                <asp:Label ID="Labelembos1" runat="server" Visible="false"></asp:Label>
                                                            </p>
                                                            <p>
                                                                &nbsp;
                                                            </p>
                                                        </caption>
                                                    </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <table style="width: 100%;  border-color: #666;font-family: Candara; font-weight: bold; font-weight: bolder;">
                                        <tr>
                                            <td>
                                                <p style="font-weight: bold">
                                                    Material Specification</p>
                                                <p>
                                                    &nbsp;</p>
                                                
                                                        
                                                        <p align="center">
                                                          
                                                            <asp:Button ID="Button2" runat="server" OnClick="ImageButton30_Click"  Height="80px" Width="294px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Design.jpg) no-repeat;" />
                                                        </p>
                                                <p>
                                                    &nbsp;</p>
                                                <table border="1" class="roundedCorners" 
                                                    
                                                    style="width:100%; font-size: x-small; font-family: Candara; font-weight: bolder;">
                                                    <tr>
                                                        <td class="style36">
                                                            &nbsp;</td>
                                                        <td class="style32">
                                                            Board Name</td>
                                                        <td class="style29">
                                                            Gsm</td>
                                                        <td class="style33">
                                                            Material Code</td>
                                                        <td class="style35">
                                                            Web Width</td>
                                                        <td class="style35">
                                                            Cost Per Kg</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style36">
                                                            Board</td>
                                                        <td class="style32">
                                                            <asp:TextBox ID="TextBox27" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox28" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox29" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox30" runat="server" Width="125px"  height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox31" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style36" style="font-weight: bold; font-family: Candara ;">
                                                            Foil</td>
                                                        <td class="style32" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox32" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style29" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox33" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style33" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox34" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox35" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox36" runat="server" Width="125px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>


                                                    </tr>
                                                </table>

                                                <br /><br /><br /><br />
                                                
                                            </td>
                                        </tr>
                                    </table>
                                    </asp:View>
                                    <asp:View ID="View3" runat="server">
                                        <table align="center" style="font-size: x-small; font-family: 'Arial Narrow';">
                                            <tr>
                                                <td class="style37">
                                                <p  style="font-size: large; font-family: 'Arial Narrow';">
                                                      <strong>  Cylinder Description   </strong>
                                                    </p>
                                                     <p align="center">
                                                             </p>
                                                           <p align="center">
                                                          
                                                            <asp:Button ID="Button7" runat="server" OnClick="ImageButton30_Click"  Height="80px" Width="294px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Design.jpg) no-repeat;" />
                                                        </p>
                                                       <br />
                                                     <br />
                                                   <table id="customers" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">
                                                        <tr>
                                                            <td class="style84">&nbsp;<img class="style114" src="Images/f1.jpg" /></td>
                                                            <td class="style45">&nbsp;<img class="style114" src="Images/f1.jpg" /></td>
                                                            <td class="style81">&nbsp;<img class="style114" src="Images/f2.jpg" /></td>
                                                           <td class="style81">&nbsp;<img class="style114" src="Images/f3.jpg" /></td>
                                                            <td class="style64">&nbsp;<img class="style114" src="Images/f4.jpg" /></td>
                                                            <td class="style65">&nbsp;<img class="style114" src="Images/f5.jpg" /></td>
                                                            <td class="style66">&nbsp;<img class="style114" src="Images/f6.jpg" /></td>
                                                            <td class="style68">&nbsp;<img class="style114" src="Images/f7.jpg" /></td>
                                                            <td class="style36">&nbsp;<img class="style114" src="Images/f8.jpg" /></td>
                                                            <td class="style36">
                                                                <img class="style114" src="Images/f9.jpg" />
                                                            </td>
                                                            <td class="style36">
                                                                <img class="style114" src="Images/f10.jpg" />
                                                            </td>
                                                            <td class="style36">
                                                                <img class="style114" src="Images/f11.jpg" />
                                                            </td>
                                                            <td class="style32">
                                                                <img class="style114" src="Images/f12.jpg" />
                                                            </td>
                                                            <td class="style29">
                                                                <img class="style114" src="Images/f13.jpg" />
                                                            </td>
                                                            <td class="style33">
                                                                <img class="style114" src="Images/f14.jpg" />
                                                            </td>
                                                            <td class="style35">
                                                                <img class="style114" src="Images/f15.jpg" />
                                                                &nbsp;</td>
                                                            <td class="style52">
                                                                <img class="style114" src="Images/f16.jpg" />
                                                            </td>
                                                            <td class="style71">
                                                                <img class="style114" src="Images/Xdiagonal.jpg" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 1</td>
 
 
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox46" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox47" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox48" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox49" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox50" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox51" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox52" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox53" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox54" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox55" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox56" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox57" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox58" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox59" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox60" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox61" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox62" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 2</td>
                                                            <td class="style86">
                                                                <asp:TextBox ID="TextBox63" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style87">
                                                                <asp:TextBox ID="TextBox64" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style88">
                                                                <asp:TextBox ID="TextBox65" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style89">
                                                                <asp:TextBox ID="TextBox66" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style90">
                                                                <asp:TextBox ID="TextBox67" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style91">
                                                                <asp:TextBox ID="TextBox68" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style92">
                                                                <asp:TextBox ID="TextBox69" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox70" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox71" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox72" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox73" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox74" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style94" valign="top">
                                                                <asp:TextBox ID="TextBox75" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style95">
                                                                <asp:TextBox ID="TextBox76" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style96">
                                                                <asp:TextBox ID="TextBox77" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style97">
                                                                <asp:TextBox ID="TextBox78" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style98">
                                                                <asp:TextBox ID="TextBox79" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">Unit 3</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox80" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox81" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox82" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox83" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox84" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox85" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox86" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox87" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox88" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox89" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox90" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox91" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox92" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox93" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox94" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox95" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox96" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style99">Unit 4</td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox97" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox98" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style102">
                                                                <asp:TextBox ID="TextBox99" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style103">
                                                                <asp:TextBox ID="TextBox100" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style104">
                                                                <asp:TextBox ID="TextBox101" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style105">
                                                                <asp:TextBox ID="TextBox102" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style106">
                                                                <asp:TextBox ID="TextBox103" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox104" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox105" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox106" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox107" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox108" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style108" valign="top">
                                                                <asp:TextBox ID="TextBox109" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style109">
                                                                <asp:TextBox ID="TextBox110" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style110">
                                                                <asp:TextBox ID="TextBox111" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style111">
                                                                <asp:TextBox ID="TextBox112" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style112">
                                                                <asp:TextBox ID="TextBox113" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style99">Unit 5</td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox114" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox115" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style102">
                                                                <asp:TextBox ID="TextBox116" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style103">
                                                                <asp:TextBox ID="TextBox117" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style104">
                                                                <asp:TextBox ID="TextBox118" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style105">
                                                                <asp:TextBox ID="TextBox119" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style106">
                                                                <asp:TextBox ID="TextBox120" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox121" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox122" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox123" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox124" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox125" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style108" valign="top">
                                                                <asp:TextBox ID="TextBox126" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style109">
                                                                <asp:TextBox ID="TextBox127" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style110">
                                                                <asp:TextBox ID="TextBox128" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style111">
                                                                <asp:TextBox ID="TextBox129" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style112">
                                                                <asp:TextBox ID="TextBox130" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">Unit 6</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox131" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox132" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox133" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox134" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox135" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox136" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox137" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox138" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox139" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox140" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox141" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox142" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox143" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox144" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox145" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox146" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox147" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">Unit 7</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox148" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox149" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox150" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox151" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox152" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox153" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox154" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox155" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox156" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox157" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox158" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox159" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox160" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox161" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox162" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox163" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox164" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">Unit 8</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox165" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox166" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox167" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox168" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox169" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox170" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox171" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox172" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox173" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox174" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox175" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox176" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox177" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox178" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox179" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox180" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox181" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">Unit 9</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox182" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox183" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox184" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox185" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox186" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox187" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox188" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox189" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox190" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox191" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox192" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox193" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox194" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox195" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox196" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox197" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox198" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">Unit 10</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox199" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox200" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox201" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox202" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox203" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox204" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox205" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox206" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox207" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox208" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox209" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox210" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox211" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox212" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox213" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox214" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox215" runat="server" class="txtUserName" Width="22px"   Enabled="False"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">&nbsp;</td>
                                                            <td class="style45">&nbsp;</td>
                                                            <td class="style81">&nbsp;</td>
                                                            <td class="style81">&nbsp;</td>
                                                            <td class="style64">&nbsp;</td>
                                                            <td class="style65">&nbsp;</td>
                                                            <td class="style66">&nbsp;</td>
                                                            <td class="style68">&nbsp;</td>
                                                            <td class="style36">&nbsp;</td>
                                                            <td class="style36">&nbsp;</td>
                                                            <td class="style36">&nbsp;</td>
                                                            <td class="style36">&nbsp;</td>
                                                            <td class="style36">&nbsp;</td>
                                                            <td class="style32">&nbsp;</td>
                                                            <td class="style29">&nbsp;</td>
                                                            <td class="style33">&nbsp;</td>
                                                            <td class="style52">&nbsp;</td>
                                                            <td class="style71">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    </h3>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                    

<asp:View ID="View4" runat="server">
                                         <table align="center" style="font-size: x-small; font-family: 'Arial Narrow';">
                                            <tr>
                                                <td>
                                                <p  style="font-size: large; font-family: 'Arial Narrow';">
                                                <strong>  Ink Details    </strong></p>
                                                    </BR>
                                                    <p align="center">
                                                          
                                                            <asp:Button ID="Button3" runat="server" OnClick="ImageButton30_Click"  Height="80px" Width="294px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Design.jpg) no-repeat;" />
                                                        </p>
                                                     <br />
                                                     <br />
                                                    <table id="customers" width="70%" style="font-size: x-small; font-family: 'Arial Narrow';">

                                                
 
                                                        <tr>
                                                            <td class="style130">&nbsp;<img class="style113" src="Images/f1.jpg" /></td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">ink Code</td>
 
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Ink Coverage</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Colour</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Ink Gsm</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Price</td>
 
 
 
 
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Reducer</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Retarder</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Viscocity</td>
 
 
 
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Mediums</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Toners</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Toner Ratio</td>
                                                            <td class="style125" align="center" style="font-size: x-small; font-family: 'Arial Narrow';">Additive</td>
 
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 1</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox216" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox217" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                         <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox218" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox219" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox220" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox221" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox222" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox223" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox224" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox225" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox226" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox227" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 2</td>
                                                            <td class="style126" align="center">
                                                                <asp:TextBox ID="TextBox233" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style87" align="center">
                                                                <asp:TextBox ID="TextBox234" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style88" align="center">
                                                                <asp:TextBox ID="TextBox235" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style133" align="center">
                                                                <asp:TextBox ID="TextBox236" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style90" align="center">
                                                                <asp:TextBox ID="TextBox237" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style91" align="center">
                                                                <asp:TextBox ID="TextBox238" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style92" align="center">
                                                                <asp:TextBox ID="TextBox239" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93" align="center">
                                                                <asp:TextBox ID="TextBox240" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93" align="center">
                                                                <asp:TextBox ID="TextBox241" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93" align="center">
                                                                <asp:TextBox ID="TextBox242" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93" align="center">
                                                                <asp:TextBox ID="TextBox243" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93" align="center">
                                                                <asp:TextBox ID="TextBox244" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 3</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox250" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox251" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox252" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox253" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox254" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox255" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox256" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox257" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox258" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox259" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox260" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox261" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 4</td>
                                                            <td class="style128" align="center">
                                                                <asp:TextBox ID="TextBox267" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style100" align="center">
                                                                <asp:TextBox ID="TextBox268" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style102" align="center">
                                                                <asp:TextBox ID="TextBox269" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style134" align="center">
                                                                <asp:TextBox ID="TextBox270" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style104" align="center">
                                                                <asp:TextBox ID="TextBox271" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style105" align="center">
                                                                <asp:TextBox ID="TextBox272" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style106" align="center">
                                                                <asp:TextBox ID="TextBox273" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox274" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox275" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox276" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox277" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox278" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 5</td>
                                                            <td class="style129" align="center">
                                                                <asp:TextBox ID="TextBox284" runat="server" CssClass="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style101" align="center">
                                                                <asp:TextBox ID="TextBox285" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style102" align="center">
                                                                <asp:TextBox ID="TextBox286" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style134" align="center">
                                                                <asp:TextBox ID="TextBox287" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style104" align="center">
                                                                <asp:TextBox ID="TextBox288" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style105" align="center">
                                                                <asp:TextBox ID="TextBox289" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style106" align="center">
                                                                <asp:TextBox ID="TextBox290" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox291" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox292" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox293" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox294" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107" align="center">
                                                                <asp:TextBox ID="TextBox295" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 6</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox301" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox302" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox303" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox304" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox305" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox306" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox307" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox308" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox309" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox310" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox311" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox312" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 7</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox318" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox319" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox320" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox321" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox322" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox323" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox324" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox325" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox326" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox327" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox328" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox329" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 8</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox335" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox336" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox337" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox338" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox339" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox340" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox341" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox342" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox343" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox344" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox345" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox346" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 9</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox352" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox353" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox354" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox355" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox356" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox357" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox358" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox359" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox360" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox361" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox362" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox363" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Unit 10</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox369" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox370" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox371" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox372" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox373" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox374" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox375" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox376" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox377" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox378" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox379" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox380" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">Nitrogen</td>
                                                            <td class="style125" align="center">
                                                                <asp:TextBox ID="TextBox381" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81" align="center">
                                                                <asp:TextBox ID="TextBox382" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox383" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style132" align="center">
                                                                <asp:TextBox ID="TextBox384" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65" align="center">
                                                                <asp:TextBox ID="TextBox385" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66" align="center">
                                                                <asp:TextBox ID="TextBox386" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68" align="center">
                                                                <asp:TextBox ID="TextBox387" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox388" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox389" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox390" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox391" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36" align="center">
                                                                <asp:TextBox ID="TextBox392" runat="server" class="txtUserName" Width="22px"  Enabled="False"  Height="18px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
                                     <asp:View ID="View5" runat="server">
                                    <table style="width: 77%; border-width: 0px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <h3>
                                                    EMBOSSING DETAILS
                                                </h3>
                                                <p>
                                                    &nbsp;</p>
                                                     <p align="center">
                                                          
                                                            <asp:Button ID="Button4" runat="server" OnClick="ImageButton30_Click"  Height="80px" Width="294px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Design.jpg) no-repeat;" />
                                                        </p>
                                                         <br />
                                                     <br />
                                                <table border="1" class="roundedCorners" 
                                                    
                                                    
                                                    style="width:77%; font-size: x-small; font-family: Candara ; font-weight: bold;">
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
                                                            <asp:TextBox ID="TextBox393" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox394" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox395" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox419" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox396" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox397" runat="server" Width="122px"></asp:TextBox>
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
                                                            <asp:TextBox ID="TextBox398" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox399" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox400" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox420" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox401" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox402" runat="server" Width="122px"></asp:TextBox>
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
           
                                                            <asp:TextBox ID="TextBox403" runat="server" Width="122px"></asp:TextBox>
                                                            
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
                                                            <asp:TextBox ID="TextBox404" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
                                                            <asp:TextBox ID="TextBox405" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                            <asp:TextBox ID="TextBox421" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox406" runat="server" Height="53px" 
                                                                 TextMode="MultiLine" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
 
                                    <asp:View ID="View6" runat="server">
                                    <table style="width: 77%; border-width: 0px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <p>
                                                    <strong>DIE DETAILS</strong></p>
                                               
                                                     <p align="center">
                                                          
                                                            <asp:Button ID="Button5" runat="server" OnClick="ImageButton30_Click"  Height="80px" Width="294px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Design.jpg) no-repeat;" />
                                                        </p>
                                                         <br />
                                                    
                                                <table border="1" class="roundedCorners" 
                                                    
                                                    
                                                    style="width:76%; font-size: x-small; font-family: Candara ; font-weight: bold;">
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
                                                                Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29"><asp:TextBox ID="TextBox408" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33"> <asp:TextBox ID="TextBox409" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox410" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox411" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style140"><asp:TextBox ID="TextBox412" runat="server" Width="122px"></asp:TextBox>
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
           
                                                            <asp:TextBox ID="TextBox413" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                     <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox414" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                  <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox415" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                      <td  >
           
                                                            <asp:TextBox ID="TextBox416" runat="server" Height="60px" TextMode="MultiLine" 
                                                                Width="122px" ></asp:TextBox>
                                                        </td>
                                                      <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox417" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox418" runat="server" Width="122px" 
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
                                                            <asp:TextBox ID="TextBox422" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox423" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox424" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox425" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox426" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            <asp:TextBox ID="TextBox427" runat="server" Width="122px"></asp:TextBox>
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
                                                            <asp:TextBox ID="TextBox428" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox429" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox430" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox431" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox432" runat="server" Width="122px" ></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>

 
                                    <asp:View ID="View7" runat="server">
                                    <table style="width: 100%; border-width: 0px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <strong>OFFLINE PRODUCTION SPECIFICATION<br />   
                                                <br />
                                                <p align="center">
                                                          
                                                            <asp:Button ID="Button6" runat="server" OnClick="ImageButton30_Click"  Height="80px" Width="294px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Design.jpg) no-repeat;" />
                                                        </p>
                                                         <br />
                                                     <br />
                                                <br />
                                                </strong>
                                                <table border="1" class="roundedCorners" 
                                                    
                                                    style="width:76%; font-size: x-small; font-family: Candara ; font-weight: bold;">
                                                    <tr>
                                                        <td class="style135">
                                                         Offline Die Ref</td>
                                                        <td class="style29">
                                                          Packaging Per Pallet</td>
                                                        <td class="style140">
                                                            Status</td>
                                                        <td class="style33">
                                                          Geitz Die Ref.No</td>
                                                        <td class="style35">
                                                          Hot Foil Coverage</td>
                                                        <td class="style35">
                                                           Blocks Per Sheet</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            <asp:TextBox ID="TextBox445" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox446" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox447" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox448" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox449" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            <asp:TextBox ID="TextBox450" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                          Blocks Per Carton</td>
                                                        <td class="style29">
                                                           Foil Area</td>
                                                        <td class="style33">
                                                           Foil Square Meter</td>
                                                        <td class="style35">
                                                            Sheet Length</td>
                                                        <td class="style35">
                                                            Sheet Width
                                                        </td>
                                                        <td class="style140">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style135">
                                                            <asp:TextBox ID="TextBox451" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox452" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox453" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox454" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox455" runat="server" Width="122px"></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                                  <br />
                            <br />
                            <br />
                            <br />
                            <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
 
                                </asp:MultiView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Tab1" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab2" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab3" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab4" EventName="click" />
                                 <asp:AsyncPostBackTrigger ControlID="Tab5" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab6" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab7" EventName="click" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>
        </div>




                                  



 <div id="dialog1" style="display: none;">
            <table align="center"  font-size="xx-small">
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Tab9" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab9_Click" Text="Job.Desc" class="button_color"
                                Font-Bold="True" Width="112px" Font-Names="Arial" Font-Size="Small"   />

                                <asp:Button ID="Tab10" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab10_Click" Text="Material.Spec" class="button_color"
                                Font-Bold="True" Width="112px" Font-Names="Arial" Font-Size="Small"  />

                                <asp:Button ID="Tab11" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab11_Click" Text="Cylinder.Spec" class="button_color"
                                Font-Bold="True" Width="111px" Font-Names="Arial" Font-Size="Small"  />
                                <asp:Button ID="Tab12" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab12_Click" Text="Ink.Spec" class="button_color"
                                Font-Bold="True" Width="111px" Font-Names="Arial" Font-Size="Small"  />
                                <asp:Button ID="Tab13" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab13_Click" Text="Embossing" class="button_color"
                                Font-Bold="True" Width="111px" Font-Names="Arial" Font-Size="Small"  />
                                <asp:Button ID="Tab14" runat="server"  BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab14_Click" Text="Cut/Punch Die" class="button_color"
                                Font-Bold="True" Width="111px" Font-Names="Arial" Font-Size="Small"  />
                                <asp:Button ID="Tab15" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab15_Click" Text="Off Prod.Spec" class="button_color"
                                Font-Bold="True" Width="111px" Font-Names="Arial" Font-Size="Small"  />
                                <asp:MultiView ID="MainView2" runat="server">
                                    <h3>
                                        <span>Job Description </span>
                                    </h3>
                                    <asp:View ID="View21" runat="server">
                                        <table>
                                            <tr>
                                                <td>
                                                    <strong> Job Specification
                                                     
                                                    </strong>
                                                       
                                                    
                                                    <p   align="center">  <asp:Label ID="Label40" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label></p>
 
                                                        <p align="center">
                                                            <%--<asp:ImageButton ID="ImageButton1" runat="server" Height="34px"
                                                                ImageUrl="~/Images/submit.jpg" OnClick="ImageButton30_Click" Width="142px" />--%>
                                                            <asp:Button ID="ImageButton16" runat="server" OnClick="ImageButton16_Click" Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Uexport.jpg) no-repeat;" />
                                                        </p>
 
                                                        <p>
                                                            <asp:Label ID="Label10" runat="server" Font-Size="XX-Small" ForeColor="Red"></asp:Label>
                                                        </p>
 
                                                        <p>
                                                            <table style="width: 80%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;" border="1"
                                                                class="roundedCorners" align="center">
 
                                                                <tr>
                                                            <td class="style32" 
                                                                >
                                                                Product Id</td>
                                                            <td class="style29">
                                                                Description</td>
                                                            <td class="style33">
                                                                Variant</td>
                                                            <td class="style35">
                                                                Country</td>
                                                            <td class="style35">
                                                                Pack</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox581" runat="server" Width="140px"    height="24px"   Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox582" runat="server" Width="140px"  height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox583" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox></td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox584" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox585" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Customer</td>
                                                            <td class="style29">
                                                                Job Number</td>
                                                            <td class="style33">
                                                                Template Number</td>
                                                            <td class="style35">
                                                                Artwork Date</td>
                                                            <td class="style35">
                                                                Reproduction Date</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox586" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox587" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox588" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox589" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox590" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Artwork Number</td>
                                                            <td class="style29">
                                                                Printer&#39;s Code</td>
                                                            <td class="style33">
                                                                Repro. Approved date</td>
                                                            <td class="style35">
                                                                Artwk Recieved .Date</td>
                                                            <td class="style35">
                                                                Yield</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox591" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox592" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox593" runat="server" Width="140px" Fheight="24px"  
                                                                    Font-Size="x-Small" Height="24px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox594" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox5941" runat="server" Width="140px"  height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                Quantity Around</td>
                                                            <td class="style29">
                                                                Quantity across</td>
                                                            <td class="style33">
                                                                Stretch Double Cut</td>
                                                            <td class="style35">
                                                                Quantity Per Rev.</td>
                                                            <td class="style35">
                                                                Print Type</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style136">
                                                                <asp:TextBox ID="TextBox595" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style137">
                                                                <asp:TextBox ID="TextBox596" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style138">
                                                                <asp:TextBox ID="TextBox597" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style139">
                                                                <asp:TextBox ID="TextBox598" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style139">
                                                                <asp:TextBox ID="TextBox599" runat="server" Width="140px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                        </p>
                                                        <p>
                                                            &nbsp;
                                                        </p>
                                        <p>
                                            &nbsp;

                                        </p>
                                        <p>
                                            <asp:Label ID="Label11"  runat="server" Visible="false"></asp:Label>
                                            <asp:Label ID="Label12"  runat="server" Visible="false" ></asp:Label>
                                            <asp:Label ID="Label13" runat="server" Visible="false"></asp:Label>
                                        </p>
                                        <p>
                                            &nbsp;
                                        </p>
                                        </td>
                </tr>
            </table>
                                    </asp:View>





                                    <asp:View ID="View22" runat="server">
                                        <table>
                                            <tr>
                                                <td>
                                                     <strong> Material Specification  </strong>
                                                     
                                                    
                                                       
                                                        
                                                   
                                                    <p>
                                                        &nbsp;
                                                    </p>
                                                    <p   align="center">  <asp:Label ID="Label41" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label></p>
 
                                                    <p align="center">
                                                     <asp:Button ID="ImageButton17" runat="server" OnClick="ImageButton17_Click" Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Uexport.jpg) no-repeat;" />  </p>
                                                    <br />
                                                    <table style="width: 80%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;" border="1"
                                                        class="roundedCorners" align="center">
                                                        <tr>
                                                            <td class="style36">&nbsp;</td>
                                                            <td class="style32">Board Name</td>
                                                            <td class="style29">Gsm</td>
                                                            <td class="style33">Material Code</td>
                                                            <td class="style35">Web Width</td>
                                                            <td class="style35">Cost Per Kg</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style36">Board</td>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox600" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox601" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox602" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox603" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox604" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style36">Foil</td>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox605" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox606" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox607" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox608" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox609" runat="server" Width="140px" Height="24px" Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                  
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>







  <asp:View ID="View23" runat="server">


   <table align="center" style="font-size: x-small; font-family: 'Arial Narrow';">
                                            <tr>
                                                <td class="style37">
                                                <p  style="font-size: large; font-family: 'Arial Narrow';">
                                                      <strong>  Cylinder Description   </strong>
                                                    </p>
                                                      <p   align="center">  <asp:Label ID="Label42" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label></p>
  
                                                    <p   align="center">
                                                     <asp:Button ID="ImageButton18" runat="server" OnClick="ImageButton18_Click" Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Uexport.jpg) no-repeat;" />  </p>
                                                    <br>
                                                    <br>
                                                  
                                                    <table ID="customers1" align="center" 
                                                        style="font-size: x-small; font-family: 'Arial Narrow';">
                                                        <tr>
                                                            <td class="style84">
                                                                &nbsp;<img class="style114" src="Images/f1.jpg" /></td>
                                                            <td class="style45">
                                                                &nbsp;<img class="style114" src="Images/f1.jpg" /></td>
                                                            <td class="style81">
                                                                &nbsp;<img class="style114" src="Images/f2.jpg" /></td>
                                                            <td>
                                                                &nbsp;<img class="style114" src="Images/f3.jpg" /></td>
                                                            <td class="style64">
                                                                &nbsp;<img class="style114" src="Images/f4.jpg" /></td>
                                                            <td class="style65">
                                                                &nbsp;<img class="style114" src="Images/f5.jpg" /></td>
                                                            <td class="style66">
                                                                &nbsp;<img class="style114" src="Images/f6.jpg" /></td>
                                                            <td class="style68">
                                                                &nbsp;<img class="style114" src="Images/f7.jpg" /></td>
                                                            <td class="style36">
                                                                &nbsp;<img class="style114" src="Images/f8.jpg" /></td>
                                                            <td class="style36">
                                                                <img class="style114" src="Images/f9.jpg" />
                                                            </td>
                                                            <td class="style36">
                                                                <img class="style114" src="Images/f10.jpg" />
                                                            </td>
                                                            <td class="style36">
                                                                <img class="style114" src="Images/f11.jpg" />
                                                            </td>
                                                            <td class="style32">
                                                                <img class="style114" src="Images/f12.jpg" />
                                                            </td>
                                                            <td class="style29">
                                                                <img class="style114" src="Images/f13.jpg" />
                                                            </td>
                                                            <td class="style33">
                                                                <img class="style114" src="Images/f14.jpg" />
                                                            </td>
                                                            <td class="style35">
                                                                <img class="style114" src="Images/f15.jpg" />
                                                                &nbsp;</td>
                                                            <td class="style52">
                                                                <img class="style114" src="Images/f16.jpg" />
                                                            </td>
                                                            <td class="style71">
                                                                <img class="style114" src="Images/Xdiagonal.jpg" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 1</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox610" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox611" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox612" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox613" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox614" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox615" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox616" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox617" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox618" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox619" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox620" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox621" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox622" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox623" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox624" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox625" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox626" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 2</td>
                                                            <td class="style86">
                                                                <asp:TextBox ID="TextBox627" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style87">
                                                                <asp:TextBox ID="TextBox628" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style88">
                                                                <asp:TextBox ID="TextBox629" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style89">
                                                                <asp:TextBox ID="TextBox630" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style140">
                                                                <asp:TextBox ID="TextBox631" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style91">
                                                                <asp:TextBox ID="TextBox632" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style92">
                                                                <asp:TextBox ID="TextBox633" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox634" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox635" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox636" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox637" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox638" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style94" valign="top">
                                                                <asp:TextBox ID="TextBox640" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style95">
                                                                <asp:TextBox ID="TextBox641" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style96">
                                                                <asp:TextBox ID="TextBox642" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style97">
                                                                <asp:TextBox ID="TextBox643" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style98">
                                                                <asp:TextBox ID="TextBox644" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 3</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox645" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox646" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox647" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox648" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox649" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox650" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox651" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox652" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox653" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox654" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox655" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox656" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox657" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox658" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox659" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox660" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox661" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style99">
                                                                Unit 4</td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox662" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox663" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style102">
                                                                <asp:TextBox ID="TextBox664" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style103">
                                                                <asp:TextBox ID="TextBox665" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style104">
                                                                <asp:TextBox ID="TextBox667" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style105">
                                                                <asp:TextBox ID="TextBox668" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style106">
                                                                <asp:TextBox ID="TextBox669" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox670" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox671" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox672" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox673" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox674" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style108" valign="top">
                                                                <asp:TextBox ID="TextBox675" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style109">
                                                                <asp:TextBox ID="TextBox676" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style110">
                                                                <asp:TextBox ID="TextBox677" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style111">
                                                                <asp:TextBox ID="TextBox678" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style112">
                                                                <asp:TextBox ID="TextBox679" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style99">
                                                                Unit 5</td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox680" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style101">
                                                                <asp:TextBox ID="TextBox681" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style102">
                                                                <asp:TextBox ID="TextBox682" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style103">
                                                                <asp:TextBox ID="TextBox683" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style104">
                                                                <asp:TextBox ID="TextBox684" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style105">
                                                                <asp:TextBox ID="TextBox685" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style106">
                                                                <asp:TextBox ID="TextBox686" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox687" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox688" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox689" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox1670" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox1671" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style108" valign="top">
                                                                <asp:TextBox ID="TextBox1672" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style109">
                                                                <asp:TextBox ID="TextBox1673" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style110">
                                                                <asp:TextBox ID="TextBox1674" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style111">
                                                                <asp:TextBox ID="TextBox1675" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style112">
                                                                <asp:TextBox ID="TextBox1676" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 6</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox1677" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox1678" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1679" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox1680" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox1681" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox1682" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox1683" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox1684" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox1685" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox1686" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox1687" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox1688" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox1689" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1690" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1691" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox1692" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox1693" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 7</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox1694" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox1695" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1696" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox1697" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox1698" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox1699" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox700" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox701" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox702" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox703" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox704" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox705" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox706" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox707" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox708" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox709" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox710" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 8</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox711" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox712" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox713" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox714" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox715" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox716" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox717" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox718" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox719" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox720" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox721" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox722" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox723" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox724" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox725" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox726" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox727" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 9</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox728" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox729" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox730" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox731" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox732" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox733" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox734" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox735" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox736" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox737" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox738" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox739" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox740" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox741" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox742" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox743" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox744" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 10</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox745" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox746" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox747" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox748" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox749" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox750" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox751" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox752" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox753" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox754" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox755" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox756" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox757" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox758" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox759" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox760" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox761" runat="server" class="txtUserName" Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                &nbsp;</td>
                                                            <td class="style45">
                                                                &nbsp;</td>
                                                            <td class="style81">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td class="style64">
                                                                &nbsp;</td>
                                                            <td class="style65">
                                                                &nbsp;</td>
                                                            <td class="style66">
                                                                &nbsp;</td>
                                                            <td class="style68">
                                                                &nbsp;</td>
                                                            <td class="style36">
                                                                &nbsp;</td>
                                                            <td class="style36">
                                                                &nbsp;</td>
                                                            <td class="style36">
                                                                &nbsp;</td>
                                                            <td class="style36">
                                                                &nbsp;</td>
                                                            <td class="style36">
                                                                &nbsp;</td>
                                                            <td class="style32">
                                                                &nbsp;</td>
                                                            <td class="style29">
                                                                &nbsp;</td>
                                                            <td class="style33">
                                                                &nbsp;</td>
                                                            <td class="style52">
                                                                &nbsp;</td>
                                                            <td class="style71">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <h3>
                                                    </h3>
                                                    <br>
                                                    <br>
                                                    <br>
                                                                                               
                                              
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>




        <asp:View ID="View24" runat="server">
                                     <table align="center" style="font-size: x-small; font-family: 'Arial Narrow';">
                                            <tr>
                                                <td>
                                                <p  style="font-size: large; font-family: 'Arial Narrow';">
                                                <strong>  Ink Details    </strong></p>
                                                    </BR>
                                                    </BR>
                                                       <p   align="center">  <asp:Label ID="Label43" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label></p>
 
                                                    <p   align="center">
                                                     <asp:Button ID="ImageButton19" runat="server" OnClick="ImageButton19_Click"  Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Uexport.jpg) no-repeat;" />  </p> 
                                                    <br>
                                                    <br>
                                                   
                                                    <table ID="customers12" style="font-size: x-small; font-family: 'Arial Narrow';" 
                                                        width="70%">
                                                        <tr>
                                                            <td class="style130">
                                                                &nbsp;<img class="style113" src="Images/f1.jpg" /></td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                ink Code</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Ink Coverage</td>
                                                            <td  class="style125" style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Colour</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Ink Gsm</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Price</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Reducer</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Retarder</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Viscocity</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Mediums</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Toners</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Toner Ratio</td>
                                                            <td align="center" class="style125" 
                                                                style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Additive</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 1</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox816" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox817" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                             <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox818" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox819" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox820" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox821" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox822" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox823" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox824" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox825" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox826" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox827" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 2</td>
                                                            <td align="center" class="style126">
                                                                <asp:TextBox ID="TextBox833" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style87">
                                                                <asp:TextBox ID="TextBox834" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style88">
                                                                <asp:TextBox ID="TextBox835" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style133">
                                                                <asp:TextBox ID="TextBox836" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style140">
                                                                <asp:TextBox ID="TextBox837" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style91">
                                                                <asp:TextBox ID="TextBox838" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style92">
                                                                <asp:TextBox ID="TextBox839" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style93">
                                                                <asp:TextBox ID="TextBox840" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style93">
                                                                <asp:TextBox ID="TextBox841" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style93">
                                                                <asp:TextBox ID="TextBox842" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style93">
                                                                <asp:TextBox ID="TextBox843" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style93">
                                                                <asp:TextBox ID="TextBox844" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 3</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox850" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox851" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox852" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox853" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox854" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox855" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox856" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox857" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox858" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox859" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox860" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox861" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 4</td>
                                                            <td align="center" class="style128">
                                                                <asp:TextBox ID="TextBox867" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style100">
                                                                <asp:TextBox ID="TextBox868" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style102">
                                                                <asp:TextBox ID="TextBox869" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style134">
                                                                <asp:TextBox ID="TextBox870" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style104">
                                                                <asp:TextBox ID="TextBox871" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style105">
                                                                <asp:TextBox ID="TextBox872" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style106">
                                                                <asp:TextBox ID="TextBox873" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox874" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox875" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox876" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox877" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox878" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 5</td>
                                                            <td align="center" class="style129">
                                                                <asp:TextBox ID="TextBox884" runat="server" CssClass="txtUserName" 
                                                                    Height="18px" Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style101">
                                                                <asp:TextBox ID="TextBox885" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style102">
                                                                <asp:TextBox ID="TextBox886" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style134">
                                                                <asp:TextBox ID="TextBox887" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style104">
                                                                <asp:TextBox ID="TextBox888" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style105">
                                                                <asp:TextBox ID="TextBox889" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style106">
                                                                <asp:TextBox ID="TextBox890" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox891" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox892" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox893" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox894" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style107">
                                                                <asp:TextBox ID="TextBox895" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 6</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox896" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox8961" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                             <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox897" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox898" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox899" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox900" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox901" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox902" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox903" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox904" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox905" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox906" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 7</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox907" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox908" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox909" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox910" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox911" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox912" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox913" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox914" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox915" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox916" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox917" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox918" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 8</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox919" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox920" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                             <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox921" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox922" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox923" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox924" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox925" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox926" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox927" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox928" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox929" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox930" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 9</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox931" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox932" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                             <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox933" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox934" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox935" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox936" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox937" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox938" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox939" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox940" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox941" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox942" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Unit 10</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox943" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox944" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox945" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox946" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox947" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox948" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox949" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox950" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox951" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox952" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox953" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox954" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: x-small; font-family: 'Arial Narrow';">
                                                                Nitrogen</td>
                                                            <td align="center" class="style125">
                                                                <asp:TextBox ID="TextBox955" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox956" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style81">
                                                                <asp:TextBox ID="TextBox957" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style132">
                                                                <asp:TextBox ID="TextBox958" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style65">
                                                                <asp:TextBox ID="TextBox959" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style66">
                                                                <asp:TextBox ID="TextBox960" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style68">
                                                                <asp:TextBox ID="TextBox961" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox962" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox963" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox964" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox965" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" class="style36">
                                                                <asp:TextBox ID="TextBox966" runat="server" class="txtUserName" Height="18px" 
                                                                    Width="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br>
                                                    <br>
                                                    <br>
                                                
                                                                                                       
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>


                              <asp:View ID="View25" runat="server">
                                        <table style="width: 100%;  border-color: #666;">
                                            <tr>
                                                <td>
                                                    <h3>EMBOSSING DETAILS
                                                    </h3>
                                                    <p>
                                                        &nbsp;
                                                    </p>
                                                       <p   align="center">  <asp:Label ID="Label44" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label></p>
 
                                                  <p   align="center">
                                                     <asp:Button ID="ImageButton20" runat="server" OnClick="ImageButton20_Click" Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Uexport.jpg) no-repeat;" />  </p>
                                                    <br>
                                                    <br>
                                                 
                                                    <table align="center" border="1" class="roundedCorners" 
                                                        style="width: 80%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;">
                                                        <tr>
                                                            <td class="style32">
                                                                Film No
                                                            </td>
                                                            <td class="style29">
                                                                Mandrel
                                                            </td>
                                                            <td class="style33">
                                                                Type</td>
                                                            <td class="style33">
                                                                Embossing Circ. Male</td>
                                                            <td class="style35">
                                                                Embossing Circ. Female</td>
                                                            <td class="style35">
                                                                Embossing Diameter
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox1001" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1002" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1003" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1004" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1005" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1006" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
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
                                                                <asp:TextBox ID="TextBox1007" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1008" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1009" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1010" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1011" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1012" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
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
                                                                <asp:TextBox ID="TextBox1013" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1014" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1015" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1016" runat="server" Height="53px" TextMode="MultiLine" 
                                                                      Width="122px"  ></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <br />
                                                
                                                 
                                             
                                       
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
 
                                    <asp:View ID="View26" runat="server">
                                        <table style="width: 100%;  border-color: #666; ">
                                            <tr>
                                                <td>
                                                    <p>
                                                        <strong>DIE DETAILS</strong>
                                                    </p>
                                                    <p>
                                                        &nbsp;
                                                    </p>
                                                      <p   align="center">  <asp:Label ID="Label45" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label></p>
 
                                                   <p   align="center">
                                                     <asp:Button ID="ImageButton21" runat="server" OnClick="ImageButton21_Click" Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Uexport.jpg) no-repeat;" />  </p>
                                                    <br>
                                                   
                                                    <table align="center" border="1" class="roundedCorners" 
                                                        style="width: 80%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;">
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
                                                            <td class="style135">
                                                                <asp:TextBox ID="TextBox2" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1017" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1018" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1019" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1020" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style140">
                                                                <asp:TextBox ID="TextBox1021" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style135">
                                                                Supplier:</td>
                                                            <td class="style29">
                                                                Punch Width:</td>
                                                            <td class="style33">
                                                                Punch Length:</td>
                                                            <td class="style35">
                                                                Comments:</td>
                                                            <td class="style35">
                                                                Layout Makeup Across:</td>
                                                            <td class="style140">
                                                                Layout Makeup Around</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1022" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1023" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1024" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1025" runat="server" Height="60px" TextMode="MultiLine" 
                                                                    Width="122px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1026" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                                <asp:TextBox ID="TextBox1027" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
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
                                                                <asp:TextBox ID="TextBox1028" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1029" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1030" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1031" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1032" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style140">
                                                                <asp:TextBox ID="TextBox1033" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
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
                                                                Chargen No
                                                            </td>
                                                            <td class="style140">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style135">
                                                                <asp:TextBox ID="TextBox1034" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1035" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1036" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1037" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1038" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style140">
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <br>
                                                    <br>
                                                 
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
 
                                    <asp:View ID="View27" runat="server">
                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                        <table style="width: 100%;  border-color: #666; ">
                                            <tr>
                                                <td>
                                                    <strong>OFFLINE PRODUCTION SPECIFICATION<br />
                                                        <br />
                                                      <p   align="center">  <asp:Label ID="Label46" runat="server" Width="400px" ForeColor="White" BackColor="#339966" Visible="False"></asp:Label></p>
                                             
                                                        <p   align="center">
                                                     <asp:Button ID="ImageButton22" runat="server" OnClick="ImageButton22_Click" Height="27px" Width="90px"
                                                                UseSubmitBehavior="false" style="background:url(./Images/Uexport.jpg) no-repeat;"   />  </p>
                                                    <br>
                                                    <br>
                                           
                                                    </strong>
                                                    <table border="1" class="roundedCorners" align="center"
                                                        style="width: 80%; font-size: x-small; font-family: 'Arial Narrow'; font-weight: bold;">
                                                        <tr>
                                                            <td class="style135">Offline Die Ref</td>
                                                            <td class="style29">Packaging Per Pallet</td>
                                                            <td class="style140">Status</td>
                                                            <td class="style33">Geitz Die Ref.No</td>
                                                            <td class="style35">Hot Foil Coverage</td>
                                                            <td class="style35">Blocks Per Sheet</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style135">
                                                                <asp:TextBox ID="TextBox1039" runat="server"   Width="122px"   Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1040" runat="server"   Width="122px"   Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1041" runat="server"   Width="122px"  Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1042" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1043" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style140">
                                                                <asp:TextBox ID="TextBox1044" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style135">Blocks Per Carton</td>
                                                            <td class="style29">Foil Area</td>
                                                            <td class="style33">Foil Square Meter</td>
                                                            <td class="style35">Sheet Length</td>
                                                            <td class="style35">Sheet Width
                                                            </td>
                                                            <td class="style140">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style135">
                                                                <asp:TextBox ID="TextBox1045" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox1046" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox1047" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1048" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox1049" runat="server" Width="122px" Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style140">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                              
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:View>
 
                                </asp:MultiView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Tab9" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab10" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab11" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab12" EventName="click" />
                                 <asp:AsyncPostBackTrigger ControlID="Tab13" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab14" EventName="click" />
                                <asp:AsyncPostBackTrigger ControlID="Tab15" EventName="click" />
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
        function BindEvents() {
            $(function () {
                $('.txtUserName').width(22);
                $('.txtUserName').focus(function () {
                    $(this).animate({
                        width: 250,
                        height: 20
                    }).delay(100)
                });
                $('.txtUserName').blur(function () {
                    $(this).animate({
                        width: 22,
                        height: 20
                    }).delay(100)
                });
            });
        }
        Sys.Application.add_load(BindEvents);
</script>
</body>
</html>