<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receive.aspx.cs" Inherits="Receive" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>RECEIVE ORDER	</title>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" type="text/css"/>
    <link href="http://code.jquery.com/ui/1.11.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript">


    $(function () {
        SearchText();


    });
    function SearchText() {
        $(".autosuggest").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "  Receive.aspx/GetAutoCompleteData",
                    data: "{ 'purchaseorderno': '" + request.term + "'}",
                    dataType: "json",
                    success: function (data) {
                        if (data.d.length > 0) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('/')[0],
                                    val: item.split('/')[1]
                                }
                            }));
                        }
                        else {
                            response([{ label: 'No Records Found', val: -1}]);
                        }
                    },
                    error: function (result) {
                        alert("Error");
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
                $('[id*=hfPId]').val(ui.item.val);
            }
        });
    }



    $(function () {

        SearchText2();

    });
    function SearchText2() {
        $(".autosuggest1").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "  Receive.aspx/GetAutoCompleteData1",
                    data: "{ 'requisitioncode': '" + request.term + "'}",
                    dataType: "json",
                    success: function (data) {
                        if (data.d.length > 0) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('/')[0],
                                    val: item.split('/')[1]
                                }
                            }));
                        }
                        else {
                            response([{ label: 'No Records Found', val: -1}]);
                        }
                    },
                    error: function (result) {
                        alert("Error");
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
                $('[id*=hfPId0]').val(ui.item.val);
            }
        });
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
            width: 145px;
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
        width: 373px;
    }
    
    
    
    .style143
    {
        height: 3px;
        width: 122px;
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
 

  

<table style="width: 100%;">
    <tr>
        <td class="style15">
            <table class="display" align="center" border="1px" bordercolor="grey" style="width: 1050px">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">


                      
                
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
              
                        <table id="customGrid" class="display" 
                            style="width: 100%; height: 164px; color: #000080; background-color: #000099;" 
                            align="center">
                            <tr>
                                <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  class="style140" align="center">
                                    


                                    <table style="width: 100%; height: 25px;">
                                        <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style143" align="center">
                                                <strong>RECEIVE ORDER</strong></td>
                                            <td>&nbsp;</td>
                                            <td align="right">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5" align="left" style="background-color: #FFFFFF">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                  
                                    <table style="width:100%;" border="1">
                                        <tr>
                                            <td align="center">
                                                <strong> Search by Purchase Order No</strong></td>
                                            <td  align="center">
                                               <strong>  Search by Requisition Code:</strong></td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                            <asp:HiddenField ID="hfPId" runat="server" />
                                                <asp:TextBox  id="txtSearch" class="autosuggest" runat="server" Width="192px"></asp:TextBox>
                                            </td>
                                            <td align="center">
                            <asp:HiddenField ID="PId" runat="server" />
                                                <asp:TextBox id="txtSearch2" class="autosuggest1" runat="server" Width="192px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:Button ID="Button1" runat="server" BackColor="#FF9933" Font-Bold="True" 
                                                    Font-Names="Century Gothic" ForeColor="White" onclick="Button1_Click" 
                                                    Text="Search" Width="148px" Height="38px" />
                                            </td>
                                            <td align="center">
                                                &nbsp;
                                                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#FF9933" 
                                                    Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" 
                                                    onclick="Button2_Click" Text="Search" Width="148px" Height="35px" />
                                            </td>
                                        </tr>
                                    </table>
                                  
                                    <table style="width:100%;">
                                        <tr>
                                            <td class="style142">
                                                <asp:Label ID="Label2" runat="server"  Width="356px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server"  Width="356px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style142">
                                                <asp:Label ID="Label4" runat="server"  Width="356px"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style142">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                  
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

  
</body>
</html>
