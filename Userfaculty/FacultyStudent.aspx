<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyStudent.aspx.cs" Inherits="cms.FacultyStudent" %>

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
    <h1 style="color:#cdbfe3;">Profile</h1> 
    <p style="color:#cdbfe3;">In This Page Student/Faculty Can View the Complains and Can Give New Complains here Related to Department. </p>     
  <center style="text-align: right" color:"#cdbfe3"><asp:Label runat="server" ForeColor="#CDBFE3" ID="Label1" style="font-size: large">admin</asp:Label></center>
  </div>
  <div class="container">
 
  <ul class="nav nav-tabs">
    <li class="active"><a href="FacultyStudent.aspx">Home</a></li>
    <li ><a href="Newcomplain.aspx">New complains</a></li>
    <li><a href="Viewcomplain.aspx">View Complains</a></li>
    <li><a href="#">LogOut</a></li>
  </ul>
  </div>
  </div>
  
    </form>
</body>
</html>
