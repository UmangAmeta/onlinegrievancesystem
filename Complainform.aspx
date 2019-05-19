<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Complainform.aspx.cs" Inherits="cms.Complainform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="ISO-8859-1" />
<title>Complaint Form</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="css/admincss.css" />
    <style>
.btn-default {
      background: #15224f;
      color: #fff;
   }
  .btn-default:hover {
      background: #fff;
      color:#15224f;
   }
   body.sansserif {
    font-family: Arial, Helvetica, sans-serif;
}
  </style>
</head>
<body>
    <div class="container">
    <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#myPage">CMS</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#services">SERVICES</a></li>
                        <li><a href="#portfolio">NEW COMPLAINTS</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="page-header">
    <h1 style="color: #15224f;font-size: 50px">Complaint Form <a href="#">
          <span class="glyphicon glyphicon-envelope"></span>
        </a> <a style=" float: right" class="btn btn-default btn-lg" href="admin.html">Home</a>  </h1>
        
  </div>
  <div style="background-color: gray; height: 50px">
    <h3 style="color: white;  padding-top: 13px; padding-left: 20px">Complaint Information</h3>      
 </div>
 <div class="form" style=" padding-top: 20px;">
    <form id="form1" runat="server" class="form-horizontal">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
   <div class="form-group">
      <label class="control-label col-sm-3">Problem Name :</label>
      <div class="col-sm-6">
          
          <asp:DropDownList runat="server" class="form-control selectpicker" ID="ddl1" AutoPostBack="True" OnSelectedIndexChanged="ddl1_SelectedIndexChanged" EnableViewState="true"> 
                 <asp:ListItem>...Select Problem...</asp:ListItem>
              <asp:ListItem>Cleaning</asp:ListItem>
              <asp:ListItem>Water</asp:ListItem>
              <asp:ListItem>Internet</asp:ListItem>
              <asp:ListItem>Lab Related</asp:ListItem>
              <asp:ListItem>Mess Related</asp:ListItem>
              <asp:ListItem>Health & Care</asp:ListItem>
              <asp:ListItem>Documentation Related</asp:ListItem>
              <asp:ListItem>Garden Maintain</asp:ListItem>
              <asp:ListItem>Sports Related</asp:ListItem>
              <asp:ListItem>Time Table</asp:ListItem>
              <asp:ListItem>Traning & Placement</asp:ListItem>
              <asp:ListItem>Discipline Related</asp:ListItem>
              <asp:ListItem>Bus/Transport Problem</asp:ListItem>
              <asp:ListItem>Security</asp:ListItem>
              <asp:ListItem>Library</asp:ListItem>
              <asp:ListItem>Scholorship</asp:ListItem>
              <asp:ListItem>University</asp:ListItem>
              <asp:ListItem>Event Related</asp:ListItem>
              <asp:ListItem>Ncc & Nss</asp:ListItem>
          </asp:DropDownList>
            </div>
      </div>
        <div class="form-group">
      <label class="control-label col-sm-3">Problem Domain :</label>
      <div class="col-sm-6">   
          <asp:DropDownList runat="server" class="form-control selectpicker" ID="DropDownList1">
          </asp:DropDownList>
      </div>
      </div>
    
      <div class="form-group">
      <label class="control-label col-sm-3">Urgency Of this Complaint :</label>
      <div class="col-sm-6">   
          <asp:DropDownList runat="server" class="form-control selectpicker" ID="ddl2">
              <asp:ListItem>High</asp:ListItem>
              <asp:ListItem>Low</asp:ListItem>
          </asp:DropDownList>
      </div>
      </div>
      
      <div style="background-color: gray; height: 50px">
    <h3 style="color: white; padding-top: 13px; padding-left: 20px">Reporting Parties Information :</h3>      
 </div>
 <div class="form-group" style=" padding-top: 20px;">
      <label class="control-label col-sm-3" >Your Full Name:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control" placeholder="Enter First Name" ID="Firstname"></asp:TextBox>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3">Select Role :</label>
      <div class="col-sm-6">   
      <asp:DropDownList runat="server" class="form-control selectpicker" ID="DropDownList2">
              <asp:ListItem>Faculty</asp:ListItem>
              <asp:ListItem>Student</asp:ListItem>
          <asp:ListItem>Other</asp:ListItem>
          </asp:DropDownList>
      </div>
      </div>
      <div class="form-group">
      <label class="control-label col-sm-3" >Mobile No. :</label>
      <div class="col-sm-6">
        <asp:TextBox runat="server" class="form-control" placeholder="Enter Mobile Number" ID="TextBox1" TextMode="Number"></asp:TextBox>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Aadhar No. :</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control" placeholder="Enter Aadharno" ID="TextBox2" TextMode="Number"></asp:TextBox>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Email Id :</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control" placeholder="Enter Email" ID="TextBox3" TextMode="Email"></asp:TextBox>
      </div>
    </div>
    <div>
    <label class="control-label col-sm-10" style="color: red;">**&nbsp;If You are faculty and Student than Select Department/Branch Other wise left.</label>
    </div>
    <br>
    <div class="form-group">
      <label class="control-label col-sm-3">Department/Branch :</label>
      <div class="col-sm-6">   
      <asp:DropDownList runat="server" class="form-control selectpicker" ID="DropDownList3">
          <asp:ListItem>....Select Department/Branch....</asp:ListItem>
              <asp:ListItem>AE</asp:ListItem>
              <asp:ListItem>CE</asp:ListItem>
          <asp:ListItem>CSE</asp:ListItem>
          <asp:ListItem>ECE</asp:ListItem>
          <asp:ListItem>EE</asp:ListItem>
          <asp:ListItem>ME</asp:ListItem>
          <asp:ListItem>MCA</asp:ListItem>
          <asp:ListItem>MBA</asp:ListItem>
          <asp:ListItem>Chemistery</asp:ListItem>
          <asp:ListItem>Mathmatics</asp:ListItem>
          <asp:ListItem>Physics</asp:ListItem>
          <asp:ListItem>Humanities&TPO</asp:ListItem>
          </asp:DropDownList>
      </div>
      </div>
    <div style="background-color: gray; height: 50px">
    <h3 style="color: white; padding-top: 13px; padding-left: 20px">Complaint Information :</h3>      
 </div>
 <div class="form-group" style=" padding-top: 20px;">
 <label class="control-label col-sm-3">Please Provide a Summary of your Complaint. Provide as Much Detail as Possible.</label>
    <div class="col-sm-6">
    <textarea class="form-control" id="comments" name="address" placeholder="Description " rows="5" required="required"></textarea>
    </div>
    </div>
    <center>
    <button type="button" class="btn btn-default btn-lg">Submit Complaint</button>
 </center>
 </form>
 </div>
</div>
    
</body>
</html>
