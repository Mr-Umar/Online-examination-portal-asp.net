<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exam_IntroPage.aspx.cs" Inherits="Exam_IntroPage" %>

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
        <!--- navigation -->
        <!--description-->
        <div class="container-fluid">
  <h1 align="center">Exam Description</h1><br />
  <p align="center">Read the Exam Instructions Carefully</p><br />
  <div class="row">
  <div class="col-sm-1"></div>
    <div class="col-sm-10" height="400px;" style="background-color:lavender; text-align:center;">
        <div>
        This Exam consist of Multiple choice Questions with equall marks.You are about to begin the Online Test. Answer each question carefully, since you will not be able to review/change. 

In this assessment you will encounter question of type: Multiple Choice. 

You need to complete each online test in the defined time period you will not be allowed to add or change answer to a question once you have exceeded the time limit. 

Please do not use the back button on your browser during the test, since you cannot change your response once you have submitted them. 

Click on the button below to start 

<span class="alert-warning">NOTE: You should not browse other websites while attempting the online test since it will be tracked through your system</span> <br /><span>

************** ALL THE BEST ************* </span><br />
            Exam Questions: 4 hours (240 minutes)<br />
            Survey: 5 minutes
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="START" BackColor="Lime" BorderStyle="Groove" CssClass="active" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="36px" OnClick="Button1_Click" Width="91px" />
    <br />
    </div>
    <div class="col-sm-1"></div>
  </div>
</div>


        <!--description-->
    </div>
    </form>
    <!--- Footer Contents --------------------->
    <hr />
    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to Top</a></p>
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
