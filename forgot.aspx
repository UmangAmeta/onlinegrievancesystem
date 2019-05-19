<%@ Page Language="C#" AutoEventWireup="true" codefile="forgot.aspx.cs" Inherits="cms.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="ISO-8859-1" />
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/admincss.css"/>
<title>Forgot Page</title>
</head>
<body>
    <div class="container">
    <div class="bd-pageheader text-xs-center text-sm-left">
    <h1 style="word-spacing:20px;">CALL MONITORING SYSTEM</h1>
    <p style="font-size: 15px; word-spacing: 8px;line-height:1;">The Call Monitoring System, abbreviated to CMS, 
    is a centralized telephone interception provisioning 
    system  installed by the Centre for Development of 
    Telematics (C-DOT), an Indian Government owned 
    telecommunications technology development centre,
     and operated by Telecom Enforcement Resource and 
     Monitoring (TERM) Cells</p>      
  </div>
  </div>
    <div class="container" style="margin-top: 0px;">
  <div class="alert alert-success">
    <marquee><strong>Please Enter email Here..</strong> </marquee>
  </div>
        </div>
    <form id="form1" runat="server" class="form-horizontal">
     <div class="form-group" style="margin-top: 20px">
      <label class="control-label col-sm-3" for="email">Email&nbsp;&nbsp;&nbsp;:</label>
      <div class="col-sm-7">
          <asp:TextBox runat="server" placeholder="Enter email" class="form-control" ID="txtEmailId"></asp:TextBox>
          <asp:RegularExpressionValidator ID="revEmailId" runat="server"
            ErrorMessage="Please enter valid email address"
            ControlToValidate="txtEmailId" Display="Dynamic"
            ForeColor="Red" SetFocusOnError="True"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-10">
          <asp:Button runat="server" Text="Search" class="btn btn-primary" OnClick="Button_1"></asp:Button>
          <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
      </div>
       
    </div>

    </form>
</body>
</html>
