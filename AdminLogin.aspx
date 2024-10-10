<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
 <title>Polyplastic | AdminLogin</title>
<!-- Included CSS Files-->
<link rel="stylesheet" href="stylesheets/style.css">
<link rel="stylesheet" href="stylesheets/skins/red.css"><!-- skin color -->
<link rel="stylesheet" href="stylesheets/responsive.css">
<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <p class="slide">
            <a href="#" class="btn-slide"></a>
        </p>
        <!-- HEADER
================================================== -->
        <div class="row">
            <div class="four columns">
                <div class="logo">
                    <!--<a href="index.html"><h4>Studio Francesca</h4></a>-->
                    <img src="images/header_logo.jpg" alt="" />
                </div>
            </div>
            <div class="eight columns noleftmarg">
                <nav id="nav-wrap">
				<ul class="nav-bar sf-menu">
				
					<li class="current">
					<a href="Index.aspx">Home</a>
						<!--<ul>
												
						<li><a href="index2.html">Without slider</a></li>						
						</ul>-->
					</li>
					
					<li>
					<a href="#">Policy</a>
						<ul>
						<li><a href="SOPP.aspx">SOPP</a></li>
						<li><a href="RecruitmentPolicy.aspx">Recruitment Policy 11</a></li>
						<!--<li><a href="portofolio4.html">4 Columns</a></li>						
						<li><a href="portofoliodetail.html">Project Details</a></li>-->
						</ul>
					</li>
					
					<li>
					<a href="Survey.html">Survey</a>
						<!--<ul>
						<li><a href="blogpage1.html">Blog page style 1</a></li>
						<li><a href="blogpage2.html">Blog page style 2</a></li>
						<li><a href="blogpage3.html">Blog page style 3</a></li>
						<li><a href="blogsinglepost.html">Single post</a></li>
						</ul>-->
					</li>
					
					<li>
					<a href="Feedback.html">Feedback</a>
						<!--<ul>
						<li><a href="about.html">About us</a></li>
						<li><a href="services.html">Services</a></li>						
						</ul>-->
					</li>
					
					<li>
					<!--<a href="#">Features</a>
						<ul>
						<li><a href="columns.html">Columns</a></li>
						<li><a href="elements.html">Elements</a></li>
						<li><a href="typography.html">Typography</a></li>
						</ul>
					</li>
					-->
					<li>
					<a href="contact.html">Contact</a>
					</li>
					
				</ul>
				</nav>
            </div>
        </div>
        <div class="clear">
        </div>
                 <!-- SUBHEADER
================================================== -->
        <div id="subheader">
            <div class="row">
                <div class="twelve columns">
                    <p class="left">
                        ADMIN LOGIN
                    </p>
                    <p class="right">
                       <%-- Meet Our Team--%>
                    </p>
                </div>
            </div>
        </div>
        <div class="hr">
        </div>
    <div class="row">
	<!-- CONTACT FORM -->
	<div class="twelve columns">
		<div class="wrapcontact">
			<%--<h5>Admin Login</h5>--%>
			<div class="done">
				<div class="alert-box success">
				 Message has been sent! <a href="" class="close">x</a>
				</div>
			</div>			
				<form method="post" action="contact.php" id="contactform">
				<div class="form">
				    <div class="six columns noleftmargin">
					<label>User name</label>
                     <asp:TextBox ID="txtUserID" runat="server" class="smoothborder" placeholder="Enter User name *"></asp:TextBox>
					<%--<input type="text" name="name" class="smoothborder" />--%>
					</div>
					<div class="six columns">
					<label>Password</label>
                     <asp:TextBox ID="txtPassword" runat="server"  TextMode="Password" class="smoothborder" placeholder="Enter Password *"
                                                Font-Bold="true" Font-Names="Arial"></asp:TextBox>
					<%--<input type="password" name="email" class="smoothborder" placeholder="Enter Password *"/>--%>
					</div>
                     <asp:Button ID="btnSignin" runat="server" Text="Sign In" OnClick="btnSignin_OnClick"/>
                    	<%--<input type="submit" id="submit" class="readmore" value="Submit">--%>
					<%--<label>Message</label>
					<textarea name="comment" class="smoothborder ctextarea" rows="14" placeholder="Message, feedback, comments *"></textarea>
				--%>
				</div>
				</form>			
		</div>
	</div>
												
</div>
<%--<div class="copyright">
	<div class="row">
		<div class="six columns">
			 &copy;<span class="small"> Copyright 2013 Your Agency Name</span>
		</div>
		<div class="six columns">
			<span class="small floatright"> Purchase "Studio Francesca" - WowThemes.net</span>
		</div>
	</div>
</div>--%>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/formvalidation.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
<script src="javascripts/jquery.tweet.js"></script>
<script src="javascripts/twitterusername.js"></script>
</body>
    </div>
    </form>
</body>
</html>
