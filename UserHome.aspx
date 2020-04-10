<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>
<%--<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>--%>
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
       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
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
        
        <div>
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success" Font-Size="Medium"></asp:Label>
            <h1>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HOME</h1>
            </div>
        <!--User  Test Entry Form--->
         
         
        <hr />
        <!-- /.col-lg-12 -->
   
        <div class="container-fluid">
 
            <div class="row content">

                <div class="col-sm-1"></div>
                <div  class="col-sm-3 sidenav hidden-xs">
                    <div>
                        <%--<asp:TextBox Width="240px" ID="TextBox1" placeholder="mm/dd/yyyy" class="form-control" runat="server"></asp:TextBox>
                         <asp:Label ID="lblSelectedText" runat="server"></asp:Label>--%>


                    <%--<asp:DropDownList ID="dropdn" runat="server" Width="200px" AppendDataBoundItems="true">
                        <asp:ListItem Text="Select Subject"></asp:ListItem>
                        <asp:ListItem Text="CSS" Value="1"></asp:ListItem>
                        <asp:ListItem Text="JAVASCRIPT" Value="2"></asp:ListItem>
                        <asp:ListItem Text="REACT" Value="3"></asp:ListItem>
                        <asp:ListItem Text="ANGULAR" Value="4"></asp:ListItem>
                        <asp:ListItem Text="HTML" Value="5"></asp:ListItem>
                        <asp:ListItem Text="GIT" Value="6"></asp:ListItem>
                        <asp:ListItem Text="IONIC" Value="7"></asp:ListItem>
                        <asp:ListItem Text="CCNA" Value="8"></asp:ListItem>
                    </asp:DropDownList>--%>
                   

                        <asp:DropDownList ID="dropdn" runat="server" Width="200px" AppendDataBoundItems="true">
                        <asp:ListItem Value="0">Select Subject</asp:ListItem>
                            <asp:ListItem >CSS</asp:ListItem>
                            <asp:ListItem>JAVASCRIPT</asp:ListItem>
                            <asp:ListItem>REACT</asp:ListItem>
                            <asp:ListItem>ANGULAR</asp:ListItem>
                            <asp:ListItem>HTML</asp:ListItem>
                            <asp:ListItem>GIT</asp:ListItem>

                             </asp:DropDownList>












                        </div>
                    <%--<ul class="nav nav-pills nav-stacked">
                       <li  id="dropdn" class="dropdown active ">
                        <a href="#" class=" dropdown-toggle" data-toggle="dropdown">
                                    Select Subject Name
                                    <b class="caret"></b>
                              </a>
                              <ul  class="dropdown-menu">
                                <li ><a href="#">CSS</a></li>
                                <li><a href="#">HTML</a></li>
                                <li><a href="#">JAVASCRIPT</a></li>
                                <li><a href="#">ASP.NET</a></li>
                                <li><a href="#">AI</a></li>
                                <li class="divider"></li>
                                <li><a href="#">REACT</a></li>
                              </ul>
                        </li>
                    </ul>--%>    
                </div>
                  <!--User  Test Entry Form--->

                <div class="col-sm-7 myrules" style="background-color:lavender;">

                    <table class="table table-striped table-bordered table-hover myrules">


                        <tr>
                            <td  colspan="2" style="font-family: Verdana; font-size: 12pt; color: Orange; font-style: italic; font-weight: bolder">Personal Details</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <span style="color: Red">*</span>Student Name:
                            </td>
                            <td>
                                
                                <asp:TextBox Width="240px" ID="tbSname"  runat="server" Class="form-control" CausesValidation="true"></asp:TextBox>
                               <%-- <asp:RequiredFieldValidator ID="StudentNameValidator" runat="server" ControlToValidate="tbSname"
                                    ErrorMessage="Student Name should not be empty" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Father Name:
                            </td>
                            <td>
                                <asp:TextBox Width="240px" ID="tbfname" placeholder="Father Name" class="form-control" runat="server" CausesValidation="true"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Date Of Birth:
                            </td>
                            <td>

                                <asp:TextBox Width="240px" ID="tbDoB" runat="server" class="form-control"></asp:TextBox>
                                <%--<cc1:calendarextender ID="abc" runat="server" format="dd-MM-yyyy" targetcontrolid="tbDoB"></cc1:calendarextender>--%>                                                                                          
                                <%--<asp:Label ID="lblFormat" runat="server" Text="mm/dd/yyyy" Enabled="False" ForeColor="Red"></asp:Label>--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <span style="color: Red">*</span>Gender:
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" Width="240px">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>

                                <%--<asp:RadioButtonList ID="rbgender" runat="server" RepeatDirection="Horizontal" Width="125px">
                                    <asp:ListItem Text="Male " Value="Male">
                                    </asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female">
                                    </asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="GenderValidator" runat="server" ErrorMessage="PLZ Select the gender!!!"
                                    ControlToValidate="rbgender" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Contact No:
                            </td>
                            <td>
                                <asp:TextBox Width="240px" ID="tbcontact" placeholder="ENTER YOUR CONTACT NO" class="form-control" MaxLength="20" runat="server" TextMode="Phone"></asp:TextBox>

                                <%--<asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Must enter numeric value"
                                    Operator="DataTypeCheck" Type="Integer" ControlToValidate="tbcontact" ForeColor="Red"></asp:CompareValidator>--%>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">E-Mail ID:
                            </td>
                            <td>
                                
                                <asp:TextBox Width="240px" ID="tbEmail" placeholder="ENTER YOUR EMAIL ID" class="form-control" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr >
                            <td colspan="2" style="font-family: Verdana; font-size: 12pt; color: Orange; font-style: italic; font-weight: bolder">Address Details
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <span style="color: Red">*</span>Address:
                            </td>
                            <td>
                                <asp:TextBox Width="240px" ID="tbaddr" placeholder="ENTER PERMANET ADDRESS" class="form-control" runat="server" TextMode="MultiLine">
                                </asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field should not be blank"
                                    ControlToValidate="tbaddr" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">ZIP Code:
                            </td>
                            <td>
                                <asp:TextBox Width="240px" ID="tbzip" placeholder=" ENTER ZIP CODE" class="form-control" MaxLength="6" runat="server" TextMode="Number"></asp:TextBox>
                               <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbzip"
                                    ErrorMessage="Enter Proper Zip Code" ValidationExpression="\d{6}" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                            </td>
                        </tr>

                             <tr>
                                 <td class="auto-style2"></td>
                                 <td class="auto-style2 ">
                                     
                                     <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" class="btn-primary btn-xs" />
                                     <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                 </td>
                             </tr>

                             <tr>
                                 <td class="auto-style2">
                                     <small><span style="color: Red">*Note:</span>Must enter data</small>
                                 </td>
                             </tr>
                    </table>
                </div>
   
        </div>
            </div>
            </div>
    </form>
    <!--User  Test Entry Form--->
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
