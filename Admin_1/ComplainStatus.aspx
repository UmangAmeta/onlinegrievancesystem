<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplainStatus.aspx.cs" Inherits="cms.Admin.ComplainStatus" %>

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
                    text-align: center;
                    font-size: x-large;
                }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
  <div class="jumbotron" style="background-color: #563d7c;">
    <h1 style="color:#cdbfe3;">Change Status</h1> 
    <p style="color:#cdbfe3;">In This Page Admin Change the Status of Complain When they are Complete.</p>     
  <center style="text-align: right" color:"#cdbfe3"><asp:Label runat="server"  ForeColor="#CDBFE3" style="font-size: large" ID="label3"></asp:Label></center>
  </div>
  
 <div class="container">
  <h3>Tabs</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a href="Admin.aspx">Home</a></li>
    <li ><a href="Newpost.aspx">New Complain</a></li>
    <li><a href="Allcomplain.aspx">All Complain</a></li>
    <li><a href="../Login.aspx">Log out</a></li>
  </ul>
  </div>
        <div>

            <table class="nav-justified">
                <tr>
                    <td class="auto-style1" colspan="2"><strong>ComplainStatus</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><b>ComplainId</b></td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>ComplainStaus</b></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ChangeStatus" />
                    </td>
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
