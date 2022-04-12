<%@ Page Language="C#"  AutoEventWireup="true"  Debug="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
<title>Add Jobs</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
    $(function () {
        $("#TextBox15").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'yy/mm/dd'
});
        $("#TextBox16").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'yy/mm/dd'
});
        $("#TextBox19").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'yy/mm/dd'
});
        $("#TextBox20").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'yy/mm/dd'
});
        $("#TextBox20").datepicker(
{
    changeMonth: true,
    changeYear: true,
    dateFormat: 'yy/mm/dd'
});
    });
</script>
<script type="text/javascript" language="javascript">
    $(document).ready(function () {
        $('.txtUserName').width(35);
        $('.txtUserName').focus(function () {
            $(this).animate({
                width: 250,
                height: 20
            })
.delay(100)
        });
        $('.txtUserName').blur(function () {
            $(this).animate({
                width: 45,
                height: 20
            })
.delay(100)
        });
    });
</script>
    
    <style type="text/css">
        .style6
        {
            width: 1078px;
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
            width: 407px;
        }
        .style20
        {
            width: 750px;
        }
        .style22
        {
            width: 124px;
        }
        .style24
        {
            width: 257px;
        }
        .Initial
        {}
        .style29
        {
            width: 122px;
        }
        .style32
        {
            width: 148px;
        }
        .style33
        {
            width: 138px;
        }
        .style35
        {
            width: 107px;
        }
.style101 {
  border-style: solid;
  border-color: red;
}
        </style>
       <style>
#customers {
  font-family:Candara;
  border-collapse: collapse;
  width: 100%;
font-weight:bold;
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
font-weight:bold;
  }
table.roundedCorners td, 
table.roundedCorners th { 
  border-bottom: 1px solid DarkOrange;
  padding: 4px; 
   border-top: 1px solid #bbb;
  }
  
  
  
  
 table.roundedCorners tr th,
table.roundedCorners tr td {
  border-right: 1px solid #bbb;
  border-bottom: 1px solid #bbb;
  padding: 5px;
}
table.roundedCorners tr th:first-child,
table.roundedCorners tr td:first-child {
  border-left: 1px solid #bbb;
}
  
  
  
  
  
  
  
  
  
  
table.roundedCorners tr:last-child > td {
  border-bottom: none;
}

    .style36
    {
        width: 220px;
    }
    .style37
    {
        width: 1008px;
        height: 117px;
    }
    .style45
    {
        width: 46px;
    }
    .style52
    {
        width: 128px;
    }
    .style64
    {
        width: 99px;
    }
    .style65
    {
        width: 85px;
    }
    .style66
    {
        width: 104px;
    }
    .style68
    {
        width: 21px;
    }
    .style71
    {
        width: 19px;
    }
    .style81
    {
        width: 69px;
    }
    .style84
    {
        width: 2212px;
    }
    .style85
    {
        width: 2212px;
        height: 22px;
    }
    .style86
    {
        width: 46px;
        height: 22px;
    }
    .style87
    {
        width: 69px;
        height: 22px;
    }
    .style88
    {
        height: 22px;
    }
    .style89
    {
        width: 99px;
        height: 22px;
    }
    .style90
    {
        width: 85px;
        height: 22px;
    }
    .style91
    {
        width: 104px;
        height: 22px;
    }
    .style92
    {
        width: 21px;
        height: 22px;
    }
    .style93
    {
        width: 220px;
        height: 22px;
    }
    .style94
    {
        width: 148px;
        height: 22px;
    }
    .style95
    {
        width: 122px;
        height: 22px;
    }
    .style96
    {
        width: 138px;
        height: 22px;
    }
    .style97
    {
        width: 128px;
        height: 22px;
    }
    .style98
    {
        width: 19px;
        height: 22px;
    }
    .style99
    {
        width: 2212px;
        height: 28px;
    }
    .style100
    {
        width: 46px;
        height: 28px;
    }
    .style101
    {
        width: 69px;
        height: 28px;
    }
    .style102
    {
        height: 28px;
    }
    .style103
    {
        width: 99px;
        height: 28px;
    }
    .style104
    {
        width: 85px;
        height: 28px;
    }
    .style105
    {
        width: 104px;
        height: 28px;
    }
    .style106
    {
        width: 21px;
        height: 28px;
    }
    .style107
    {
        width: 220px;
        height: 28px;
    }
    .style108
    {
        width: 148px;
        height: 28px;
    }
    .style109
    {
        width: 122px;
        height: 28px;
    }
    .style110
    {
        width: 138px;
        height: 28px;
    }
    .style111
    {
        width: 128px;
        height: 28px;
    }
    .style112
    {
        width: 19px;
        height: 28px;
    }
    .style113
    {
        width: 35px;
        height: 6px;
    }
    .style114
    {
        width: 24px;
        height: 134px;
    }
    .style116
    {
        width: 45px;
        height: 22px;
    }
    .style125
    {
        width: 178px;
    }
    .style126
    {
        width: 178px;
        height: 22px;
    }
    .style128
    {
        width: 178px;
        height: 28px;
    }
    .style129
    {
        width: 176px;
        height: 28px;
    }
    .style130
    {
        width: 45px;
    }
    .style131
    {
        width: 45px;
        height: 28px;
    }
    .style132
    {
        width: 83px;
    }
    .style133
    {
        width: 83px;
        height: 22px;
    }
    .style134
    {
        width: 83px;
        height: 28px;
    }
    .style135
    {
    }
    .style136
    {
        width: 148px;
        height: 36px;
    }
    .style137
    {
        width: 122px;
        height: 36px;
    }
    .style138
    {
        width: 138px;
        height: 36px;
    }
    .style139
    {
        width: 107px;
        height: 36px;
    }
    .style140
    {
        width: 112px;
    }
    
    .style141
    {
        width: 155px;
    }
    .style142
    {
        width: 146px;
    }
    .style143
    {
        width: 110px;
    }
    
    </style>


</head>

<table style="width: 100%; height: 10px;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">
            &nbsp;
            <img class="style9" src="Images/capres.gif" /><img src="Images/Continue.jpg" width="1022" height="104" /> </td>
    </tr>
    </table>
<body>
    <form id="form1" runat="server">
    <div>
    
       
    
    </div>


  


<table style="width: 100%;">
    <tr>
        <td  class="style143">
            &nbsp;</td>
        <td class="style15">
           <table align="center" border="1px" bordercolor="grey" style="width: 1050px">
        <tr>
            <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Candara; font-weight: bold;">
                
               
               
               

               
                
                <table style="width: 100%; height: 47px;">
                    <tr>
                        <td bgcolor="#3366FF" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Die" ForeColor="White"  
                                NavigateUrl="Die.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                         <td bgcolor="Black" class="style22" align="center" >
                           
                            
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Embossing" ForeColor="White"  
                                NavigateUrl="Embos.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                        <td bgcolor="#009999" class="style22" align="center" >
                         
                            
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Ink" ForeColor="White"  
                                NavigateUrl="Ink.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                         <td bgcolor="#FF9933" class="style22" align="center" >
                         
                            
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Solvent" ForeColor="White"  
                                NavigateUrl="#" Font-Underline="False"></asp:HyperLink>
                            </td>
                         <td bgcolor="#CC0099" class="style22" align="center" >
                           
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Materials" ForeColor="White"  
                                NavigateUrl="Material.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                        <td bgcolor="#00CC99" class="style22" align="center">
                           
                            
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
                                Font-Names="Century Gothic"  Text="Manage Cylinder" ForeColor="White"  
                                NavigateUrl="Cylinder.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                    </tr>
                    </table>











             
                <table style="width: 50%; height: 47px;">
                    <tr>
                        <td class="style24" align="center">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/l1.jpg" 
                                PostBackUrl="JobsV.aspx" height="67px" />
                           <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="Images/l2.jpg" 
                                PostBackUrl="Jobs.aspx" Height="67px" />
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
                
                <table style="width: 100%; height: 164px; color: #000080; background-color: #000099;">
                   <tr>
                                         <td style="border-style: 1; border-color: #003399; background-color: #FFFFFF"  
                                                class="style142" align="left">
                                                <strong>JOB DESCRIPTION </strong></td>
                                            
                                        </tr>
                    <tr>
                        <td class="style5" align="left" colspan="2" style="background-color: #FFFFFF">
                                                          

                           
<table align="center" 
                                                              style="width: 74%;  font-family:"Candara; font-size: small; font-weight: bold; font-style: normal; color: #FF0000;" border="2px">
                    <tr>
                        <td>
                            <asp:Button ID="Tab1" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab1_Click" Text="Job.Desc"
                                Font-Bold="True" Width="80px" Font-Names="Candara" />
                            <asp:Button ID="Tab2" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab2_Click" Text="Material Spec."  Font-Bold="True" 
                                Font-Names="Candara"   />


                            <asp:Button ID="Tab3" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab3_Click" Text="Cylinder.Spec"  Font-Bold="True" 
                                Font-Names="Candara"   />

                          <asp:Button ID="Tab4" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab4_Click" Text="Ink.Spec" Font-Bold="True" Font-Names="Candara"/>
                                 <asp:Button ID="Tab5" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab5_Click" Text="Embossing" Font-Bold="True" Font-Names="Candara"/> 

                                 <asp:Button ID="Tab6" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab6_Click" Text="Cutting / Punch Die." Width="151px" 
                                Font-Bold="True" Font-Names="Candara" />

                                  <asp:Button ID="Tab7" runat="server" BorderStyle="None" CssClass="Initial" 
                                OnClick="Tab7_Click" Text="Offline  Prod. Spec." Width="162px" 
                                Font-Bold="True" Font-Names="Candara" />










                            <asp:MultiView ID="MainView" runat="server">
                                <h3>
                                    &nbsp;</h3>
                                <asp:View ID="View1" runat="server">
                                    <table style="width: 90%; border-width: 1px;Font-Names:Candara ;border-color: #666; border-style: solid;font-weight:bolder;">
                                        <tr>
                                            <td><p style="font-weight: bolder">
                                                   Job Specification</p>
                                                <p>

                                            <p align ="center">
                                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="34px" 
                                                        ImageUrl="Images/submit.jpg" onclick="ImageButton3_Click" Width="142px" />
                                                </p>

                                                <p>
                                                    <asp:Label ID="Label3" runat="server" Font-Size="XX-Small" ForeColor="Red" ></asp:Label>
                                                </p>
                                                
                                                <p>
                                                    <table style="width:100%; font-size: x-small; font-family: Candara; font-weight:bolder;" 
                                                        class="roundedCorners" 
                                                       >
                                                        <tr>
                                                            <td class="style32" 
                                                                >
                                                                <strong>Product Id</strong> </td>
                                                            <td class="style29">
                                                               <strong>Description</strong> </td>
                                                            <td class="style33">
                                                              <strong>Variant</strong>  </td>
                                                            <td class="style35">
                                                             <strong>Country</strong>   </td>
                                                            <td class="style35">
                                                              <strong>Pack</strong>  </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style32">
                                                                <asp:TextBox ID="TextBox7" runat="server" Width="135px"    height="24px"   Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox8" runat="server" Width="135px"  height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox9" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox></td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox10" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox11" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
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
                                                                <asp:TextBox ID="TextBox12" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox13" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox14" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox15" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox16" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
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
                                                                <asp:TextBox ID="TextBox17" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox18" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox19" runat="server" Width="135px" Fheight="24px"  
                                                                    Font-Size="x-Small" Height="24px"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox20" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style35">
                                                                <asp:TextBox ID="TextBox21" runat="server" Width="135px"  height="24px"  Font-Size="x-Small"></asp:TextBox>
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
                                                                <asp:TextBox ID="TextBox22" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style137" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox23" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style138" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox24" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style139" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox25" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                            <td class="style139" style="font-weight: bold; font-family: 'Century Gothic'">
                                                                <asp:TextBox ID="TextBox26" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </p>
                                                <p>
                                                    &nbsp;</p> 
                                                <p>
                                                    &nbsp;</p>
                                                <p>
                                                    <asp:Label ID="Label2"  Visible="false"  runat="server" ></asp:Label>
                                                    <asp:Label ID="Label1" Visible="false"  runat="server"></asp:Label>
                                                    <asp:Label ID="Label8" runat="server" Visible="false"></asp:Label>
                                                </p>
                                                <p>
                                                    &nbsp;</p>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>


                                <asp:View ID="View2" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666;font-family: Candara; font-weight: bold; border-style: solid;font-weight: bolder;">
                                        <tr>
                                            <td>
                                                <p style="font-weight: bold">
                                                    Material Specification</p>
                                                <p>
                                                    &nbsp;</p>
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
                                                            <asp:TextBox ID="TextBox27" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox28" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox29" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox30" runat="server" Width="135px"  height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox31" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style36" style="font-weight: bold; font-family: Candara ;">
                                                            Foil</td>
                                                        <td class="style32" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox32" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style29" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox33" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style33" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox34" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox35" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>
                                                        <td class="style35" style="font-weight: bold; font-family: Candara ;">
                                                            <asp:TextBox ID="TextBox36" runat="server" Width="135px" height="24px"  Font-Size="x-Small"></asp:TextBox>
                                                        </td>


                                                    </tr>
                                                </table>


                                                
                                                        <br />
                                                          <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                          <br />  <br />  <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>





                                <asp:View ID="View3" runat="server">
                                    <table style="border: 1px solid #666; width: 100%; " align="center">
                                        <tr>
                                            <td class="style37">
                                                <h3>
                                                   Cylinder Description</h3>
                                                <p>
                                                    &nbsp;</p>
                                                <h3>
                                                    &nbsp;<table ID="customers" align="center" 
                                                        style="width: 80%; font-size: x-small;font-family: Candara ; font-weight: bold;">
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
                                                                \
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
                                                            <td class="style84">
                                                                Unit 1</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox46" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox47" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox48" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox49" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox50" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox51" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox52" runat="server" class="txtUserName" 
                                                                    Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox53" runat="server" class="txtUserName" Width="49px" 
                                                                    Height="22px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox54" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox55" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox56" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox57" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox58" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox59" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox60" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox61" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox62" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style85">
                                                                Unit 2</td>
                                                            <td class="style86">
                                                                <asp:TextBox ID="TextBox63" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style87">
                                                                <asp:TextBox ID="TextBox64" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style88">
                                                                <asp:TextBox ID="TextBox65" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style89">
                                                                <asp:TextBox ID="TextBox66" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style90">
                                                                <asp:TextBox ID="TextBox67" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style91">
                                                                <asp:TextBox ID="TextBox68" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style92">
                                                                <asp:TextBox ID="TextBox69" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox70" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox71" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox72" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox73" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style93">
                                                                <asp:TextBox ID="TextBox74" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style94" valign="top">
                                                                <asp:TextBox ID="TextBox75" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style95">
                                                                <asp:TextBox ID="TextBox76" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style96">
                                                                <asp:TextBox ID="TextBox77" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style97">
                                                                <asp:TextBox ID="TextBox78" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style98">
                                                                <asp:TextBox ID="TextBox79" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 3</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox80" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox81" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox82" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox83" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox84" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox85" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox86" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox87" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox88" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox89" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox90" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox91" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox92" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox93" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox94" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox95" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox96" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style99">
                                                                Unit 4</td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox97" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox98" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style102">
                                                                <asp:TextBox ID="TextBox99" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style103">
                                                                <asp:TextBox ID="TextBox100" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style104">
                                                                <asp:TextBox ID="TextBox101" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style105">
                                                                <asp:TextBox ID="TextBox102" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style106">
                                                                <asp:TextBox ID="TextBox103" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox104" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox105" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox106" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox107" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox108" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style108" valign="top">
                                                                <asp:TextBox ID="TextBox109" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style109">
                                                                <asp:TextBox ID="TextBox110" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style110">
                                                                <asp:TextBox ID="TextBox111" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style111">
                                                                <asp:TextBox ID="TextBox112" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style112">
                                                                <asp:TextBox ID="TextBox113" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style99">
                                                                Unit 5</td>
                                                            <td class="style100">
                                                                <asp:TextBox ID="TextBox114" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style101">
                                                                <asp:TextBox ID="TextBox115" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style102">
                                                                <asp:TextBox ID="TextBox116" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style103">
                                                                <asp:TextBox ID="TextBox117" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style104">
                                                                <asp:TextBox ID="TextBox118" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style105">
                                                                <asp:TextBox ID="TextBox119" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style106">
                                                                <asp:TextBox ID="TextBox120" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox121" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox122" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox123" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox124" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style107">
                                                                <asp:TextBox ID="TextBox125" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style108" valign="top">
                                                                <asp:TextBox ID="TextBox126" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style109">
                                                                <asp:TextBox ID="TextBox127" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style110">
                                                                <asp:TextBox ID="TextBox128" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style111">
                                                                <asp:TextBox ID="TextBox129" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style112">
                                                                <asp:TextBox ID="TextBox130" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 6</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox131" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox132" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox133" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox134" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox135" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox136" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox137" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox138" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox139" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox140" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox141" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox142" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox143" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox144" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox145" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox146" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox147" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 7</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox148" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox149" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox150" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox151" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox152" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox153" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox154" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox155" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox156" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox157" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox158" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox159" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox160" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox161" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox162" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox163" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox164" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 8</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox165" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox166" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox167" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox168" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox169" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox170" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox171" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox172" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox173" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox174" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox175" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox176" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox177" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox178" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox179" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox180" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox181" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 9</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox182" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox183" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox184" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox185" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox186" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox187" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox188" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox189" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox190" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox191" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox192" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox193" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox194" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox195" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox196" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox197" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox198" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style84">
                                                                Unit 10</td>
                                                            <td class="style45">
                                                                <asp:TextBox ID="TextBox199" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style81">
                                                                <asp:TextBox ID="TextBox200" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TextBox201" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style64">
                                                                <asp:TextBox ID="TextBox202" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style65">
                                                                <asp:TextBox ID="TextBox203" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style66">
                                                                <asp:TextBox ID="TextBox204" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style68">
                                                                <asp:TextBox ID="TextBox205" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox206" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox207" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox208" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox209" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style36">
                                                                <asp:TextBox ID="TextBox210" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style32" valign="top">
                                                                <asp:TextBox ID="TextBox211" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style29">
                                                                <asp:TextBox ID="TextBox212" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style33">
                                                                <asp:TextBox ID="TextBox213" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style52">
                                                                <asp:TextBox ID="TextBox214" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                            </td>
                                                            <td class="style71">
                                                                <asp:TextBox ID="TextBox215" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
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
                                                </h3>
                                            </td>
                                        </tr>
                                    </table>

                                </asp:View>


                                 <asp:View ID="View4" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <h3>
                                                    Ink&nbsp; Details</h3>
                                                <p>
                                                    &nbsp;</p>
                                                <p>
                                                    &nbsp;</p>
                                                <table ID="customers" 
                                                    style="width: 75%; font-size: x-small;font-family: Candara ; font-weight: bold;">
                                                    <tr>
                                                        <td class="style130">
                                                            &nbsp;<img class="style113" src="Images/f1.jpg" /></td>
                                                        <td class="style125" align="center" 
                                                            style="font-weight: bold; font-size: small; font-family: 'Arial Narrow';">
                                                            ink Code</td>
                                                     <td class="style125" align="center" 
                                                            style="font-weight: bold; font-size: small; font-family: 'Arial Narrow';">
                                                            Ink Coverage</td>
                                                        <td align="center" 
                                                            style="font-weight: bold; font-size: small; font-family: 'Arial Narrow';">
                                                            Colour</td>
                                                    <td class="style125" align="center" 
                                                            style="font-weight: bold; font-size: small; font-family: 'Arial Narrow';">
                                                            Ink Gsm</td>
                                                  <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: 'Arial Narrow';">
                                                            Price</td>





                                                          <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: 'Century Gothic';">
                                                            Reducer</td>
                                                          <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: 'Century Gothic';">
                                                            Retarder</td>
                                                          <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: 'Century Gothic';">
                                                           Viscocity</td>



                                                      <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: Candara ;">Mediums</td>
                                                          <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: Candara ;">Toners</td>
                                                         <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: Candara ;">Toner Ratio</td>
                                                       <td class="style125" align="center" style="font-weight: bold; font-size: small; font-family: Candara ;">Additive</td>
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Unit 1</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox216" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox217" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox218" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox219" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox220" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox221" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox222" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox223" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox224" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox225" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox226" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox227" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style116">
                                                            Unit 2</td>
                                                        <td class="style126">
                                                            <asp:TextBox ID="TextBox233" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style87">
                                                            <asp:TextBox ID="TextBox234" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style88">
                                                            <asp:TextBox ID="TextBox235" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style133">
                                                            <asp:TextBox ID="TextBox236" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style90">
                                                            <asp:TextBox ID="TextBox237" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style91">
                                                            <asp:TextBox ID="TextBox238" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style92">
                                                            <asp:TextBox ID="TextBox239" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style93">
                                                            <asp:TextBox ID="TextBox240" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style93">
                                                            <asp:TextBox ID="TextBox241" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style93">
                                                            <asp:TextBox ID="TextBox242" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style93">
                                                            <asp:TextBox ID="TextBox243" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style93">
                                                            <asp:TextBox ID="TextBox244" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Unit 3</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox250" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox251" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox252" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox253" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox254" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox255" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox256" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox257" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox258" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox259" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox260" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox261" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style131">
                                                            Unit 4</td>
                                                        <td class="style128">
                                                            <asp:TextBox ID="TextBox267" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style100">
                                                            <asp:TextBox ID="TextBox268" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style102">
                                                            <asp:TextBox ID="TextBox269" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style134">
                                                            <asp:TextBox ID="TextBox270" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style104">
                                                            <asp:TextBox ID="TextBox271" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style105">
                                                            <asp:TextBox ID="TextBox272" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style106">
                                                            <asp:TextBox ID="TextBox273" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox274" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox275" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox276" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox277" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox278" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style131">
                                                            Unit 5</td>
                                                        <td class="style129">
                                                            <asp:TextBox ID="TextBox284" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style101">
                                                            <asp:TextBox ID="TextBox285" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style102">
                                                            <asp:TextBox ID="TextBox286" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style134">
                                                            <asp:TextBox ID="TextBox287" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style104">
                                                            <asp:TextBox ID="TextBox288" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style105">
                                                            <asp:TextBox ID="TextBox289" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style106">
                                                            <asp:TextBox ID="TextBox290" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox291" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox292" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox293" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox294" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style107">
                                                            <asp:TextBox ID="TextBox295" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Unit 6</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox301" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox302" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox303" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox304" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox305" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox306" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox307" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox308" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox309" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox310" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox311" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox312" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Unit 7</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox318" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox319" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox320" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox321" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox322" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox323" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox324" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox325" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox326" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox327" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox328" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox329" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Unit 8</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox335" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox336" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox337" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox338" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox339" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox340" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox341" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox342" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox343" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox344" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox345" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox346" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Unit 9</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox352" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox353" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox354" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox355" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox356" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox357" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox358" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox359" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox360" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox361" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox362" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox363" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Unit 10</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox369" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox370" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox371" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox372" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox373" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox374" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox375" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox376" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox377" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox378" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox379" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox380" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style130">
                                                            Nitrogen</td>
                                                        <td class="style125">
                                                            <asp:TextBox ID="TextBox381" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style81">
                                                            <asp:TextBox ID="TextBox382" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox383" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style132">
                                                            <asp:TextBox ID="TextBox384" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style65">
                                                            <asp:TextBox ID="TextBox385" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style66">
                                                            <asp:TextBox ID="TextBox386" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style68">
                                                            <asp:TextBox ID="TextBox387" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox388" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox389" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox390" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox391" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                        <td class="style36">
                                                            <asp:TextBox ID="TextBox392" runat="server" class="txtUserName" Width="49px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>

                                 <asp:View ID="View5" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <h3>
                                                    EMBOSSING DETAILS
                                                </h3>
                                                <p>
                                                    &nbsp;</p>
                                                <table border="1" class="roundedCorners" 
                                                    
                                                    
                                                    style="width:91%; font-size: x-small; font-family: Candara ; font-weight: bold;">
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
                                                            <asp:TextBox ID="TextBox393" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox394" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox395" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox419" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox396" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox397" runat="server" Width="135px"></asp:TextBox>
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
                                                            <asp:TextBox ID="TextBox398" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox399" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox400" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox420" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox401" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox402" runat="server" Width="135px"></asp:TextBox>
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
           
                                                            <asp:TextBox ID="TextBox403" runat="server" Width="135px"></asp:TextBox>
                                                            
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
                                                            <asp:TextBox ID="TextBox404" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
                                                            <asp:TextBox ID="TextBox405" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td style="padding-top: 0px; padding-bottom: 30px; align=left;">
                                                            <asp:TextBox ID="TextBox421" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox406" runat="server" Height="53px" 
                                                                 TextMode="MultiLine" Width="181px"></asp:TextBox>
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
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <p>
                                                    <strong>DIE DETAILS</strong></p>
                                                <p>
                                                    &nbsp;</p>
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
                                                                Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29"><asp:TextBox ID="TextBox408" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33"> <asp:TextBox ID="TextBox409" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox410" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35"><asp:TextBox ID="TextBox411" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style140"><asp:TextBox ID="TextBox412" runat="server" Width="135px"></asp:TextBox>
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
           
                                                            <asp:TextBox ID="TextBox413" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                     <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox414" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                  <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox415" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                      <td  >
           
                                                            <asp:TextBox ID="TextBox416" runat="server" Height="60px" TextMode="MultiLine" 
                                                                Width="135px" ></asp:TextBox>
                                                        </td>
                                                      <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox417" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                <td style="padding-top: 0px; padding-bottom: 30px; align=left;" >
           
                                                            <asp:TextBox ID="TextBox418" runat="server" Width="135px" 
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
                                                            <asp:TextBox ID="TextBox422" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox423" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox424" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox425" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox426" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            <asp:TextBox ID="TextBox427" runat="server" Width="135px"></asp:TextBox>
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
                                                            <asp:TextBox ID="TextBox428" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox429" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox430" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox431" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox432" runat="server" Width="135px" ></asp:TextBox>
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
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                            <td>
                                                <strong>OFFLINE PRODUCTION SPECIFICATION<br />   
                                                <br />
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
                                                            <asp:TextBox ID="TextBox445" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox446" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox447" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox448" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox449" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style140">
                                                            <asp:TextBox ID="TextBox450" runat="server" Width="135px"></asp:TextBox>
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
                                                            <asp:TextBox ID="TextBox451" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style29">
                                                            <asp:TextBox ID="TextBox452" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style33">
                                                            <asp:TextBox ID="TextBox453" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox454" runat="server" Width="135px"></asp:TextBox>
                                                        </td>
                                                        <td class="style35">
                                                            <asp:TextBox ID="TextBox455" runat="server" Width="135px"></asp:TextBox>
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
                        </td>
                    </tr>
                </table>
                               
                                                    <asp:Label ID="Label007" runat="server"></asp:Label>
                               
                         
                               
                          
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
        <td>
      
        </td>
    </tr>
    </table>


    </form>
</body>
    </html>




    