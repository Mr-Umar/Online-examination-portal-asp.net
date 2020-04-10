<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="QuestionsEntry.aspx.cs" Inherits="QuestionsEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script type="text/javascript" src="My_Rules/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
    <%--<script type="text/javascript">
        tinyMCE.init({
            mode: "textareas",
            theme: "advanced",
            plugins: "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",
            theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
            theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
            theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
            theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
            theme_advanced_toolbar_location: "top",
            theme_advanced_toolbar_align: "left",
            theme_advanced_statusbar_location: "bottom",
            theme_advanced_resizing: false,
            template_external_list_url: "js/template_list.js",
            external_link_list_url: "js/link_list.js",
            external_image_list_url: "js/image_list.js",
            media_external_list_url: "js/media_list.js",
            height: 500
        });
    </script>--%>
    <script language="javascript" type="text/javascript">
        function validate() {

            if (document.getElementById("<%=dropSub.ClientID%>").selectedIndex == 0) {
                alert("Please select Subject");
                document.getElementById("<%=dropSub.ClientID%>").selectedIndex == 0;
                return false;
            }


            if (document.getElementById("<%=tbOption1.ClientID%>").value == "") {
                alert("Option 1 can not be blank");
                document.getElementById("<%=tbOption1.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=tbOption2.ClientID%>").value == "") {
                alert("Option 2 can not be blank");
                document.getElementById("<%=tbOption2.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=tbOption3.ClientID%>").value == "") {
                alert("Option 3 can not be blank");
                document.getElementById("<%=tbOption3.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=tbOption4.ClientID%>").value == "") {
                alert("Option 4 can not be blank");
                document.getElementById("<%=tbOption4.ClientID%>").focus();
                return false;
            }
            if (document.getElementById("<%=rbtAns.ClientID%>").Checked == false) {
                alert("Correct Answer can not be blank");
            
                return false;
            }    
                 
        }
    </script>

    <div class="container-fluid">
        <br /><h1>Welcome To Admin Panel</h1><br />
  <div class="row content">
      
    <div class="col-sm-3 sidenav hidden-xs">
        
        <ul class="nav nav-pills nav-stacked">
            <li ><a href="Dashboard.aspx">Dashboard</a></li>
            <%--<li><a href="UserEntry.aspx">User Entry</a></li>--%>
            <li><a href="ManageUsers.aspx">Manage Users</a></li>
            <%--<li><a href="SubjectEntry.aspx">Subject Entry</a></li>--%>
            <li class="active"><a href="QuestionsEntry.aspx">Questions Entry</a></li>
            <li><a href="ViewQuestion.aspx">View Questions</a></li>
            <li><a href="ViewResults.aspx">View Results</a></li>
            <li><a href="ExamEntry.aspx">Exam Entry</a></li>
        </ul><br/>
    </div>

      <div class="col-sm-9">
          <div class="row">
        <div class="col-lg-12">
            <h4>
                Question Entry</h4>
        </div>
        <!-- /.col-lg-12 -->
    </div>
          <div class="row">
     <table border="0" cellpadding="0" cellspacing="0" class="table table-striped table-bordered table-hover" style="width: 100%">
            <%-- table 111--%>
            <tr>
                <td style="padding-top: 10px; padding-bottom: 20px; padding-left: 9px; height: 675px;"
                    align="top" align="center">
       <table id="table83" border="0" cellpadding="0" cellspacing="0" class="" width="600" style="text-align: center; width: 71%;">
          <%-- table 2222--%>
                        
           <tr style="vertical-align: top">
               <td colspan="3" style="padding-right: 10px; padding-left: 10px; padding-top: 2px; height: 374px;">
                   <table style="width: 95%" cellpadding="0" cellspacing="0">
                       <%-- table 33333--%>
                       <tr>
                           <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; padding-top: 5px; text-align: left"
                               valign="top">
                               <table style="width: 104%" cellpadding="0" cellspacing="0">
                                   <%-- table 44444--%>
                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblresult" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="11px"
                                               ForeColor="Green" Style="position: static"></asp:Label>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                   </tr>

                                   <%-- <tr>
                                                    <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px;
                                                        vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                                        Only for Excel Upload</td>
                                                    <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px;
                                                        vertical-align: top; width: 3%; padding-top: 5px; text-align: left">
                                                        :</td>
                                                    <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px;
                                                        vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                                        <asp:FileUpload ID="FileUpload2" runat="server" /> <asp:Button ID="Button1"
                                                            Text="Upload"  runat="server" onclick="Button1_Click" />
                                                    </td>
                                                    <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px;
                                                        vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                                        &nbsp;</td>
                                                </tr>--%>

                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblcontactnumber2" runat="server" CssClass="LBLBLACK" Text="Select Subject"
                                               Width="140px"></asp:Label>
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="Label62" runat="server" CssClass="LBLBLACK" Text=":"></asp:Label>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:DropDownList ID="dropSub" class="form-control" runat="server" Height="29px" Width="160px">
                                               <asp:ListItem Value="0">Select Subject</asp:ListItem>
                                               <asp:ListItem>CSS</asp:ListItem>
                                               <asp:ListItem>JAVASCRIPT</asp:ListItem>
                                               <asp:ListItem>REACT</asp:ListItem>
                                               <asp:ListItem>ANGULAR</asp:ListItem>
                                               <asp:ListItem>HTML</asp:ListItem>
                                               <asp:ListItem>GIT</asp:ListItem>
                                           </asp:DropDownList>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblQuestion" runat="server" CssClass="LBLBLACK" Text="Question" Width="78px"></asp:Label>
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="Label61" runat="server" CssClass="LBLBLACK" Text=":"></asp:Label>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:TextBox ID="tbQuestion" runat="server" TextMode="MultiLine" class="form-control" MaxLength="100000" Width="400px"></asp:TextBox><br />
                                           <div>
                                               
                                               <%--<asp:Panel ID="pnlEditor" runat="server">
                                                   <asp:TextBox ID="tbQuestion" runat="server" TextMode="MultiLine" MaxLength="100000"></asp:TextBox><br />


                                                   <asp:FileUpload ID="FileUpload1" runat="server" />
                                                   <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                                               </asp:Panel>--%>
                                               <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="False" />
                                               <asp:Button ID="btnCancel" runat="server" Text="Cancel" Visible="false" OnClick="btnCancel_Click" />
                                               <asp:Label ID="lblDisplay" runat="server" Text="" Visible="false"></asp:Label>
                                           </div>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblAns1" runat="server" CssClass="LBLBLACK" Text="Option 1" Width="150px"></asp:Label>
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">:
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:TextBox ID="tbOption1" runat="server" class="form-control" placeholder="Enter Option1"
                                               MaxLength="7000" TabIndex="1" Width="593px"></asp:TextBox>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left"></td>
                                   </tr>
                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblAns2" runat="server" CssClass="LBLBLACK" Text="Option 2" Width="150px"></asp:Label>
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">:
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:TextBox ID="tbOption2" runat="server" class="form-control" placeholder="Enter Option2"
                                               MaxLength="7000" TabIndex="1" Width="593px"></asp:TextBox>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left"></td>
                                   </tr>
                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblAns3" runat="server" CssClass="LBLBLACK" Text="Option 3" Width="150px"></asp:Label>
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">:
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:TextBox ID="tbOption3" runat="server" class="form-control" placeholder="Enter Option3"
                                               MaxLength="7000" TabIndex="1" Width="593px"></asp:TextBox>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left"></td>
                                   </tr>
                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblAns4" runat="server" CssClass="LBLBLACK" Text="Option 4" Width="150px"></asp:Label>
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">:
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:TextBox ID="tbOption4" runat="server" class="form-control" placeholder="Enter Option4"
                                               MaxLength="7000" TabIndex="1" Width="593px"></asp:TextBox>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left"></td>
                                   </tr>
                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:Label ID="lblCans" runat="server" CssClass="LBLBLACK" Text="Correct Answer"
                                               Width="150px"></asp:Label>
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">:
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:RadioButtonList ID="rbtAns" runat="server" Height="16px"
                                               RepeatDirection="Horizontal" Width="439px">
                                               <asp:ListItem Value="1">Option1</asp:ListItem>
                                               <asp:ListItem Value="2">Option2</asp:ListItem>
                                               <asp:ListItem Value="3">Option3</asp:ListItem>
                                               <asp:ListItem Value="4">Option4</asp:ListItem>
                                           </asp:RadioButtonList>
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left"></td>
                                   </tr>



                                   <tr>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">
                                           <asp:HiddenField ID="hdfupload3" runat="server" />
                                       </td>
                                       <td align="right" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 3%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                       <td align="left" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: top; width: 22%; padding-top: 5px; text-align: left">&nbsp;
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       <tr>
                           <td align="center" style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; vertical-align: middle; padding-top: 5px; height: 35px; text-align: center"
                               align="middle">
                               <asp:Button ID="BtnBatchsave" runat="server" class="btn-primary btn-xs" TabIndex="10"
                                   CausesValidation="true" OnClientClick="return validate();" Text="Submit" ToolTip="To Save  the data"
                                   OnClick="BtnBatchsave_Click" />&nbsp;&nbsp;
                                            <asp:Button ID="BtnbatchClear" runat="server" class="btn-primary btn-xs" CausesValidation="false"
                                                TabIndex="10" Text="ClearAll" ToolTip="To Clear  the Screen" OnClick="BtnbatchClear_Click" />
                           </td>
                       </tr>
                   </table>
               </td>
           </tr>
                    </table>
                </td>
            </tr>
        </table>
      </div>
      </div>
      </div>
        </div>
</asp:Content>

