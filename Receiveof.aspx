<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receiveof.aspx.cs" Inherits="Receiveof" %>



     


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>RECEIVE ORDER</title>

 





    
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
  font-family: Arial Narrow;
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
    
    
    
    </style>

    <table style="width: 100%; height: 10px;" bgcolor="DarkOrange" frame="void">
    <tr>
        <td class="style6">
            
            <img  alt="logo" class="style9" src="Images/capres.gif" /><img  alt="Header Image" src="Images/Continue.jpg" width="1022" height="104" /> </td>
    </tr>
    </table>
</head>


<body>
    <form id="form1" runat="server">
 

  

<table style="width: 100%;">
    <tr>
        <td class="style15" align="center">
            <table class="display" align="center" border="1px" bordercolor="grey" style="width: 1050px">
                <tr>
                    <td align="center" class="style20" style="font-size: large; color: #006699; font-family: Arial Narrow; font-weight: bold;">


                      
                <table style="width:70%; height: 47px;" align="center">
                    <tr>
                        <td bgcolor="#3366FF" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"  Text="Receive Order" ForeColor="White"  
                                NavigateUrl="Receive.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>

                            <td bgcolor="Brown" class="style22" align="center">
                          
                           
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"  Text="Received Order" ForeColor="White"  
                                NavigateUrl="Received.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                       
                       
                         <td bgcolor="#CC0099" class="style22" align="center" >
                           
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"  Text="View Order" ForeColor="White"  
                                NavigateUrl="ViewOrd.aspx" Font-Underline="False"></asp:HyperLink>
                            </td>
                        <td bgcolor="#00CC99" class="style22" align="center">
                           
                            
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
                                Font-Names="Arial Narrow"  Text="Place Order" ForeColor="White"  
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
              
                        <table id="customGrid" class="display" style="width:100%; height: 164px; color: #000080; background-color: #000099;">
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
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/rec.jpg" 
                                        onclick="ImageButton1_Click" />
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                        Font-Names="Arial Narrow" Font-Size="13px" DataKeyNames="orderid"
                                        Width="100%" Style="margin-bottom: 0px" CssClass="grid">
                                        <Columns>
                                                   
                                             <asp:BoundField DataField="orderid" HeaderText=" ID"  itemstyle-horizontalalign="Center"/> 
                                                              
                                          <asp:BoundField DataField="purchaseorderno" HeaderText=" PO Number"  itemstyle-horizontalalign="Center"/>
                                            <asp:BoundField DataField="requisitioncode" HeaderText="Requisition Code" itemstyle-horizontalalign="Center"/>
                                           <asp:BoundField DataField="gietzdieref" HeaderText="Film /Model No/Ink Code" itemstyle-horizontalalign="Center"/>
                                           <asp:BoundField DataField="pid" HeaderText="Product Code" itemstyle-horizontalalign="Center"/>
                                           <asp:BoundField DataField="description" HeaderText="Description" itemstyle-horizontalalign="Center"/>



                                            <asp:BoundField DataField="dateordered" HeaderText="Date Ordered" itemstyle-horizontalalign="Center"  />
                                            <asp:BoundField DataField="dateexpected" HeaderText="Date Expected"  itemstyle-horizontalalign="Center" />

                                              <asp:BoundField DataField="quantity" HeaderText="Quantity"   itemstyle-horizontalalign="Center" />
                                                <asp:BoundField DataField="qtyreceived" HeaderText="Quantity Received"   itemstyle-horizontalalign="Center" />

                                             
                                            <asp:BoundField DataField="supplier" HeaderText="Supplier"   itemstyle-horizontalalign="Center"/>
         
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
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;
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
