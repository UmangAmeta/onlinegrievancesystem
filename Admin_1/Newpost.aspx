<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newpost.aspx.cs" Inherits="cms.Admin.Newcomplain" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
                    width: 100%;
                }
                .auto-style2 {
                    font-size: x-large;
                    text-align: left;
                }
                .auto-style3 {
                    font-size: large;
                    width: 190px;
                }
                .auto-style4 {
                    width: 190px;
                }
                .auto-style5 {
                    width: 190px;
                    font-size: medium;
                }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container">
  <div class="jumbotron" style="background-color: #563d7c;">
    <h1 style="color:#cdbfe3;">New Complain Post</h1> 
    <p style="color:#cdbfe3;">In This Page Admin See All Complain that are Post by user today. </p>     
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2" color:"#cdbfe3"><strong style="text-align: left">NEW POST</strong></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong style="text-align: right">DATE</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1">
                    </ajaxToolkit:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>DEPARTMENTNAME</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DepartmentName" DataValueField="DepartmentName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmsConnectionString %>" SelectCommand="SELECT [DepartmentName] FROM [Department]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" Width="1064px" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="ComplainId">
                            <ItemTemplate>
                              <a href="ComplainStatus.aspx?ComplainId=<%#Eval("ComplainId") %>">  <%# Eval("ComplainId") %></a>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Username">
                            <ItemTemplate>
                                <%# Eval("Username") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="DepartmentName">
                            <ItemTemplate>
                                <%# Eval("Departmentname") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                     <asp:TemplateField>
                         <ItemTemplate>
                              <a href="viewmores.aspx?ComplainId=<%#Eval("ComplainId") %>">View</a>
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
