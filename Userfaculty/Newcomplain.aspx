<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newcomplain.aspx.cs" Inherits="cms.Newcomplain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="ISO-8859-1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Complain Form</title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
            background-color: #3366CC;
        }
        .auto-style2 {
            height: 20px;
            font-size: large;
        }
        .auto-style3 {
            font-size: large;
            text-align: left;
        }
        .auto-style4 {
            height: 20px;
            font-size: large;
            text-align: left;
        }
        .auto-style5 {
            font-size: large;
            height: 24px;
            text-align: left;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            font-size: large;
            text-align: left;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
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
            
            <table align="center" class="nav-justified">
                               <tr>
                    <td class="auto-style1" colspan="2"><marquee>Query Form Plz Fill the Form</marquee></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><strong>Time</strong></td>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Date</strong></td>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Department</strong></td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="a" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Problem</strong></td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Problemdomain" DataValueField="Problemdomain" ValidationGroup="b" >
                            <asp:ListItem>......Select Value....</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmsConnectionString %>" SelectCommand="SELECT [Problemdomain] FROM [Problem]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Description</strong></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2" >
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Post" OnClick="Button1_Click" />
                    </td>
                </tr>
                
            </table>
          
        </div>
        </div>

    </form>
    
</body>
</html>
