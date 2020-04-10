<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="DashBoard.aspx.cs" Inherits="DashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <br /><h1>Welcome To Admin Panel</h1><br />
  <div class="row content">
      
    <div class="col-sm-3 sidenav hidden-xs">
        
        <ul class="nav nav-pills nav-stacked">
            <li class="active"><a href="Dashboard.aspx">Dashboard</a></li>
            <%--<li><a href="UserEntry.aspx">User Entry</a></li>--%>
            <li><a href="ManageUsers.aspx">Manage Users</a></li>
            <%--<li><a href="SubjectEntry.aspx">Subject Entry</a></li>--%>
            <li><a href="QuestionsEntry.aspx">Questions Entry</a></li>
            <li><a href="ViewQuestion.aspx">View Questions</a></li>
            <li><a href="ViewResults.aspx">View Results</a></li>
            <li><a href="ExamEntry.aspx">Exam Entry</a></li>
        </ul><br/>
    </div>
     
    
    <div class="col-sm-9">
      <div class="well">
        <h4>Dashboard</h4>
        <p>Some text..</p>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="well">
            <h4>Users</h4>
            <p>1 Million</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4>Pages</h4>
            <p>100 Million</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4>Sessions</h4>
            <p>10 Million</p> 
          </div>
        </div>
        
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
            <p>Text</p> 
            <p>Text</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
            <p>Text</p> 
            <p>Text</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
            <p>Text</p> 
            <p>Text</p> 
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-8">
          <div class="well">
            <p>Text</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
        
</asp:Content>

