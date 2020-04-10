<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <div class="container-fluid">
  <h1>Welcom!</h1>
 
  <div class="row">
      <div class="col-sm-3 sidenav hidden-xs" style="left: 0px; top: 0px">
        
        <ul class="nav nav-pills nav-stacked">
            <li ><a href="AdminHome.aspx">Dashboard</a></li>
            <%--<li><a href="UserEntry.aspx">User Entry</a></li>--%>
            <li class="active"><a href="ManageUsers.aspx">Manage Users</a></li>
            <%--<li><a href="SubjectEntry.aspx">Subject Entry</a></li>--%>
            <li><a href="QuestionsEntry.aspx">Questions Entry</a></li>
            <li><a href="ViewQuestion.aspx">View Questions</a></li>
            <li><a href="ViewResults.aspx">View Results</a></li>
            <li><a href="ExamEntry.aspx">Exam Entry</a></li>
        </ul><br/>
    </div>
      <br />
      <div class="col-sm-7" style="background-color:lavenderblush;">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True" Width="800px">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                  <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                  <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
                  <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                  <asp:BoundField DataField="User_Exam_Selection" HeaderText="User_Exam_Selection" SortExpression="User_Exam_Selection" />
              </Columns>
              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString3 %>" DeleteCommand="DELETE FROM [UExamForm] WHERE [Id] = @original_Id AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Contact_No] = @original_Contact_No) OR ([Contact_No] IS NULL AND @original_Contact_No IS NULL)) AND (([Email_ID] = @original_Email_ID) OR ([Email_ID] IS NULL AND @original_Email_ID IS NULL)) AND (([User_Exam_Selection] = @original_User_Exam_Selection) OR ([User_Exam_Selection] IS NULL AND @original_User_Exam_Selection IS NULL))" InsertCommand="INSERT INTO [UExamForm] ([Student_Name], [Contact_No], [Email_ID], [User_Exam_Selection]) VALUES (@Student_Name, @Contact_No, @Email_ID, @User_Exam_Selection)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Student_Name], [Contact_No], [Email_ID], [User_Exam_Selection] FROM [UExamForm]" UpdateCommand="UPDATE [UExamForm] SET [Student_Name] = @Student_Name, [Contact_No] = @Contact_No, [Email_ID] = @Email_ID, [User_Exam_Selection] = @User_Exam_Selection WHERE [Id] = @original_Id AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Contact_No] = @original_Contact_No) OR ([Contact_No] IS NULL AND @original_Contact_No IS NULL)) AND (([Email_ID] = @original_Email_ID) OR ([Email_ID] IS NULL AND @original_Email_ID IS NULL)) AND (([User_Exam_Selection] = @original_User_Exam_Selection) OR ([User_Exam_Selection] IS NULL AND @original_User_Exam_Selection IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_Id" Type="Int32" />
                  <asp:Parameter Name="original_Student_Name" Type="String" />
                  <asp:Parameter Name="original_Contact_No" Type="Int32" />
                  <asp:Parameter Name="original_Email_ID" Type="String" />
                  <asp:Parameter Name="original_User_Exam_Selection" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="Student_Name" Type="String" />
                  <asp:Parameter Name="Contact_No" Type="Int32" />
                  <asp:Parameter Name="Email_ID" Type="String" />
                  <asp:Parameter Name="User_Exam_Selection" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Student_Name" Type="String" />
                  <asp:Parameter Name="Contact_No" Type="Int32" />
                  <asp:Parameter Name="Email_ID" Type="String" />
                  <asp:Parameter Name="User_Exam_Selection" Type="String" />
                  <asp:Parameter Name="original_Id" Type="Int32" />
                  <asp:Parameter Name="original_Student_Name" Type="String" />
                  <asp:Parameter Name="original_Contact_No" Type="Int32" />
                  <asp:Parameter Name="original_Email_ID" Type="String" />
                  <asp:Parameter Name="original_User_Exam_Selection" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <%--<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="155px" HorizontalAlign="Center" Width="810px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <Columns>
                  
                  <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                  <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                  <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" SortExpression="Contact_No" />
                  <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                  <asp:BoundField DataField="User_Exam_Selection" HeaderText="User_Exam_Selection" SortExpression="User_Exam_Selection" />
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
              </Columns>
              <FooterStyle BackColor="White" ForeColor="#000066" />
              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
              <RowStyle ForeColor="#000066" />
              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#007DBB" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#00547E" />
          </asp:GridView>--%>
          
          <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString2 %>" DeleteCommand="DELETE FROM [UExamForm] WHERE [Id] = @original_Id AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Contact_No] = @original_Contact_No) OR ([Contact_No] IS NULL AND @original_Contact_No IS NULL)) AND (([Email_ID] = @original_Email_ID) OR ([Email_ID] IS NULL AND @original_Email_ID IS NULL)) AND (([User_Exam_Selection] = @original_User_Exam_Selection) OR ([User_Exam_Selection] IS NULL AND @original_User_Exam_Selection IS NULL))" InsertCommand="INSERT INTO [UExamForm] ([Student_Name], [Contact_No], [Email_ID], [User_Exam_Selection]) VALUES (@Student_Name, @Contact_No, @Email_ID, @User_Exam_Selection)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [Student_Name], [Contact_No], [Email_ID], [User_Exam_Selection] FROM [UExamForm]" UpdateCommand="UPDATE [UExamForm] SET [Student_Name] = @Student_Name, [Contact_No] = @Contact_No, [Email_ID] = @Email_ID, [User_Exam_Selection] = @User_Exam_Selection WHERE [Id] = @original_Id AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Contact_No] = @original_Contact_No) OR ([Contact_No] IS NULL AND @original_Contact_No IS NULL)) AND (([Email_ID] = @original_Email_ID) OR ([Email_ID] IS NULL AND @original_Email_ID IS NULL)) AND (([User_Exam_Selection] = @original_User_Exam_Selection) OR ([User_Exam_Selection] IS NULL AND @original_User_Exam_Selection IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_Id" Type="Int32" />
                  <asp:Parameter Name="original_Student_Name" Type="String" />
                  <asp:Parameter Name="original_Contact_No" Type="Int32" />
                  <asp:Parameter Name="original_Email_ID" Type="String" />
                  <asp:Parameter Name="original_User_Exam_Selection" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="Student_Name" Type="String" />
                  <asp:Parameter Name="Contact_No" Type="Int32" />
                  <asp:Parameter Name="Email_ID" Type="String" />
                  <asp:Parameter Name="User_Exam_Selection" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="Student_Name" Type="String" />
                  <asp:Parameter Name="Contact_No" Type="Int32" />
                  <asp:Parameter Name="Email_ID" Type="String" />
                  <asp:Parameter Name="User_Exam_Selection" Type="String" />
                  <asp:Parameter Name="original_Id" Type="Int32" />
                  <asp:Parameter Name="original_Student_Name" Type="String" />
                  <asp:Parameter Name="original_Contact_No" Type="Int32" />
                  <asp:Parameter Name="original_Email_ID" Type="String" />
                  <asp:Parameter Name="original_User_Exam_Selection" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>--%>
          
          </div>
      </div>
        </div>
</asp:Content>

