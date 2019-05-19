<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewmore.aspx.cs" Inherits="cms.Userfaculty.Viewmore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="ISO-8859-1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Query Form</title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
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

            <table class="nav-justified">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">Complain</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>ComplainId</strong></td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Username</b></td>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Time</b></td>
                    <td>
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Date</b></td>
                    <td>
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Departmentname</b></td>
                    <td>
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Problem</b></td>
                    <td>
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Description</b></td>
                    <td>
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Complainstatus</b></td>
                    <td>
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

                </div>
    </form>
</body>
</html>
