<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewQuestion.aspx.cs" Inherits="ViewQuestion" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="row">
        <div class="col-lg-12">
            <h4>
                Question Entry</h4>
        </div>
        <!-- /.col-lg-12 -->
    </div>
            <div class="container-fluid">
                

                <div class="row content">
                    <%--<div class="col-sm-1"></div>--%>
                    <div class="col-sm-3 sidenav hidden-xs">

                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="Dashboard.aspx">Dashboard</a></li>
                            <%--<li><a href="UserEntry.aspx">User Entry</a></li>--%>
                            <li><a href="ManageUsers.aspx">Manage Users</a></li>
                            <%--<li><a href="SubjectEntry.aspx">Subject Entry</a></li>--%>
                            <li ><a href="QuestionsEntry.aspx">Questions Entry</a></li>
                            <li class="active"><a href="ViewQuestion.aspx">View Questions</a></li>
                            <li><a href="ViewResults.aspx">View Results</a></li>
                            <li><a href="ExamEntry.aspx">Exam Entry</a></li>
                        </ul>
                        <br />
                    </div>
                    <div class="col-sm-9" style="background-color: lavenderblush;">
                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" PageSize="30" ShowGroupPanel="True" Width="850px">
                            <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                            <ClientSettings AllowDragToGroup="True">
                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                            </ClientSettings>
                            <MasterTableView AllowFilteringByColumn="False" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <telerik:GridButtonColumn FilterControlAltText="Filter column1 column" HeaderText="SelectColumn" Text="Select" UniqueName="column1">
                                    </telerik:GridButtonColumn>
                                    <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Subject_Selection" FilterControlAltText="Filter Subject_Selection column" HeaderText="Subject_Selection" SortExpression="Subject_Selection" UniqueName="Subject_Selection">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Question" FilterControlAltText="Filter Question column" HeaderText="Question" SortExpression="Question" UniqueName="Question">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Option1" FilterControlAltText="Filter Option1 column" HeaderText="Option1" SortExpression="Option1" UniqueName="Option1">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Option2" FilterControlAltText="Filter Option2 column" HeaderText="Option2" SortExpression="Option2" UniqueName="Option2">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Option3" FilterControlAltText="Filter Option3 column" HeaderText="Option3" SortExpression="Option3" UniqueName="Option3">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Option4" FilterControlAltText="Filter Option4 column" HeaderText="Option4" SortExpression="Option4" UniqueName="Option4">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="Currect_Answer" FilterControlAltText="Filter Currect_Answer column" HeaderText="Currect_Answer" SortExpression="Currect_Answer" UniqueName="Currect_Answer">
                                    </telerik:GridBoundColumn>
                                </Columns>
                            </MasterTableView>
                            <HeaderStyle Font-Bold="True" ForeColor="ActiveCaption" HorizontalAlign="Center" />
                            <SelectedItemStyle ForeColor="Silver" />
                        </telerik:RadGrid>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString1 %>" SelectCommand="SELECT [Id], [Subject_Selection], [Question], [Option1], [Option2], [Option3], [Option4], [Currect_Answer] FROM [QuestionsEntryTbl]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>

