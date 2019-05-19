<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewmores.aspx.cs" Inherits="cms.Admin.viewmores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="ISO-8859-1" />
<title>Admin Home Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
		
			<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 60%;
      margin: auto;
      
  }
                .auto-style1 {
                    font-size: large;
                    text-align: center;
                }
                </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container">
  <div class="jumbotron" style="background-color: #563d7c;">
    <h1 style="color:#cdbfe3;">Complains View</h1> 
    <p style="color:#cdbfe3;">In This Page Admin See All Complains in Complete Detail. </p>     
      <center style="text-align: right" color:"#cdbfe3"><asp:Label runat="server"  ForeColor="#CDBFE3" style="font-size: large" ID="label3"></asp:Label></center>
  </div>
  <div class="container">
 
  <ul class="nav nav-tabs">
    <li ><a href="Admin.aspx">Home</a></li>
    <li class="active"><a href="Newpost.aspx">New Post</a></li>
    <li><a href="Allcomplain.aspx">All Complain</a></li>
    <li><a href="Login.aspx">LogOut</a></li>
  </ul>
  </div>
        <div>

        
            <table class="nav-justified">
                <tr>
                    <td class="auto-style1"><strong>Complain</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><b></b></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><b>Complainid</b></td>
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
