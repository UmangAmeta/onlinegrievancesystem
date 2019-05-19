<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="cms.Admin.Adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="ISO-8859-1" />
<title>Admin Home Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
		
			<style>
.nav-tabs li a {
    color: #15224f;
}
h2{
color:#15224f;
}
</style>
</head>
<body>

<div class="container">
<div class="jumbotron text-center">
  <h1 style="color: #15224f">Admin Profile</h1> 
  <p style="color: gray;">In This Page Admin Can Handel The Querys And Query Can Distribute Related to Department. </p> 
 
</div>
<ul class="nav nav-tabs">
<li class="active"><asp:HyperLink runat="server" data-toggle="tab" href="Adminhome.aspx" NavigateUrl="~/Admin/Adminhome.aspx">HyperLink</asp:HyperLink></li>
  <li><asp:HyperLink runat="server" data-toggle="tab" href="Adminhome.aspx">New Worker Registration</asp:HyperLink></li>
  <li><asp:HyperLink runat="server" data-toggle="tab" href="Adminhome.aspx" NavigateUrl="~/Admin/Newfaculty.aspx">New Faculty Registrtaion</asp:HyperLink></li>
   <li><asp:HyperLink runat="server" data-toggle="tab" href="Adminhome.aspx">View Complain</asp:HyperLink></li>
   <li><asp:HyperLink runat="server" data-toggle="tab" href="#">Log Out</asp:HyperLink></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <h2>Mike Ross, Manager</h2>
    <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
  </div>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    </div>
    </div>
</body>
</html>
