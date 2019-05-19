<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Commonpage.aspx.cs" Inherits="cms.Commonpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="ISO-8859-1" />
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/admincss.css" />
    <title>Admin LogIn</title>
    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            min-width: 600px;
            margin: auto;
            min-height: 300px;
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

        <div class="jumbotron text-center">
            <h1 style="color: #15224f">CALL MONITORING SYSTEM</h1>
            <p style="color: gray;">
                The Call Monitoring System, abbreviated to CMS,
                is a centralized telephone interception provisioning
                system  installed by the Centre for Development of
                Telematics (C-DOT), an Indian Government owned
                telecommunications technology development centre,
                and operated by Telecom Enforcement Resource and
                Monitoring (TERM) Cells
            </p>
            <form class="form-inline">
                <div class="input-group">
                    <input type="email" class="form-control" size="50" placeholder="Email Address">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-danger">Subscribe</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="container" style="margin-top: 20px">
            <h1 style="color:MidnightBlue ;">Information</h1>
            <p>This Informations Here Show to What Type of Authorize Person can Login Here :</p>
            <blockquote class="blockquote-reverse">
                <p>Here Only Authorize Person Can Login that Authorize Person Can be like (Admin/Faculty/Student).But Make Sure that Person Registered to that Collage.</p>
                <footer>From CMS Information</footer>
            </blockquote>
        </div>
        <div class="container" style="width:500px; margin-left: 10px">
            <br>
            <div style="width: 500px" id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                    <li data-target="#myCarousel" data-slide-to="6"></li>
                    <li data-target="#myCarousel" data-slide-to="7"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner " role="listbox">

                    <div class="item active">
                        <img src="image/tap.jpg" alt="Chania" width="300" height="200" />
                        <div class="carousel-caption">
                            <h3>Hostel Related</h3>
                            <p>Hostel Related Problems. problems May have water related problems,food Related,Water and Room Cleaning also.  </p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="image/cleaning.jpg" alt="Cleaning" width="300" height="200" />
                        <div class="carousel-caption">
                            <h3>Cleaning Related Problems</h3>
                            <p>Cleaning Related Problems It may be Class Room Cleaning ,Floor Cleaning, Department Cleaning etc. </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/other.png" alt="Other Problems" width="300" height="200" />
                        <div class="carousel-caption">
                            <h3> Other Problems</h3>
                            <p>Other Problems (Related to Collage) Student/Faculty can Complains.</p>

                        </div>
                    </div>
                    <div class="item">
                        <img src="image/library.jpg" alt="library" width="300" height="200" />
                        <div class="carousel-caption">
                            <h3>Library Related Problems</h3>
                            <p>In The Library Related Problems May have Problems Like Proper Books not availables etc .</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/hostel.jpg" alt="Hostel Problems" width="300" height="200" />
                        <div class="carousel-caption">
                            <h3>Hostel Related Problems</h3>
                            <p>In The Hostel Related Problems Student Can Complains and Complains can be water,room cleaning and electricity related problems. </p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="image/lab.jpg" alt="Chania" width="300" height="200" />
                        <div class="carousel-caption">
                            <h3>Lab Related Problems</h3>
                            <p>In The Lab Related Problems May have Problems Like Pc's not available,software and Internet Related Problems.</p>
                        </div>
                    </div>



                    <div class="item">
                        <img src="image/mac.jpg" alt="Flower" width="300" height="200" />
                        <div class="carousel-caption">
                            <h3>Machine Related Problem</h3>
                            <p>Machine Related Problem are Resolved Here.</p>
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

        <div class="container" style="width: 400px; margin-right: 2px; margin-top: -300px;">
            <h2>Admin/Faculty LogIn Here</h2>
    <form id="form1" runat="server" class="form-horizontal">
   <div class="form-group" style="margin-top: 20px">
      <label class="control-label col-sm-3" for="email">Email&nbsp;&nbsp;&nbsp;:</label>
      <div class="col-sm-7">
          <asp:TextBox runat="server" class="form-control"  placeholder="Enter email" ID="Email_1"  TextMode="Email"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email_1"  ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Email Required</asp:RequiredFieldValidator>      
      <asp:RegularExpressionValidator ID="revEmailId" runat="server"
            ErrorMessage="Please enter valid email address"
            ControlToValidate="Email_1" Display="Dynamic"
            ForeColor="Red" SetFocusOnError="True"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </div>
    </div>
    <div class="form-group"  style="margin-top: 20px">
      <label class="control-label col-sm-3" for="pwd">Password:</label>
      <div class="col-sm-7">       
          <asp:TextBox runat="server" class="form-control" placeholder="Enter password" ID="Pass_1" TextMode="Password"></asp:TextBox>   
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pass_1" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Password should be required</asp:RequiredFieldValidator>
       
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-10">
          <p>
        <asp:Label ID="InvalidCredentialsMessage" runat="server" ForeColor="Red" Text="Your username or password is invalid. Please try again."
            Visible="False"></asp:Label>&nbsp;</p>
          <asp:Button runat="server" Text="Signin" class="btn btn-primary" ID="signin" OnClick="signin_Click"></asp:Button>
      </div>
    </div>
    </form>
             <a href="forgetform.html">Forget Password</a>
        </div>
    

    <div class="container" style="margin-top: 70px;">
        <div class="alert alert-success">
            <strong>Note!</strong> You Can Complains.&nbsp;&nbsp;<strong>Form Morning 9:00 AM to Evening 2:00PM.</strong>
        </div>
    </div>
    <div style="margin-top: 10px" class="footer-bottom">

        <div class="container">

            <div class="row">

                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

                    <div class="copyright">

                        © 2017,Call Monitoring System, All rights reserved

                    </div>

                </div>
                
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

                        <div class="design" style="margin-right:30px;">
                            <a href="#">Contact No. +918233337947</a>
                            <a href="#">CMS</a> |  <a target="_blank" href="http://www.webenlance.com">WebSite &amp; Development by Umang Ameta & Ravindra Singh Parihar</a>

                        </div>

                    </div>
                    
                </div>

        </div>
        </div>
    </div>
</body>
</html>
