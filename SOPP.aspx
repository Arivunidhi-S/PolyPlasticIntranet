<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SOPP.aspx.cs" Inherits="SOPP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width" />
    <title>Polyplastic | Policy</title>
    <!-- Included CSS Files-->
    <link rel="stylesheet" href="stylesheets/style.css">
    <link rel="stylesheet" href="stylesheets/skins/red.css">
    <!-- skin color -->
    <link rel="stylesheet" href="stylesheets/responsive.css">
    <style type = "text/css">

#iframe {
margin-top:20px;
margin-bottom:20px;
width:550px;
height:700px;
border: 1px solid silver; }

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- HIDDEN PANEL 
================================================== -->
        <%--<div id="panel">
	<div class="row">
		<div class="twelve columns">
			<img src="images/info.png" class="pics" alt="info">
			<div class="infotext">
				 Thank you for visiting my theme! Replace this with your message to visitors.
			</div>
		</div>
	</div>
</div>--%>
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
					
					<!--<li>
					<a href="#">Features</a>
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
                        Recruitment 
                    </p>
                    <p class="right">
                       Standard Operating Policies & Procedures
                    </p>
                </div>
            </div>
        </div>
        <div class="hr">
        </div>
        <!-- CONTENT 
================================================== -->
        <div class="row">
            <div class="twelve columns">
                <iframe src="http://docs.google.com/gview?url=http://www.serbaitproducts.com/PolyPlasticIntranet/Configure.pdf&embedded=true" width="800px" height="800px"  frameborder="0"></iframe>
                <%--<iframe src="Title.pdf#toolbar=0" width="800px" height="800px"  frameborder="0"></iframe>--%>
            </div>
        </div>
        <div class="hr">
        </div>
        <div class="copyright">
            <div class="row">
                <div class="six columns">
                    &copy;<span class="small"> Copyright 2016 Polyplastic</span>
                </div>
            </div>
        </div>
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
    </div>
    </form>
</body>
</html>
