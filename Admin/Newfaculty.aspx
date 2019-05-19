<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newfaculty.aspx.cs" Inherits="cms.Admin.Newfaculty" %>

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
  <li><a data-toggle="tab" href="#workerregistration">New Worker Registration</a></li>
  <li><a data-toggle="tab" href="#facregistration">New Faculty Registration</a></li>
  <li><a data-toggle="tab" href="#menu2">View Complaint</a></li>
  <li><a href="LogoutServlet">LogOut</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <h2>Mike Ross, Manager</h2>
    <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
  </div>
  <div id="facregistration" class="tab-pane fade">
    <center><h2>Faculty Registration </h2></center>
    <form id="form1" runat="server" class="form-horizontal">
     <div class="form-group">
      <label class="control-label col-sm-2">Solution :</label><asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
&nbsp;<div class="col-sm-6">   
          <asp:DropDownList runat="server" class="form-control" ID="ddl1">
              <asp:ListItem>......Select......</asp:ListItem>
              <asp:ListItem>Principal</asp:ListItem>
              <asp:ListItem>Wice Principal</asp:ListItem>
              <asp:ListItem>Diciplane</asp:ListItem>
              <asp:ListItem>Hod</asp:ListItem>
              <asp:ListItem>Assitant Professor</asp:ListItem>
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
      <label class="control-label col-sm-2" >Password:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control"  ID="Password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Password Required" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>   
      </div>
      </div>
      <div class="form-group">
      <label class="control-label col-sm-2" >ReEnter Password:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control"  ID="Reenter" TextMode="Password" placeholder="Re Enter Password"></asp:TextBox>
      <asp:RequiredFieldValidator runat="server" ErrorMessage="Reenter Password required" ControlToValidate="Reenter" ForeColor="Red"></asp:RequiredFieldValidator>        
      <asp:CompareValidator runat="server" ErrorMessage="Password is not match" ControlToValidate="Reenter" ControlToCompare="Password" ForeColor="Red"></asp:CompareValidator>
      </div>
      </div>
      <div class="form-group">
    <label class="control-label col-sm-2" >Qualification:</label>
    	<label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton runat="server" Text="B.E/B.Tech" ID="RadioButton1" GroupName="A"></asp:RadioButton>
                </label>
    <label class="radio-inline">
        <asp:RadioButton runat="server" Text="M.Tech" ID="RadioButton2" GroupName="A"></asp:RadioButton>
    </label>
    <label class="radio-inline">
        <asp:RadioButton runat="server" Text="MBA" ID="RadioButton3" GroupName="A"></asp:RadioButton>
    </label>
    <label class="radio-inline">
        <asp:RadioButton runat="server" Text="MBA(HR)" ID="RadioButton4" GroupName="A"></asp:RadioButton>
          </label>
    <label class="radio-inline">
      <asp:RadioButton runat="server" Text="MBA(IT)" ID="RadioButton5" GroupName="A"></asp:RadioButton>
    </label>
    <br \>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="radio-inline">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton runat="server" Text="MCA" ID="RadioButton6" GroupName="A"></asp:RadioButton>
    </label>
    <label class="radio-inline">
      <asp:RadioButton runat="server" Text="PHD" ID="RadioButton7" GroupName="A"></asp:RadioButton>
    </label>
    <label class="radio-inline">
        <asp:RadioButton runat="server" Text="Post Graduate(English)" ID="RadioButton8" GroupName="A"></asp:RadioButton>
      
    </label>
    <label class="radio-inline">
        <asp:RadioButton runat="server" Text="Post Graduate(Management)" ID="RadioButton9" GroupName="A"></asp:RadioButton>
    </label>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" >Aadhar No.:</label>
      <div class="col-sm-6">
          <asp:TextBox runat="server" class="form-control"  ID="Aadharno" TextMode="Number" placeholder="Enter Aadhar Name"></asp:TextBox>
<asp:RequiredFieldValidator runat="server" ErrorMessage="Aadhar no Required" ControlToValidate="Aadharno" ForeColor="Red"></asp:RequiredFieldValidator>      
      </div>

    </div>
    <div class="form-group">
      <label class="control-label col-sm-2">Select Branch :</label>
      <div class="col-sm-6">   
          <asp:DropDownList runat="server" class="form-control" ID="selectbranch">
              <asp:ListItem>....Select Branch...</asp:ListItem>
              <asp:ListItem>Automobile</asp:ListItem>
              <asp:ListItem>Chemistery</asp:ListItem>
              <asp:ListItem>Civil</asp:ListItem>
              <asp:ListItem>CSE</asp:ListItem>
              <asp:ListItem>ECE</asp:ListItem>
              <asp:ListItem>EE</asp:ListItem>
              <asp:ListItem>English</asp:ListItem>
              <asp:ListItem>Humanities&amp;TPO</asp:ListItem>
              <asp:ListItem>Mathmatics</asp:ListItem>
              <asp:ListItem>MBA</asp:ListItem>
              <asp:ListItem>MCA</asp:ListItem>
              <asp:ListItem>Mechanical</asp:ListItem>
              <asp:ListItem>Physics</asp:ListItem>
          </asp:DropDownList>
      </div>
      </div>
      <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
          <asp:Button runat="server" Text="Submit" class="btn btn-default" OnClick="Unnamed1_Click" ></asp:Button>
      </div>
      </div>
          </form>
      </div>
    </div>
       
</body>
</html>
