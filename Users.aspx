<%@ Page Language="C#" AutoEventWireup="true"  debug="true"     CodeFile="Users.aspx.cs" Inherits="Users" %>






<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
<title>Manage Users</title>
   
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
            url: "Users.aspx/GetCustomers",
            data: '{pageIndex: ' + pageIndex + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('[id$=gvDetails]').prepend($("<thead></thead>").append($('[id$=gvDetails]').find("tr:first"))).DataTable().destroy();
                var xmlDoc = $.parseXML(response.d);
                var xml = $(xmlDoc);
                var customers = xml.find("usertracking");
                var row = $("[id$=gvDetails] tbody tr:last-child").eq(0).clone(true);
                $("[id$=gvDetails] tbody tr").not($("[id$=gvDetails] tbody tr:first-child")).remove();
                $.each(customers, function () {
                    $("td", row).eq(0).html($(this).find("id").text());
                    $("td", row).eq(1).html($(this).find("username").text());
                    $("td", row).eq(2).html($(this).find("loggedin").text());
                    $("td", row).eq(3).html($(this).find("loggedout").text());


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
      
        </style>
       <style>
#customers {
  font-family:Candara;
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
  font-family: Candara;
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

    .style52
    {
        width: 228px;
    }
    .style140
    {
        width: 112px;
    }
    
    .Initial
    {}
    
    .style141
    {
        width: 175px;
    }
    .style143
    {
        width: 118px;
    }
        
    .style145
    {
        width: 418px;
    }
    
    .style146
    {
        width: 10px;
    }
    
    .style147
    {
        width: 111px;
    }
    .style148
    {
        width: 105px;
    }
    
    </style>



    <style type="text/css">
    body {
        font-family: Century Gothic;
        font-size: 12px;
    }
 
    .Pager span {
        text-align: center;
        color: #999;
        display: inline-block;
        width: 40px;
        background-color: #A1DCF2;
        margin-right: 3px;
        line-height: 150%;
        border: 1px solid #3AC0F2;
    }
 
    .Pager a {
        text-align: center;
        display: inline-block;
        width: 40px;
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

  

<table style="width: 100%; border-color :Black;">
    <tr>
        <td class="style23">&nbsp;</td>
        <td class="style15">
            <table class="display" align="center"  bordercolor="black" style="width: 1050px">
                <tr>
                    <td align="center" class="style20" 
                        style="border-color: #000000; font-size: large; color: #000000; font-family: Centhury Gothic; font-weight: bold;">


                      
                
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
                            style="width: 100%;  border-color: black; height: 164px; color: #000080; background-color: black; margin-right: 0px;">
                            <tr>
                                <td style="border-style: 1; border-color: black; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 75%; height: 25px; margin-left: 0px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: black; background-color: #FFFFFF"  
                                                class="style52" align="left">
                                                <strong style="font-family: 'Century Gothic'">MANAGE USERS</strong></td>
                                            <td>&nbsp;</td>
                                            <td align="right">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>

                            
                                <td class="style140" align="left" style="background-color: #FFFFFF">
                                  <table align="center" style="width: 75%;  font-family:Century Gothic; font-size: small; font-weight: bold; font-style: normal; color: 
                                        #FF0000;" border="2px">
                    <tr>
                        <td>
                            <asp:Button ID="Tab1" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab1_Click" Text="Add Users"
                                Font-Bold="True" Width="247px" Font-Names="Century Gothic" 
                                Font-Size="Large" Height="45px" />
                            <asp:Button ID="Tab2" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab2_Click" Text="Manage Users"  Font-Bold="True" 
                                Font-Names="Century Gothic" Font-Size="Large" Width="253px" 
                                Height="45px"   />


                            <asp:Button ID="Tab3" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab3_Click" Text="User Tracking"  Font-Bold="True" 
                                Font-Names="Century Gothic" Font-Size="Large" Width="255px" 
                                Height="45px"   />

                         










                            <asp:MultiView ID="MainView" runat="server">
                               
                                <asp:View ID="View1" runat="server">

                                 <br />
                                      <strong style="font-weight: bold; font-family: 'Century Gothic'; font-size: large; color: #000000">Add Users</strong> 
                                   <br /> 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                                    <br />
                                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                        ControlToValidate="TextBox1" 
                                        Display="Dynamic" ErrorMessage="Enter Username" 
                                                                        Font-Size="X-Small" ForeColor="#FF3300" 
                                        ValidationGroup="groupManageUser"></asp:RequiredFieldValidator><br />
                                    <table align="center" style="width: 94%;">
                                        <tr>
                                            <td align="center" class="style148">
                                                Username</td>
                                            <td class="style143">
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
                                            <td align="center" class="style141">
                                                Password</td>
                                            <td class="style147">
                                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                                                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Password required" 
                                                    Font-Size="X-Small" ForeColor="#FF3300" ValidationGroup="groupManageUser">
                                                                    </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="style148">
                                                Privilege</td>
                                            <td class="style143">
                                                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="174px">
                                                    <asp:ListItem >Add User</asp:ListItem>
                                                    <asp:ListItem value="1">Super Administrator</asp:ListItem>
                                                    <asp:ListItem value="2">Order Managers</asp:ListItem>
                                                    <asp:ListItem value="3">User</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td align="center" class="style141">
                                                Re-Enter Password</td>
                                            <td class="style147">
                                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                                                    ControlToCompare="TextBox6" ControlToValidate="TextBox3" Display="Dynamic" 
                                                    ErrorMessage="Password Mismatch" Font-Size="X-Small" ForeColor="#FF3300" 
                                                    ValidationGroup="groupManageUser"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style148">
                                                &nbsp;</td>
                                            <td class="style143">
                                                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                                    ControlToValidate="DropDownList1" Display="Dynamic" 
                                                    ErrorMessage="Enter Privillege" Font-Size="X-Small" ForeColor="Red" 
                                                    Operator="NotEqual" ValidationGroup="groupManageUser" ValueToCompare="Add User"></asp:CompareValidator>
                                            </td>
                                            <td class="style141">
                                                &nbsp;</td>
                                            <td class="style147">
                                                &nbsp;</td>
                                            <td class="style152">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                <asp:Button ID="Button6" runat="server" Font-Bold="True" Height="35px"
                                                                    Text="Add User(s)" Width="149px" ValidationGroup="groupManageUser" onclick="Button6_Click"  />
                                                        <br />
                                                        <br />
                                                        <br />
<br />
                                                       <br />
                                                        <br />
                                                        <br />
   <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
<br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
 
                                                    </asp:View>
                                <asp:View ID="View2" runat="server">
                                  <strong style="font-weight: bold; font-family: 'Century Gothic'; font-size: large; color: #000000">Manage Users</strong> 
                                        
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <table style="width:55%;">
                                        <tr>
                                            <td class="style145">
                                                <asp:GridView ID="gvDetails0" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="White" BorderColor="black" BorderStyle="None" CssClass="grid" 
                                                    DataKeyNames="id" Font-Names="Ariel Narrow" Font-Size="13px" 
                                                    Style="margin-bottom: 0px" Width="100%" Height="113px">
                                                    <Columns>
                                                        <asp:BoundField DataField="id" HeaderText="S/N" />
                                                        <asp:BoundField DataField="username" HeaderText="Username" />
                                                        <asp:BoundField DataField="privilege" HeaderText="Privilege" />
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:Button ID="Inkview" runat="server"  BackColor="orange"   Style="border-radius: 6px" ForeColor="white" 
                                                                    OnClick="Inkview_Click" Text="Delete" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                    <HeaderStyle BackColor="orange" Font-Bold="True" ForeColor="white" />
                                                        <PagerStyle BackColor="#99CCCC" ForeColor="black" HorizontalAlign="Left" />
                                                        <RowStyle BackColor="White" ForeColor="BLACK" />
                                                        <SelectedRowStyle BackColor="black" Font-Bold="True" ForeColor="#CCFF99" />
                                                        <SortedAscendingCellStyle BackColor="black" />
                                                        <SortedAscendingHeaderStyle BackColor="black" />
                                                        <SortedDescendingCellStyle BackColor="black"/>
                                                        <SortedDescendingHeaderStyle BackColor="black" />
                                            </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                      <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
<br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </asp:View>


                               
                                

                                 <asp:View ID="View3" runat="server">
                                    <br />
                               <strong style="font-weight: bold; font-family: candara; font-size: large; color: #000000">User Tracking</strong> 
                                
                                      <br />
                                    <br />
                                    <br />   
                                    <table style="width:100%;">
                                        <tr>
                                               
                                            <td align="left">
                                                



                                                
                                                <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="White" BorderColor="black" BorderStyle="None" CssClass="grid" 
                                                    DataKeyNames="id" Font-Names="Ariel Narrow" Font-Size="13px" 
                                                    Style="margin-bottom: 0px" Width="87%" Height="103px">
                                                    <Columns>
                                                        <asp:BoundField DataField="id" HeaderText="S/N" />
                                                        <asp:BoundField DataField="username" HeaderText="Username" />
                                                        <asp:BoundField DataField="loggedin" HeaderText="Loggedin" />
                                                        <asp:BoundField DataField="loggedout" HeaderText="Loggedout" />
                                                     
                                                            
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


                                                
                                                <br /><br />
                                                <br /><br />
                                                



                                                
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                   
                                   
                                    
                                </asp:View>

                            </asp:MultiView>
                        </td>
                    </tr>
                </table>

                                    
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td class="style146"></td>
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
