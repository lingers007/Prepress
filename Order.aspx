<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Debug="true"  Inherits="Order" %>





<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Manage Order</title>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js"></script>
<script type="text/javascript">
    $(function () {
        SearchText();
        SearchText1();
        SearchText31();
        SearchText3();
        SearchText32();
    });

    function SearchText() {
        $(".autosuggest").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Order.aspx/GetAutoCompleteData",
                    data: "{ 'searchTerm': '" + request.term + "'}",
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
                        alert(result.responseText);
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
                $('[id*=hfjobid]').val(ui.item.val.split(',')[0]);
                $('[id*=hfjobembid]').val(ui.item.val.split(',')[1]);
                $('[id*=hfdiereferneceno]').val(ui.item.val.split(',')[2]);
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
                    data: "{ 'searchTerm': '" + request.term + "', gietzdieref: '" + $(".autosuggest").val() + "'}",
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
                        alert(result.responseText);
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
            }
        });
    }




    function SearchText31() {
        $(".autosuggest31").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Order.aspx/GetAutoCompleteData31",
                    data: "{ 'searchTerm': '" + request.term + "', embid: '" + $('[id*=hfjobembid]').val() + "'}",
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
                        alert(result.responseText);
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
                $('[id*=hfembossid]').val(ui.item.val);
                $(event.target).autocomplete("close");
                setTimeout(function () {
                    $(event.target).blur();
                });
            },
            minLength: 0
        }).focus(function () {
            $(this).autocomplete("search");
        });
    }
    function SearchText3() {
        $(".autosuggest3").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Order.aspx/GetAutoCompleteData3",
                    data: "{ 'searchTerm': '" + request.term + "', id: '" + $('[id*=hfjobid]').val() + "'}",
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
                        alert(result.responseText);
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
                $('[id*=hfcylinderid]').val(ui.item.val);
                $(event.target).autocomplete("close");
                setTimeout(function () {
                    $(event.target).blur();
                });
            },
            minLength: 0
        }).focus(function () {
            $(this).autocomplete("search");
        });
    }
    function SearchText32() {
        $(".autosuggest32").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Order.aspx/GetAutoCompleteData32",
                    data: "{ 'searchTerm': '" + request.term + "', diereferneceno: '" + $('[id*=hfdiereferneceno]').val() + "'}",
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
                        alert(result.responseText);
                    }
                });
            },
            select: function (event, ui) {
                if (ui.item.val == -1) {
                    return false;
                }
                $('[id*=hfdieid]').val(ui.item.val);
                $(event.target).autocomplete("close");
                setTimeout(function () {
                    $(event.target).blur();
                });
            },
            minLength: 0
        }).focus(function () {
            $(this).autocomplete("search");
        });
    }
    $(function () {
        SearchText2();
    });
    function SearchText2() {
        $(".autosuggest2").autocomplete({
            source: function (request, response) {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Order.aspx/GetAutoCompleteData2",
                    data: "{'Company':'" + document.getElementById('txtSearch5').value + "'}",
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
                $('#pic').text(ui.item.val);
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
            width: 212px;
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
            .style20
            {
                height: 23px;
                width: 311px;
            }
            .style21
            {
                height: 23px;
            }
            .style23
            {
                width: 311px;
            }
            .style27
            {
                height: 24px;
            }
            .style40
            {
                width: 94px;
            }
            .style61
            {
                height: 23px;
                width: 166px;
                font-weight: bold;
            }
            .style72
            {
                width: 166px;
                font-weight: bold;
            }
            table {
  border-collapse: collapse;
}
            .style73
            {
                width: 94px;
                height: 24px;
                font-weight: bold;
            }
            .style74
            {
                height: 24px;
                font-weight: bold;
            }
            .style81
            {
                width: 100%;
                height: 77px;
            }
            .style22
        {
            width: 124px;
        }
            .style109
            {
                width: 859px;
                height: 24px;
            }
            .style112
            {
                width: 262px;
                height: 24px;
                font-weight: bold;
            }
            .style113
            {
                width: 22px;
                height: 24px;
                font-weight: bold;
            }
            .style115
            {
                width: 172px;
                height: 24px;
                font-weight: bold;
            }
            .style117
            {
                height: 24px;
                font-weight: bold;
                width: 56px;
            }
            .style118
            {
                width: 166px;
                height: 24px;
                font-weight: bold;
            }
            .style119
            {
                width: 859px;
                height: 24px;
                font-weight: bold;
            }
            .style120
            {
                width: 1154px;
                height: 24px;
                font-weight: bold;
            }
            .style121
            {
                width: 1154px;
                height: 24px;
            }
        </style>
</head>

<table style="width: 100%;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">
           <img  alt="logo" class="style9" src="Images/capres.gif" /><img  alt="Header Image" src="Images/Continue.jpg" width="1022" height="104" /> </td>
    </tr>
    </table>
<body>
    <form id="form1" runat="server">

   

    <div>
    
       
    
    </div>


  


<table style="width: 100%;">
    <tr>
        <td  class="style14">
            &nbsp;</td>
        <td class="style15">
           <table align="center" border="1px" bordercolor="grey" 
                style="width: 818px; margin-left: 0px;">
        <tr>
            <td align="center" class="style4" 
                
                
                
                style="font-size: large; color: #006699; font-family: Arial; font-weight: bold;">
                
             <div align= "left">
                
               
               
               

               
                
                <table style="width:70%; height: 47px;" align="center">
                    <tr>
                         <td bgcolor="#3366FF" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                Font-Names="Arial"  Text="Receive Order" ForeColor="White"  
                                NavigateUrl="Receive.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>

                            <td bgcolor="Brown" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                                Font-Names="Arial"  Text="Received Order" ForeColor="White"  
                                NavigateUrl="Received.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                       
                       
                         <td bgcolor="#CC0099" class="style22" align="center" >
                           
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
                                Font-Names="Arial"  Text="View Order" ForeColor="White"  
                                NavigateUrl="ViewOrd.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                        <td bgcolor="#00CC99" class="style22" align="center">
                           
                            
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
                                Font-Names="Arial"  Text="Place Order" ForeColor="White"  
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


             
                 <br />











                 <table style="width:100%;border:1;" border="1px" >
                     <tr>
                         <td>
                            <strong>PLACE AN ORDER</strong></td>
                     </tr>
                 </table>











           <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
            
                <table border="1px" 
                    style="border-color: #C0C0C0; width: 100%; margin-top: 0px; font-size: x-small; font-family: 'Arial'; font-weight: bold;">
                    <tr>
                        <td class="style61">
                            Purchase Order 
                            No<br />
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" 
                                ErrorMessage="Enter PO No" Font-Size="XX-Small" ForeColor="Red" 
                                ValidationGroup="groupManageUser"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style20">
                            <asp:TextBox ID="TextBox4" runat="server" Width="644px" Height="40px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>                      <td class="style72">
                            Supplier&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtSearch5" 
                                ErrorMessage="Enter Supplier" Font-Size="XX-Small" ForeColor="Red" 
                                ValidationGroup="groupManageUser"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style23">
                            <asp:TextBox  id="txtSearch5" class="autosuggest2" runat="server" Width="644px" 
                                style="margin-left: 0px" Height="40px"></asp:TextBox>
                            <asp:HiddenField ID="pic" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style61">
                            Order Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" 
                                ErrorMessage="Enter Date" Font-Size="XX-Small" ForeColor="Red" 
                                ValidationGroup="groupManageUser"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style20">
                            <asp:TextBox ID="TextBox6" runat="server" Width="644px" Height="40px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style61">
                            Date Expected&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" 
                                ErrorMessage="Enter Date" Font-Size="XX-Small" ForeColor="Red" 
                                ValidationGroup="groupManageUser"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style20">
                            <asp:TextBox ID="TextBox7" runat="server" Width="644px" Height="40px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style61">
                            Product Code&nbsp;
                            <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSearch" 
                                ErrorMessage="Enter Product Code" Font-Size="XX-Small" ForeColor="Red" 
                                ValidationGroup="groupManageUser"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style20">
                            <asp:TextBox id="txtSearch" class="autosuggest" runat="server" Width="644px" 
                                Height="40px"></asp:TextBox>

                             



                            <asp:HiddenField ID="hfjobid" runat="server" />
                            <asp:HiddenField ID="hfjobembid" runat="server" />
                           <asp:HiddenField ID="hfdiereferneceno" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style61">
                            Model</td>
                        <td class="style20">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" 
                                style="margin-left: 0px" Width="644px" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                AutoPostBack="True" Font-Names="Arial" Font-Bold="True">
                                <asp:ListItem Selected="True" Value="1">Offline Die</asp:ListItem>
                              
                                   <asp:ListItem Value="3">Cylinder</asp:ListItem>
                                    <asp:ListItem Value="4">Cutting Die</asp:ListItem>
                                     <asp:ListItem Value="6">Embossing</asp:ListItem>

                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style118">
                            Requisition Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" 
                                ErrorMessage="Enter Req Code" Font-Size="XX-Small" ForeColor="Red" 
                                ValidationGroup="groupManageUser"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style20">
                            <asp:TextBox ID="TextBox9" runat="server" Width="644px" 
                                ontextchanged="TextBox9_TextChanged" style="margin-left: 0px" 
                                Height="40px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style21" colspan="2" align="center" width="">
                            
                                <asp:Panel ID="Panel1" runat="server" Height="53px" Width="100%">
                                    <table style="border-color: #C0C0C0; width:100%; font-family: 'Arial'; font-size: x-small; font-weight: bold;" 
                                        align="left" border="2px">
                                        <tr>
                                            <td class="style119">
                                                Film No/Ink Code / Reference No</td>
                                            <td class="style120">
                                                Film No</td>
                                            <td class="style73">
                                                Quantity</td>
                                            <td class="style74" align="left">
                                                Requirement</td>
                                        </tr>
                                        <tr>
                                            <td class="style109" >
                                                Gietzdie</td>
                                            <td class="style121" align="center">
                                                <asp:TextBox id="txtSearch1" class="autosuggest1" runat="server" Width="99%" 
                                                    Height="40px"></asp:TextBox> 
                                                    
                                            </td>
                                            <td class="style40">
                                                <asp:TextBox ID="TextBox2" runat="server"  Width="98px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="right" class="style27">
                                                <asp:TextBox ID="TextBox3" runat="server"  Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                    </table>

                                    <br />
                                       <br />
                                     <br /> <br /> <br />
                            <asp:Button ID="Button2" runat="server" Text="Place Order" Width="188px" 
                                        onclick="Button2_Click" />
                
                                    <br />
                                    <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
                
                                </asp:Panel>
                                

                            
                            <asp:Panel ID="Panel3" runat="server" >
                                <table style="border-color: #C0C0C0; font-size: x-small; font-family: 'Arial';" 
                                    align="left" border="2px" class="style81">
                                        <tr>
                                            <td class="style112">
                                                Film No/Ink Code / Reference No</td>
                                            <td class="style113">
                                                S/N </td>
                                            <td class="style115">
                                                Film No</td>
                                            <td class="style117">
                                                Quantity</td>
                                            <td class="style74" align="left" style="font-size: x-small">
                                                Requirement</td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                Cylinder</td>
                                            <td class="style113">
                                                1</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox24"    class="autosuggest3" runat="server" 
                                                    Width="244px" Height="40px" ></asp:TextBox>
                                                   <asp:HiddenField ID="hfcylinderid" runat="server" /> 
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox25" runat="server" Width="66px" Height="40px" ></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox26" runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                2</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox27"    class="autosuggest3" runat="server" 
                                                    Width="244px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox28" runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox29" runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                3</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox46"    class="autosuggest3" runat="server" 
                                                    Width="244px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox47" runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox48"    runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                4</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox49"  class="autosuggest3"  runat="server" Width="244px" 
                                                    Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox50"    runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox51"    runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                5</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox52"  class="autosuggest3"   runat="server" 
                                                    Width="244px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox53"  runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox54"    runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                6</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox55"  class="autosuggest3"  runat="server" Width="244px" 
                                                    Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox56"   runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox57"   runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                7</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox58"  class="autosuggest3"  runat="server" Width="244px" 
                                                    Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox59"    runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox60"    runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                8</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox61" class="autosuggest3"   runat="server" Width="244px" 
                                                    Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox62"   runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox63"    runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                9</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox64"  class="autosuggest3"  runat="server" Width="244px" 
                                                    Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox65"   runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox66"   runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style112">
                                                &nbsp;</td>
                                            <td class="style113">
                                                10</td>
                                            <td class="style115">
                                                <asp:TextBox ID="TextBox67"  class="autosuggest3"   runat="server" 
                                                    Width="244px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td class="style117">
                                                <asp:TextBox ID="TextBox68"      runat="server" Width="66px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="left" class="style74" style="font-size: x-small">
                                                <asp:TextBox ID="TextBox69"  runat="server" Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                    </table>
                                    <br /> <br />
                                    <div style="padding-top: 1px; padding-bottom: 30px; align=left;" >
           
                            <asp:Button ID="Button1" runat="server" Text="Place Order" Width="188px" 
                                            onclick="Button1_Click" />
 <br />
                                        <asp:Label ID="Label1" runat="server" Font-Size="Medium"></asp:Label></div></asp:Panel>


                          <asp:Panel ID="Panel4" runat="server" Height="53px" Width="100%">
                                    <table style="border-color: #C0C0C0; width:100%; font-family: 'Arial'; font-size: x-small; font-weight: bold;" 
                                        align="left" border="2px">
                                        <tr>
                                            <td class="style119">
                                                Film No/Ink Code / Reference No</td>
                                            <td class="style120">
                                                Film No</td>
                                            <td class="style73">
                                                Quantity</td>
                                            <td class="style74" align="left">
                                                Requirement</td>
                                        </tr>
                                        <tr>
                                            <td class="style109" >
                                                Die</td>
                                            <td class="style121" align="center">
                                                <asp:TextBox id="TextBox70" class="autosuggest32" runat="server" Width="99%" 
                                                    Height="40px"></asp:TextBox> 
                                                  <asp:HiddenField ID="hfdieid" runat="server" />  
                                            </td>
                                            <td class="style40">
                                                <asp:TextBox ID="TextBox71" runat="server"  Width="98px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="right" class="style27">
                                                <asp:TextBox ID="TextBox72" runat="server"  Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                    </table>

                                    <br />
                                       <br />
                                     <br /> <br /> <br />
                            <asp:Button ID="Button3" runat="server" Text="Place Order" Width="188px" 
                                        onclick="Button4_Click" />
                
                                </asp:Panel>
                                <asp:Panel ID="Panel5" runat="server" Height="53px" Width="100%">
                                    <table style="border-color: #C0C0C0; width:100%; font-family: 'Arial'; font-size: x-small; font-weight: bold;" 
                                        align="left" border="2px">
                                        <tr>
                                            <td class="style119">
                                                Film No/Ink Code / Reference No</td>
                                            <td class="style120">
                                                Film No</td>
                                            <td class="style73">
                                                Quantity</td>
                                            <td class="style74" align="left">
                                                Requirement</td>
                                        </tr>
                                        <tr>
                                            <td class="style109" >
                                                Embossing</td>
                                            <td class="style121" align="center">
                                                <asp:TextBox id="TextBox73" class="autosuggest31" runat="server" Width="99%" 
                                                    Height="40px"></asp:TextBox> 
                                                 <asp:HiddenField ID="hfembossid" runat="server" 
                                                    />  
                                                  
                                            </td>
                                            <td class="style40">
                                                <asp:TextBox ID="TextBox74" runat="server"  Width="98px" Height="40px"></asp:TextBox>
                                            </td>
                                            <td align="right" class="style27">
                                                <asp:TextBox ID="TextBox75" runat="server"  Width="203px" Height="40px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        
                                    </table>

                                    <br />
                                       <br />
                                     <br /> <br /> <br />
                            <asp:Button ID="Button4" runat="server" Text="Place Order" Width="188px" 
                                        onclick="Button5_Click" />
                
                                </asp:Panel>
                                
                                 <br /> <br /> 
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
                                <br /> <br /> 
                                <br />
                                <br />
                                <br /> <br />

                        </td>
                    </tr>
                </table>
                
                
                </td>
        </tr>
        </table>
        </td>
       
    </tr>
    </table>
   
<script>
    $(function () {
        $("#TextBox15").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd/mm/yy'
});
        $("#TextBox6").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd/mm/yy'
});
        $("#TextBox7").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd/mm/yy'
});
        $("#TextBox20").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd/mm/yy'
});
        $("#TextBox20").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'dd/mm/yy'
});
    });
</script>
    </form>
</body>
    </html>