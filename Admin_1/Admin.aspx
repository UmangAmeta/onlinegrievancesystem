<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="cms.Admin.Admin" %>

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
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
  <div class="jumbotron" style="background-color: #563d7c;">
    <h1 style="color:#cdbfe3;">Admin Profile</h1> 
    
     <p style="color:#cdbfe3;">In This Page Admin Can Handel The Querys And Query Can Distribute Related to Department.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>     
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
  <br>
  <div class="container">
  <div class="panel-group">
    <div class="panel panel-primary">
      <div class="panel-heading">Call Monitoring System</div>
      <div class="panel-body">
      <h1>Gallary</h1>
      <div class="container" style="margin-right: 100px;">
  <br />
  <div style="width: 870px;" id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="/image/lab.jpg" alt="lab" width="460" height="345" />
        <div class="carousel-caption">
          <h3>Lab Related Problem</h3>
          <p>Lab Related Problems May have Problems Like Pc not available,software and Internet Related Problems.</p>
        </div>
      </div>

      <div class="item">
        <img src="/image/tap.jpg" alt="Chania" width="460" height="345" />
        <div class="carousel-caption">
          <h3>Hostel Related Problem</h3>
          <p>Hostel Related Problems. problems May have water related problems,food Related,Water and Room Cleaning also.  </p>
        </div>
      </div>
    
      <div class="item">
        <img src="/image/mac.jpg" alt="Flower" width="460" height="345" />
        <div class="carousel-caption">
          <h3>Machine Related Problem</h3>
          <p>Machine Related Problem are Resolved Here.</p>
        </div>
      </div>

      <div class="item">
        <img src="/image/lab.jpg" alt="Flower" width="460" height="345" />
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beatiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
      
      </div>
      
    </div>
  </div>
</div>
  
  
</div>
    </form>
</body>
</html>
