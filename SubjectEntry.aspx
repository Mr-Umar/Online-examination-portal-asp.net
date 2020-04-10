<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="SubjectEntry.aspx.cs" Inherits="SubjectEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript" type="text/javascript">
      function validate() {
          if (document.getElementById("<%=txtSub.ClientID%>").value == "") {
              alert("Sublect can not be blank");
              document.getElementById("<%=txtSub.ClientID%>").focus();
              return false;
          }
      }
    </script>

    <div class="container-fluid">
        <br /><h1>Welcome To Admin Panel</h1><br />
  <div class="row content">
      
      <div class="col-sm-3 sidenav hidden-xs">
          <br />
          <ul class="nav nav-pills nav-stacked"> 
              <li ><a href="AdminHome.aspx">Dashboard</a></li>
             <%-- <li><a href="UserEntry.aspx">User Entry</a></li>--%>
              <li><a href="ManageUsers.aspx">Manage Users</a></li>
              <%--<li class="active"><a href="SubjectEntry.aspx">Subject Entry</a></li>--%>
              <li><a href="QuestionsEntry.aspx">Questions Entry</a></li>
              <li><a href="ViewQuestion.aspx">View Questions</a></li>
              <li><a href="ViewResults.aspx">View Results</a></li>
              <li><a href="ExamEntry.aspx">Exam Entry</a></li>
          </ul>
          <br />
      </div>
  <br/>   
  

  <%--<div class="col-sm-9">

    <div class="row">
        <div class="col-lg-12">
            <h4> Subject Entry </h4>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <table border="0" cellpadding="0" cellspacing="0" class="table table-striped table-bordered table-hover" align="center" style="width: 1189px; height: 795px;">
            <tr>
                <td align="top" align="center" style="width: 366px">
                    <table>
                        <tr>
                            <td>
                                <table style="width: 97%; height: 118px;" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td align="center"
                                            style="padding: 5px; vertical-align: top; text-align: left" colspan="3">
                                            <label>&nbsp;Subject Entry </label>
                                            &nbsp;</td>
                                    </tr>



                                    <tr>
                                        <td align="right"
                                            style="padding: 5px; vertical-align: top; width: 10%; text-align: left">
                                            <asp:Label ID="Label5" runat="server" CssClass="LBLBLACK" Text="Subject Name"
                                                Width="150px"></asp:Label>
                                        </td>
                                        <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">
                                            <asp:Label ID="Label8" runat="server" CssClass="LBLBLACK" Text=":"></asp:Label>
                                        </td>
                                        <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                            <asp:TextBox ID="txtSub" runat="server" class="form-control"
                                                placeholder="Enter Subject" MaxLength="50" TabIndex="1"
                                                Width="166px" ValidationGroup="co"></asp:TextBox>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td align="right"
                                            style="padding: 5px; vertical-align: top; width: 10%; text-align: left">
                                            <asp:Label ID="lblvid" runat="server"></asp:Label>
                                        </td>
                                        <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">&nbsp;</td>
                                        <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">

                                            <asp:Button ID="btnCatSave" runat="server" class="btn-primary btn-xs" TabIndex="10"
                                                Text="Save" ToolTip="To Save  the data" ValidationGroup="co"
                                                OnClientClick="return validate();" OnClick="btnCatSave_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <asp:Button ID="btnCatClear" runat="server"
                                                                                CausesValidation="False" class="btn-primary btn-xs" TabIndex="10" Text="Clear"
                                                                                ToolTip="To Clear  the Screen" OnClick="btnCatClear_Click" />

                                            <br />
                                        </td>
                                    </tr>



                                    <tr>
                                        <td align="right"
                                            style="padding: 5px; vertical-align: top; width: 10%; text-align: left">&nbsp;</td>
                                        <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">&nbsp;</td>
                                        <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;</td>
                                    </tr>



                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>

                </td>
                <td align="top" style="width: 533px">
                    <table style="width: 490px; height: 301px">
                        <tr>
                            <td align="left" style="height: 127px">Subject - Edit/Delete&nbsp;<br />
                                <div id="div2" style="height:323px; Main menu - Edit/Delete&nbsp; <br />
                                
    <div id="div2" style="height: 397px; overflow: auto; width: 491px;" align="center">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="grdMain" runat="server" CellPadding="4" CssClass="table table-hover table-bordered"
                                                    GridLines="None" PageSize="20" AutoGenerateColumns="False"
                                                    OnRowCommand="grdMain_RowCommand"
                                                    Width="347px" AutoGenerateSelectButton="True"
                                                    OnSelectedIndexChanging="grdMain_SelectedIndexChanging" AllowSorting="True" DataSourceID="SqlDataSource1">
                                                    <Columns>
                                                        <asp:BoundField HeaderText="ID" DataField="sid" />
                                                        <asp:BoundField HeaderText="Subject" DataField="sname" SortExpression="sname" />

                                                        <asp:TemplateField HeaderText="Delete" ShowHeader="true">
                                                            <ItemTemplate>
                                                                <asp:Button ID="btndelete" runat="server" class="btn-primary btn-xs"
                                                                    CommandName="Del" CommandArgument='<%# Eval("sid") %>' Height="24px" TabIndex="10" Text="Delete"
                                                                    OnClientClick="return confirm('Are you sure you want to delete?');" ToolTip="To delete  the data" ValidationGroup="co" Width="46px" />
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>

                                                    </Columns>
                                                    <PagerStyle HorizontalAlign="Center" BackColor="#B9D684" ForeColor="White"></PagerStyle>
                                                    <EmptyDataTemplate>
                                                        <b>No records found</b>
                                                    </EmptyDataTemplate>
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [Add_Subjects]"></asp:SqlDataSource>
                                            </td>
                                            <td align="bottom"></td>
                                        </tr>
                                    </table>

                                </div>
                            </td>
                        </tr>
                        
    </div>
    
      </td>
    </tr>
                    </table>
                                                               
                </td>
               
            </tr>
        </table>
    </div>--%>
      <div class="col-sm-9">
          <div class="row">
              <div class="col-lg-12">
                  <h4>Subject Entry </h4>
              </div>
              <!-- /.col-lg-12 -->
          </div>
          <!-- /.row -->
      <div class="row">
          <table border="0" class="table table-striped table-bordered table-hover"  style="width: 1189px; height: 795px;">
              <tr>
                   <!-- =================================Subject ENTRY============================== -->
                  <td align="center" style="width: 366px">

                      <table class="center">
                          <tr>
                              <td>
                                  <table style="width: 97%; height: 118px;" cellpadding="0" cellspacing="0">
                                      <tr>
                                          <td align="center"
                                              style="padding: 5px; vertical-align: top; text-align: left" colspan="3">
                                              <label>&nbsp;Subject Entry </label>
                                              &nbsp;</td>
                                      </tr>



                                      <tr>
                                          <td align="right"
                                              style="padding: 5px; vertical-align: top; width: 10%; text-align: left">
                                              <asp:Label ID="Label5" runat="server" CssClass="LBLBLACK" Text="Subject Name"
                                                  Width="150px"></asp:Label>
                                          </td>
                                          <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">
                                              <asp:Label ID="Label8" runat="server" CssClass="LBLBLACK" Text=":"></asp:Label>
                                          </td>
                                          <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                              <asp:TextBox ID="txtSub" runat="server" class="form-control" placeholder="Enter Subject" MaxLength="50" TabIndex="1"
                                                  Width="166px" ValidationGroup="co"></asp:TextBox>
                                          </td>
                                      </tr>


                                      <tr>
                                          <td align="right" style="padding: 5px; vertical-align: top; width: 10%; text-align: left">
                                              <asp:Label ID="lblvid" runat="server"></asp:Label>
                                          </td>
                                          <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">&nbsp;</td>
                                          <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">

                         <asp:Button ID="btnCatSave" runat="server" class="btn-primary btn-xs" TabIndex="10" Text="Save" ToolTip="To Save  the data" ValidationGroup="co"
                                                  OnClientClick="return validate();" OnClick="btnCatSave_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="btnCatClear" runat="server" CausesValidation="False" class="btn-primary btn-xs" TabIndex="10" Text="Clear"
                                           ToolTip="To Clear  the Screen" OnClick="btnCatClear_Click" />


                                          </td>
                                      </tr>



                                      <tr>
                                          <td align="right" style="padding: 5px; vertical-align: top; width: 10%; text-align: left">&nbsp;</td>
                                          <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">&nbsp;</td>
                                          <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;</td>
                                      </tr>



                                  </table>
                              </td>
                          </tr>
                          <tr>
                              <td></td>
                          </tr>
                      </table>

                  </td>
                  <!-- =================================Subject ENTRY============================== -->

                  <!-- =================================Subject EDIT/DELETE============================== -->

                  <td align="center" style="width: 533px;">

                      <table style="width: 490px; height: 301px">
                          
                          <tr>
                              <td align="top" align="left" style="height: 127px">Subject - Edit/Delete&nbsp;
                                      <br />

                                  <div align="center" style="height: 397px; overflow: auto; width: 491px;">
                                      <table>
                                          <tr>
                                              <td>
                                                  <asp:GridView ID="grdMain" runat="server" CellPadding="4" CssClass="table table-hover table-bordered" GridLines="None" PageSize="20" AutoGenerateColumns="False" OnRowCommand="grdMain_RowCommand"
                                                      Width="347px" AutoGenerateSelectButton="True" OnSelectedIndexChanging="grdMain_SelectedIndexChanging">

                                                      <Columns>
                                                          <asp:BoundField HeaderText="ID" DataField="sid" />
                                                          <asp:BoundField HeaderText="Subject" DataField="sname" SortExpression="sname" />

                                                          <asp:TemplateField HeaderText="Delete" ShowHeader="true">
                                                              <ItemTemplate>
                                                                  <asp:Button ID="btndelete" runat="server" class="btn-primary btn-xs"
                                                                      CommandName="Del" CommandArgument='<%# Eval("sid") %>' Height="24px" TabIndex="10" Text="Delete"
                                                                      OnClientClick="return confirm('Are you sure you want to delete?');" ToolTip="To delete  the data" ValidationGroup="co" Width="46px" />
                                                              </ItemTemplate>
                                                              <ItemStyle HorizontalAlign="Center" />
                                                          </asp:TemplateField>

                                                      </Columns>
                                                      <PagerStyle HorizontalAlign="Center" BackColor="#B9D684" ForeColor="White"></PagerStyle>
                                                      <EmptyDataTemplate>
                                                          <b>No records found</b>
                                                      </EmptyDataTemplate>
                                                  </asp:GridView>
                                              </td>

                                          </tr>
                                      </table>

                                  </div>

                              </td>
                          </tr>

                      </table>

                  </td>
                 <!-- =================================Subject EDIT/DELETE============================== -->
              </tr>

          </table>


      </div>
        </div>  
      </div>
      </div>
      
</asp:Content>

