<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="UserEntry.aspx.cs" Inherits="UserEntry" %>
<%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
  <h1>Welcom!</h1>
 
  <div class="row">
      <div class="col-sm-3 sidenav hidden-xs">
        
        <ul class="nav nav-pills nav-stacked">
            <li class="active"><a href="AdminHome.aspx">Dashboard</a></li>
            <li><a href="UserEntry.aspx">User Entry</a></li>
            <li><a href="ManageUsers.aspx">Manage Users</a></li>
            <li><a href="SubjectEntry.aspx">Subject Entry</a></li>
            <li><a href="QuestionsEntry.aspx">Questions Entry</a></li>
            <li><a href="ViewQuestion.aspx">View Questions</a></li>
            <li><a href="ViewResults.aspx">View Results</a></li>
            <li><a href="ExamEntry.aspx">Exam Entry</a></li>
        </ul><br/>
    </div>
              
    <div class="col-sm-8" style="background-color:lavenderblush;">
    <table class="table table-striped table-bordered table-hover">
            

            <tr>
   <td colspan="2" align="left" style="font-family: Verdana; font-size: 10pt; color: Orange; font-style: italic; font-weight: bolder">Personal Details</td>
            </tr>
            <tr align="center">
                <td align="left">
                    <span style="color: Red">*</span>First Name:
                </td>
                <td align="left">
                    <asp:TextBox Width="240px" ID="txtfname" runat="server" class="form-control" CausesValidation="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ControlToValidate="txtfname"
                        ErrorMessage="First Name should not be empty" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left">Last Name:
                </td>
                <td align="left">
                    <asp:TextBox Width="240px" ID="txtlname" class="form-control" runat="server" CausesValidation="true"></asp:TextBox>
                </td>
            </tr>
           <%-- <tr>
                <td align="left">Date Of Birth:
                </td>
                <td align="left">


                    <asp:TextBox ID="GMDatePicker1" runat="server" Width="160px"></asp:TextBox>


                    <cc1:calendarextender ID="abc" runat="server" Format="dd-MM-yyyy" TargetControlID="GMDatePicker1">
                    </cc1:calendarextender>
                    <asp:Label ID="lblFormat" runat="server" Text="mm/dd/yyyy" Enabled="false"></asp:Label>
                </td>
            </tr>--%>
            <tr>
                <td align="left">
                    <span style="color: Red">*</span>Gender:
                </td>
                <td align="left">
                    <asp:RadioButtonList ID="rdSex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Male " Value="Male">
                        </asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female">
                        </asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="GenderValidator" runat="server" ErrorMessage="PLZ Select the gender!!!"
                        ControlToValidate="rdSex" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left">Contact No:
                </td>
                <td align="left">
                    <asp:TextBox Width="240px" ID="txtcontact" class="form-control" MaxLength="20" runat="server"></asp:TextBox>

                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Must enter numeric value"
                        Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtcontact"></asp:CompareValidator>

                </td>
            </tr>
            <tr>
                <td align="left">Alternate E-Mail ID:
                </td>
                <td align="left">
                    <asp:TextBox Width="240px" ID="txtmail" class="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left" style="font-family: Verdana; font-size: 10pt; color: Orange; font-style: italic; font-weight: bolder">Address Details
                </td>
            </tr>
            <tr>
                <td align="left">
                    <span style="color: Red">*</span>Address:
                </td>
                <td align="left">
                    <asp:TextBox Width="240px" ID="txtaddr" class="form-control" runat="server" TextMode="MultiLine">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field should not be blank"
                        ControlToValidate="txtaddr"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td align="left">ZIP Code:
                </td>
                <td align="left">
                    <asp:TextBox Width="240px" class="form-control" ID="txtZipCode" MaxLength="6" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtZipCode"
                        ErrorMessage="Enter Proper Zip Code" ValidationExpression="\d{6}">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
           <tr>
                <td align="left"></td>
                <td align="left">
                    <br />
                  <%--  <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"
                        class="btn-primary btn-xs" />--%>
                </td>
            </tr>

            <tr>
                <td>
                    <small><span style="color: Red">*Note:</span>Must enter data</small>
                </td>
            </tr>
        </table></div>
  </div>
</div>
</asp:Content>

