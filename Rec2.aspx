<%@ Page Language="C#" AutoEventWireup="true"  Debug="true"  CodeFile="Rec2.aspx.cs" Inherits="Rec2" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>RECEIVE ORDER</title>



<script>
    $(function () {
        $("[id*=txtdate]").datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd/mm/yy'
        });
    });
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
            width: 171px;
        }
        .style20
        {
            width: 750px;
        }
        .style23
        {
            width: 20px;
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
        width: 173px;
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

<table style="width: 100%; height: 10px;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">
           
            <img  alt="logo" class="style9" src="Images/capres.gif" /><img  alt="Header Image" src="Images/Continue.jpg" width="1022" height="104" />
             </td>
    </tr>
    </table>
<body>
    <form id="form1" runat="server">
 

  

<table style="width: 100%;">
    <tr>
        <td class="style23">&nbsp;</td>
        <td class="style15">
            <table class="display" align="center" border="1px" bordercolor="grey" style="width: 1300px">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">


                      
                
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







             
                 <table style="width: 50%; height: 47px;" align="right">
                    <tr>
                        <td class="style141" align="right"> 
                             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Home.aspx">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton2" runat="server" 
                                onclick="LinkButton2_Click">Logout</asp:LinkButton>
                            
                        </td>
                        
                        
                    </tr>
                </table>
              
                        <table id="customGrid" class="display" style="width:1300px; height: 164px; color: #000080; background-color: #000099;">
                            <tr>
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 100%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style142" align="center">
                                                <strong>RECEIVE THIS&nbsp; ORDER</strong></td>
                                            <td>&nbsp;</td>
                                            <td align="right">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5" align="center" style="background-color: #FFFFFF">
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/tag-it/2.0/css/jquery.tagit.min.css" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/tag-it/2.0/css/tagit.ui-zendesk.css" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tag-it/2.0/js/tag-it.min.js"></script>
                                  
<script type="text/javascript">
   $(function () {
        $.ajax({
            url: "<%=ResolveUrl("Rec2.aspx/GetCustomers")%>",
            data: "{}",
            dataType: "json",
            type: "POST",
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                var sampleTags = [];
                $.each(data.d, function (i, item) {
                    sampleTags.push(item);
                });
                $(".myTags").tagit({
                    availableTags: sampleTags
                });
            },
 
            error: function (response) {
                alert(response.responseText);
            },
            failure: function (response) {
                alert(response.responseText);
            }
        });
    });
    $(document).on('click', '[id*=btnSave]', function () {
        var ids = [];
        $.each($('[id*=GridView1] tr:has(td)'), function () {
            var currentIds = [];
            $.each($(this).find('.tagit-choice'), function () {
                currentIds.push($(this).find('input[type=hidden]').val());
            });
            ids.push(currentIds.join(','));
        });
        $('[id*=hfCustomerIds]').val(ids.join('|'));
    });
</script> 


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Names="Candara" Width="1300px" OnRowDataBound="OnRowCreated">
    <Columns>
        <asp:BoundField DataField="orderid" HeaderText="id" ItemStyle-Width="30" />
          <asp:BoundField DataField="posino" HeaderText="posino" ItemStyle-Width="150" />
        <asp:BoundField DataField="purchaseorderno" HeaderText="PO NO" ItemStyle-Width="100" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
        <asp:TemplateField HeaderText="Date">
            <ItemTemplate>
                <div align="center">
                    <asp:TextBox ID="txtdate" runat="server" Height="38" Width="120" Text='<%# DateTime.Now.ToString("dd/MM/yyyy") %>'></asp:TextBox>
                </div>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Waybill">
            <ItemTemplate>
                <asp:TextBox ID="txtwaybill" runat="server" Width="100" Height="38"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Comment">
            <ItemTemplate>
                <asp:TextBox ID="txtcomment" runat="server" Width="100" Height="38"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Quantity Been Recieved">
            <ItemTemplate>
                <asp:TextBox ID="txtcomment1" runat="server" Width="100" Height="38"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Baseno" ItemStyle-Width="200" ItemStyle-Height="38">
            <ItemTemplate>
                <ul id="myTags" class="myTags">
                </ul>
                <asp:HiddenField ID="hfIds" runat="server" />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:HiddenField ID="hfCustomerIds" runat="server" /><br /><br />
<asp:Button ID="btnSave" Text="Receive Now"  runat="server" OnClick="OnUpdate"   Height="57px" Width="160px"/>



 <br />
                                    <br />
 <asp:Label ID="lblRecord" runat="server"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" ></asp:Label>
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
                                </td>
                                
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td></td>
    </tr>
</table>

    </form>

  
</body>
</html>
