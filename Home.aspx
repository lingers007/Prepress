<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Prepress Management System</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>

<body>
 <form id="form1" runat="server">
    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
               <img src="images/arpack1.gif" width="200" height="142">
            </div>

            <ul class="list-unstyled components">
                
                 <li>
                    <a href="Home.aspx">Home </a>
                </li>
                 <li>
                    <a href="JobsV.aspx">Manage Jobs</a>
                </li>
                 <li>
                    <a href="Order11.aspx">Manage Orders</a>
                </li>
                <li>
                    <a href="UseableCyl.aspx">Tools Stocks</a>
                </li>
               <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Tool Consumption</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="Issue.aspx">Issue Sheet</a>
                        </li>
                        <li>
                            <a href="Issue1.aspx">Tools Consumption</a>
                        </li>
                       
                        </li>
                        <li>
                            <a href="AssetH.aspx">Assets History</a>
                        </li>
                      
                        
                    </ul>
                </li>
               
                <li>
                    <a href="Assets.aspx">Assets</a>
                </li>
                <li>
                    <a href="StockList.aspx">Packaging List</a>
                </li>
                
                <li>
                    <a href="Users.aspx">Users</a>
                </li>
                <li>
                    <a href="Setting.aspx">Settings</a>
                </li>
                
              
                <li>
                   <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton2_Click">Logout</asp:LinkButton>
                </li>
               
            </ul>

            
        </nav> 

        <!-- Page Content  -->
        <div id="content" >

            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color:#FF0000">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>   Home  </span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                          
                            <li class="nav-item">
                                <a class="nav-link" href="JobsV.aspx">Jobs</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Order11.aspx">Orders</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="UseableCyl.aspx">Tools Stocks</a>
                            </li>
                                      <li class="nav-item">
                                <a class="nav-link" href="Issue1.aspx">Tools Consumption</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Assets.aspx">Assets</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="StockList.aspx">Packaging List</a>
                            </li>
                                     <li class="nav-item">
                                <a class="nav-link" href="Setting.aspx">Settings</a>
                                 <li class="nav-item">
                                <a class="nav-link" href="Users.aspx">Users</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </nav>

          <table align="center" border="1px" bordercolor="grey" style="width: 718px">
        <tr>
            <td align="center" class="style4" 
                
                
                
                style="font-size: large; color: #006699; font-family: Cambria; font-weight: bold;">
                
                <table style="width: 100%; height: 7px; color: #000080; background-color: #000099;">
                    <tr>
                        <td style="background-color: #DDDDDD" class="style5" align="left">
                                                          &nbsp;&nbsp;Homepage</td>
                            </tr>
                        </table>
                
                <br />
                <table border="1" style="width: 65%; height: 215px;">
                    <tr>
                        <td class="style17">
                           <a href="JobsV.aspx"> <img class="style16" src="Images/1.jpg" /></a></td>
                        <td class="style19">
                            <a href="Order11.aspx"><img class="style18" src="Images/2.jpg" /></a></td>
                        <td>
                            <a href="UseableCyl.aspx"><img class="style18" src="Images/3.jpg" /></a></td>
                    </tr>
                    <tr>
                        <td class="style17">
                            <a href="Issue1.aspx"><img class="style16" src="Images/4.jpg" /></a></td>
                        <td class="style19">
                           <a href="Assets.aspx"> <img class="style16" src="Images/5.jpg" /></a></td>
                        <td>
                            <a href="StockList.aspx"><img class="style16" src="Images/6.jpg" /></a></td>
                    </tr>
                    <tr>
                        <td class="style17">
                            <a href="Users.aspx"><img class="style16" src="Images/7.jpg" /></a></td>
                        <td class="style19">
                            <a href="Setting.aspx"><img class="style16" src="Images/8.jpg" /></a></td>
                        <td>
                         

                             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Images/9.jpg" 
                                onclick="LinkButton2_Click" />
                </table>
                
                <br />
                        &nbsp;</td>
        </tr>
    </table>
      </div
    </div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
        });
 
        $("#sidebarCollapse").trigger('click');
    });
</script>
    </form>
</body>

</html>