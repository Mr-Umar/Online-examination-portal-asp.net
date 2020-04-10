<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom-Cs -->
    <link href="css/Custom.css" rel="stylesheet" />
     <!--Myrules-->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'/>
    <link href="MY_Rules/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
<!-- Bootstrap core CSS     -->
    <link href="MY_Rules/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="MY_Rules/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="MY_Rules/assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="MY_Rules/assets/css/demo.css" rel="stylesheet" />

    <link href="MY_Rules/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="MY_Rules/css/Custom.css" rel="stylesheet"/>
    <script src="MY_Rules/Script/bootstrap.min.js"></script>
    <script src="MY_Rules/Script/jquery.min.js"></script>

    <!--Myrules-->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            position: absolute;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0,0,0,0);
        }
        .auto-style2 {
            width: 243px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--- navigation ------------------------>
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="auto-style1">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="logo" src="images/logo.png" height="40" /></span>EXAMINO.com</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Setting<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Profile</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">bbb</a></li>
                                    <li><a href="#">ccc</a></li>
                                    <li><a href="#">ddd</a></li>
                                    <li class="dropdown-header">Profile2</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">bbb</a></li>
                                    <li><a href="#">ccc</a></li>
                                    <li><a href="#">ddd</a></li>
                                </ul>
                            </li>
                            <li>
                                <asp:Button ID="btnSignOut" Class="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnSignOut_Click" />
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--- navigation ------------------------>
        <!---CENTER PART---->
        <!---PAGING PART---->
        <div class="container">
  <%--<h2>Pagination</h2>
  <p>The .pagination class provides pagination links:</p>--%>                  
  <ul class="pagination">
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
  </ul>
</div>
        <!---PAGING PART---->
        
        <!----CENTER PART---->
    </div>
    </form>
    <!--- Footer Contents --------------------->
        <hr />
         <footer>
        <div class="container">
            <p class="pull-right"> <a href="#">Back to Top</a></p>
           <p>&copy; 2017 Examino.com &middot;<a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Setting</a></p>
        </div>
             </footer>
        <!--- Footer Contents --------------------->
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
