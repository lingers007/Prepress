<%@ Page Language="C#" AutoEventWireup="true"     debug="true"   CodeFile="Received2.aspx.cs" Inherits="Received2" %>







<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>RECEIVED ORDER</title>
    
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
                    url: "Order.aspx/GetAutoCompleteData",
                    data: "{'pid':'" + request.term + "'}",
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
                $('#lblUserId').text(ui.item.val);
            }
        });
    }

    $(function () {
        SearchText1();
    });
    function SearchText1() {
        $(".autosuggest1").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Order.aspx/GetAutoCompleteData1",
                    data: "{'dieno':'" + request.term + "'}",
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
                $('#lblUserId').text(ui.item.val);
            }
        });
    }

    $(function () {
        SearchText5();
    });
    function SearchText5() {
        $(".autosuggest2").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Order.aspx/GetAutoCompleteData2",
                    data: "{'Company':'" + request.term + "'}",
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
                $('#lblUserId').text(ui.item.val);
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
        .style9
        {
            width: 104px;
            height: 104px;
        }
        .style14
        {
            width: 277px;
        }
        .style15
        {
            width: 208px;
        }
        </style>

        <style type="text/css">
.Initial
{
  display: block;
  padding: 4px 18px 4px 18px;
  float: left;
  
  color: Black;
  font-weight: bold;
}
.Initial:hover
{
  color: White;
  
}
.Clicked
{
  float: left;
  display: block;
  padding: 4px 18px 4px 18px;
  color: Black;
  font-weight: bold;
  color: White;
}
            table {
  border-collapse: collapse;
}
            .style22
        {
            width: 124px;
        }
            .style23
            {
                width: 306px;
                font-weight: 700;
            }
            .style24
            {
                width: 306px;
                font-weight: bold;
            }
            .style25
            {
            }
            </style>
</head>

<table style="width: 100%;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">
            &nbsp;
           <img  alt="logo" class="style9" src="Images/capres.gif" /><img  alt="Header Image" src="Images/Continue.jpg" width="1022" height="104" /> </td>
    </tr>
    </table>
<body>
    <form id="form1" runat="server">

   

    <div>
    
       
    
    </div>


  


<table style="width: 100%;" border="1">
    <tr>
        <td  class="style14">
            &nbsp;</td>
        <td class="style15">
           <table align="center" border="1px" bordercolor="grey" 
                style="width: 818px; margin-left: 0px;">
        <tr>
            <td align="center" class="style4" 
                
                
                
                style="font-size: large; color: #006699; font-family: Century Gothic; font-weight: bold;">
                
             <div align= "left">
                
               
               
               

               
                
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











             
                 <br />











                 











                 <table style="width:100%;"  border="1">
                     <tr>
                         <td>
                             <table style="width:100%;">
                     <tr>
                         <td class="style25">
                              <strong>REJECT THIS ORDER</strong></td>
                         <td align="right">
                             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Home.aspx" 
                                 Font-Bold="True">Home</asp:LinkButton> |<asp:LinkButton ID="LinkButton2" runat="server" 
                                onclick="LinkButton2_Click" Font-Bold="True">Logout</asp:LinkButton>
                     </tr>
                 </table></td>
                     </tr>
                     <tr>
                         <td>
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                             <br />
                 <table align="center" style="width: 56%; height: 71px;" border="1">
                     <tr>
                         <td align="center" class="style24">
                             Quantity Been Rejected</td>
                         <td align="center">
                             <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="style23" align="center">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                             Base No/Assest Code&nbsp;</td>
                         <td align="center">
                             <asp:TextBox ID="TextBox2" runat="server" Enabled="False" 
                                 style="margin-left: 0px" Width="203px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="style23" align="center">
                             &nbsp;</td>
                         <td align="center">
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="style23">
                             &nbsp;</td>
                         <td align="center">
                             <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                                 onclick="Button1_Click" Text="Reject Item" Width="137px" />
                         </td>
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
                                    <asp:Label ID="Label1" runat="server" ></asp:Label>
                             <br />
                             <br />
                         </td>
                     </tr>
                 </table>
               
                </div>
            
                
                </td>
        </tr>
    </table>
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
    </table>
     
    </form>
</body>
    </html>