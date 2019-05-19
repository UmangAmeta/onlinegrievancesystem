<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewcomplain.aspx.cs" Inherits="cms.Viewcomplain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="ISO-8859-1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Query Form</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
  <div class="jumbotron" style="background-color: #563d7c;">
    <h1 style="color:#cdbfe3;">Complains Form</h1> 
    <p style="color:#cdbfe3;">In This Page Student/Faculty Can Complains here Related to Department. </p>     
      <center style="text-align: right" color:"#cdbfe3"><asp:Label runat="server"  ForeColor="#CDBFE3" style="font-size: large" ID="label3">admin</asp:Label></center>
  </div>
  <div class="container">
 
  <ul class="nav nav-tabs">
    <li ><a href="FacultyStudent.aspx">Home</a></li>
    <li class="active"><a href="Newcomplain.aspx">New complains</a></li>
    <li><a href="Viewcomplain.aspx">View Complains</a></li>
    <li><a href="Login.aspx">LogOut</a></li>
  </ul>
  </div>

        <div>
            <table>
                    <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" Width="1064px" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField HeaderText="ComplainiD">
                            <ItemTemplate>
                                <%# Eval("ComplainId") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserName">
                            <ItemTemplate>
                                <%# Eval("Username") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Departmnetname">
                            <ItemTemplate>
                                <%# Eval("Departmentname") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField >
                            <ItemTemplate>
                                <a href="Viewmore.aspx?ComplainId=<%#Eval("ComplainId") %>">View</a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                </asp:GridView>
                </td>
                        </tr>
            </table>
        </div>
        </div>
    </form>
</body>
</html>
