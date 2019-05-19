<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workerregistration.aspx.cs" Inherits="cms.Admin.Workerregistration" %>

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
  <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
  <li><a data-toggle="tab" href="#Workerregistration">New Worker Registration</a></li>
  <li><a data-toggle="tab" href="#facregistration">New Faculty Registration</a></li>
  <li><a data-toggle="tab" href="#menu2">View Complaint</a></li>
  <li><a href="LogoutServlet">LogOut</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <h2>Mike Ross, Manager</h2>
    <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
  </div>
    <div id="Workerregistration" class="tab-pane fade">
    <center><h2>Worker Registration </h2></center>
    <form id="form1" runat="server" class="form-horizontal">
   <div class="form-group">
      <label class="control-label col-sm-2">Solution :</label><asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
&nbsp;<div class="col-sm-6">   
          <asp:DropDownList runat="server" class="form-control" ID="ddl1">
              <asp:ListItem>......Select......</asp:ListItem>
              <asp:ListItem>Cleaning Related</asp:ListItem>
              <asp:ListItem>Water Related</asp:ListItem>
              <asp:ListItem>Exam Related</asp:ListItem>
              <asp:ListItem>Sports Related,Gym</asp:ListItem>
              <asp:ListItem>Placement Related</asp:ListItem>
              <asp:ListItem>Diciplane Related</asp:ListItem>
              <asp:ListItem>Canteen Related</asp:ListItem>
              <asp:ListItem>Hostel Related</asp:ListItem>
              <asp:ListItem>Food Related</asp:ListItem>
              <asp:ListItem>Electricity Related</asp:ListItem>
              <asp:ListItem>Document Related</asp:ListItem>
              <asp:ListItem>Lab Related</asp:ListItem>
              <asp:ListItem>Ncc Related</asp:ListItem>
              <asp:ListItem>Event Related</asp:ListItem>
              <asp:ListItem>Accounts&Fee</asp:ListItem>
              <asp:ListItem>Civil Related</asp:ListItem>
           </asp:DropDownList>
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >First Name:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control" placeholder="Enter First Name" ID="FirstName"></asp:TextBox>
 <asp:RequiredFieldValidator runat="server" ErrorMessage="Firstname required" ControlToValidate="FirstName" ForeColor="Red"></asp:RequiredFieldValidator>     
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Middle Name:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control" ID="MiddleName" placeholder="Enter Middle Name" ></asp:TextBox>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Last Name:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control" ID="LastName" placeholder="Enter Last Name" ></asp:TextBox>
          <asp:RequiredFieldValidator runat="server" ErrorMessage="Lastname Required" ControlToValidate="LastName" ForeColor="Red"></asp:RequiredFieldValidator>     
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" >Date Of Birth:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control" ID="Dob" placeholder="DD/MM/YYYY"  ></asp:TextBox>
      
              <ajaxToolkit:CalendarExtender ID="Dob_CalendarExtender" runat="server" BehaviorID="Dob_CalendarExtender" TargetControlID="Dob">
          </ajaxToolkit:CalendarExtender>
      
              <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="Dob" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
         </div>
    <div class="form-group">
    <label class="control-label col-sm-2" >Gender:</label>
    	<label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton runat="server" ID="Male" Text="Male" GroupName="B"></asp:RadioButton>    
    </label>
    <label class="radio-inline">
      <asp:RadioButton runat="server" ID="Female" Text="Female" GroupName="B"></asp:RadioButton>    
          </label>
    </div>
    <div class="form-group">
    <label class="control-lable col-sm-2">Address:</label>
    <div class="col-sm-6">
        <asp:TextBox runat="server" class="form-control" placeholder="Address" ID="Address" TextMode="MultiLine" ></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Address  Required" ControlToValidate="Address" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    </div>
        <div class="form-group">
      <label class="control-label col-sm-2">State :</label>
      <div class="col-sm-6">   
          <asp:DropDownList runat="server" class="form-control" ID="State">
              <asp:ListItem>....Select State...</asp:ListItem>
              <asp:ListItem>Rajasthan</asp:ListItem>
          </asp:DropDownList>
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2">City :</label>
      <div class="col-sm-6">   
          <asp:DropDownList runat="server" class="form-control" ID="City">
              <asp:ListItem>....Select City...</asp:ListItem>
              <asp:ListItem>Ajmer</asp:ListItem>
              <asp:ListItem>Alawar</asp:ListItem>
              <asp:ListItem>Udaipur</asp:ListItem>
          </asp:DropDownList>
           </div>
      </div>
      
      <div class="form-group">
      <label class="control-label col-sm-2" >Email Id:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control"  ID="Email" TextMode="Email" placeholder="Enter Email Id"></asp:TextBox>
     <asp:RequiredFieldValidator runat="server" ErrorMessage="Email Required" ControlToValidate="Email" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
           </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Mobile No.:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control"  ID="Phone" TextMode="Number" placeholder="Enter Mobile Number"></asp:TextBox>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Number Required" ControlToValidate="Phone" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
      </div>
           <div class="form-group">
      <label class="control-label col-sm-2" >Aadhar No.:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control"  ID="Aadharno" TextMode="Number" placeholder="Enter Aadhar Name"></asp:TextBox>
<asp:RequiredFieldValidator runat="server" ErrorMessage="Aadhar no Required" ControlToValidate="Aadharno" ForeColor="Red"></asp:RequiredFieldValidator>      
      </div>
               </div>
          <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
          <asp:Button runat="server" Text="Submit" class="btn btn-default" OnClick="Unnamed8_Click"></asp:Button>
      </div>
      </div>
          </form>
        </div>
    </div>
        </div>
    
</body>
</html>
