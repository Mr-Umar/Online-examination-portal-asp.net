<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom-Cs -->
    <link href="css/Custom.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <!--- navigation ------------------------>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
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
                            <li class="active"><a href="SignUp.aspx">Sign Up</a></li>
                            <li><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--- navigation ------------------------>
    </div>

        <!--- Sign Up ------------------------>
        <div class="center-page">
            
             <label class="col-xs-11">Full Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="UserName"></asp:TextBox>
        </div>

              <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        </div>

              <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
        </div>

              <label class="col-xs-11">Student Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder=" Student Name"></asp:TextBox>
        </div>
              <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
        </div>
            <div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
         
        </div>
        <!--- Sign Up ------------------------>

         <!--- Footer Contents --------------------->
        <hr />
        <footer class="footer-pos" style="height: 84px">
            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy; 2017 Examino.com &middot;<a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Setting</a></p>
            </div>
        </footer>

        <!--- Footer Contents --------------------->

    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>