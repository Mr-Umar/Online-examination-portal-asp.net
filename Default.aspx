<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom-Cs -->
    <link href="css/Custom.css" rel="stylesheet"/>
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
                            <li class="active"><a href="Default.aspx">Home</a></li>
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
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                            <li><a href="SignIn.aspx">Sign In</a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <!--- navigation ------------------------>

            <!--- carouse ------------------------>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

    <div class="item active">
      <img src="images/Slide_1.jpg" alt="..."/>
      <div class="carousel-caption">
          <h3>Exam</h3>
          <p>Learn</p>
          <p><a class="btn btn-lg btn-primary"href="SignUp.aspx" role="button">Join us Today</a></p>
      </div>
    </div>

    <div class="item">
      <img src="images/Slide_2.jpg" alt="..."/>
      <div class="carousel-caption">
        <h3>Exam</h3>
          <p>Learn</p>
           <p><a class="btn btn-lg btn-primary"href="SignUp.aspx" role="button">Join us Today</a></p>
      </div>
    </div>

        <div class="item">
      <img src="images/Slide_3.jpg" alt="..."/>
      <div class="carousel-caption">
        <h3>Exam</h3>
          <p>Learn</p>
           <p><a class="btn btn-lg btn-primary"href="SignUp.aspx" role="button">Join us Today</a></p>
      </div>
    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            <!--- carouse --------------------->
            

    </div>
        <br/>
        <br/>
        <br/>
        <!--- Middle Contents --------------------->
        <div class="container center" >
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="images/waqar.png" alt="waqar" width="160" height="140" />
                    <h2>MR.WAQAR</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
                </div>

                 <div class="col-lg-4">
                    <img class="img-circle" src="images/hasan.jpg" alt="hasan" width="160" height="140" />
                    <h2>MR.Hasan</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo</a></p>
                </div>

                 <div class="col-lg-4">
                    <img class="img-circle" src="images/waqar2.jpg" alt="waqar2" width="160" height="140" />
                    <h2>MR.WAQAR</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
                    <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
                </div>

            </div>
        </div>
        <br/>
        <br/>
        <br/>
        <!--- Middle Contents --------------------->

        <!--- Footer Contents --------------------->
        <hr />
         <footer>
        <div class="container">
            <p class="pull-right"> <a href="#">Back to Top</a></p>
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
