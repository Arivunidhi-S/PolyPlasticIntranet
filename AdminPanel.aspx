<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width" />
    <title>Polyplastic | AdminPanel</title>
    <!-- Included CSS Files-->
    <link rel="stylesheet" href="stylesheets/style.css">
    <link rel="stylesheet" href="stylesheets/skins/red.css">
    <!-- skin color -->
    <link rel="stylesheet" href="stylesheets/responsive.css">
    <style type="text/css">
        .ih-item
        {
            position: relative;
            -webkit-transition: all 0.35s ease-in-out;
            -moz-transition: all 0.35s ease-in-out;
            transition: all 0.35s ease-in-out;
        }
        .ih-item, .ih-item *
        {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .ih-item a
        {
            color: #333;
        }
        .ih-item a:hover
        {
            text-decoration: none;
        }
        .ih-item img
        {
            width: 100%;
            height: 100%;
        }
        
        
        /* this is important for All Square */
        
        
        
        .ih-item.square
        {
            position: relative;
            width: 316px;
            height: 216px;
            border: 8px solid #fff;
            box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
        }
        .ih-item.square .info
        {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            text-align: center;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
        }
        /* this is only for Effects */.ih-item.square.effect10
        {
            overflow: hidden;
        }
        .ih-item.square.effect10.colored .info
        {
            background: #1a4a72;
        }
        .ih-item.square.effect10.colored .info h3
        {
            background: rgba(12, 34, 52, 0.6);
        }
        .ih-item.square.effect10 .img
        {
            -webkit-transition: all 0.35s ease-in-out;
            -moz-transition: all 0.35s ease-in-out;
            transition: all 0.35s ease-in-out;
        }
        .ih-item.square.effect10 .info
        {
            background: #333333;
            visibility: hidden;
            opacity: 0;
            -webkit-transition: all 0.35s ease-in-out;
            -moz-transition: all 0.35s ease-in-out;
            transition: all 0.35s ease-in-out;
        }
        .ih-item.square.effect10 .info h3
        {
            text-transform: uppercase;
            color: #fff;
            text-align: center;
            font-size: 17px;
            padding: 10px;
            background: #111111;
            margin: 30px 0 0 0;
        }
        .ih-item.square.effect10 .info p
        {
            font-style: italic;
            font-size: 12px;
            position: relative;
            color: #bbb;
            padding: 20px 20px 20px;
            text-align: center;
        }
        .ih-item.square.effect10 a:hover .info
        {
            visibility: visible;
            opacity: 1;
        }
        .ih-item.square.effect10.left_to_right .img
        {
            -webkit-transform: translateX(0);
            -moz-transform: translateX(0);
            -ms-transform: translateX(0);
            -o-transform: translateX(0);
            transform: translateX(0);
        }
        .ih-item.square.effect10.left_to_right .info
        {
            -webkit-transform: translateX(-100%);
            -moz-transform: translateX(-100%);
            -ms-transform: translateX(-100%);
            -o-transform: translateX(-100%);
            transform: translateX(-100%);
        }
        .ih-item.square.effect10.left_to_right a:hover .img
        {
            -webkit-transform: translateX(100%);
            -moz-transform: translateX(100%);
            -ms-transform: translateX(100%);
            -o-transform: translateX(100%);
            transform: translateX(100%);
        }
        .ih-item.square.effect10.left_to_right a:hover .info
        {
            -webkit-transform: translateX(0);
            -moz-transform: translateX(0);
            -ms-transform: translateX(0);
            -o-transform: translateX(0);
            transform: translateX(0);
        }
        .ih-item.square.effect10.right_to_left .img
        {
            -webkit-transform: translateX(0);
            -moz-transform: translateX(0);
            -ms-transform: translateX(0);
            -o-transform: translateX(0);
            transform: translateX(0);
        }
        .ih-item.square.effect10.right_to_left .info
        {
            -webkit-transform: translateX(100%);
            -moz-transform: translateX(100%);
            -ms-transform: translateX(100%);
            -o-transform: translateX(100%);
            transform: translateX(100%);
        }
        .ih-item.square.effect10.right_to_left a:hover .img
        {
            -webkit-transform: translateX(-100%);
            -moz-transform: translateX(-100%);
            -ms-transform: translateX(-100%);
            -o-transform: translateX(-100%);
            transform: translateX(-100%);
        }
        .ih-item.square.effect10.right_to_left a:hover .info
        {
            -webkit-transform: translateX(0);
            -moz-transform: translateX(0);
            -ms-transform: translateX(0);
            -o-transform: translateX(0);
            transform: translateX(0);
        }
        .ih-item.square.effect10.top_to_bottom .img
        {
            -webkit-transform: translateY(0);
            -moz-transform: translateY(0);
            -ms-transform: translateY(0);
            -o-transform: translateY(0);
            transform: translateY(0);
        }
        .ih-item.square.effect10.top_to_bottom .info
        {
            -webkit-transform: translateY(-100%);
            -moz-transform: translateY(-100%);
            -ms-transform: translateY(-100%);
            -o-transform: translateY(-100%);
            transform: translateY(-100%);
        }
        .ih-item.square.effect10.top_to_bottom a:hover .img
        {
            -webkit-transform: translateY(100%);
            -moz-transform: translateY(100%);
            -ms-transform: translateY(100%);
            -o-transform: translateY(100%);
            transform: translateY(100%);
        }
        .ih-item.square.effect10.top_to_bottom a:hover .info
        {
            -webkit-transform: translateY(0);
            -moz-transform: translateY(0);
            -ms-transform: translateY(0);
            -o-transform: translateY(0);
            transform: translateY(0);
        }
        .ih-item.square.effect10.bottom_to_top .img
        {
            -webkit-transform: translateY(0);
            -moz-transform: translateY(0);
            -ms-transform: translateY(0);
            -o-transform: translateY(0);
            transform: translateY(0);
        }
        .ih-item.square.effect10.bottom_to_top .info
        {
            -webkit-transform: translateY(100%);
            -moz-transform: translateY(100%);
            -ms-transform: translateY(100%);
            -o-transform: translateY(100%);
            transform: translateY(100%);
        }
        .ih-item.square.effect10.bottom_to_top a:hover .img
        {
            -webkit-transform: translateY(-100%);
            -moz-transform: translateY(-100%);
            -ms-transform: translateY(-100%);
            -o-transform: translateY(-100%);
            transform: translateY(-100%);
        }
        .ih-item.square.effect10.bottom_to_top a:hover .info
        {
            -webkit-transform: translateY(0);
            -moz-transform: translateY(0);
            -ms-transform: translateY(0);
            -o-transform: translateY(0);
            transform: translateY(0);
        }
        
        .col-sm-6
        {
            position: relative;
            min-height: 1px;
            padding-left: 15px;
            padding-right: 15px;
            float: left;
            width: 50%;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#posts").accordion({
                header: "div.tab",
                alwaysOpen: false,
                autoheight: false
            });
        });
</script>
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
                        ADMIN PANEL
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
                    <div class="four columns">
                        <div class="ih-item square effect10 left_to_right">
                            <a href="Staff.aspx">
                                <div class="spinner">
                                </div>
                                <div class="img">
                                    <img src="img/team.png" alt="img"></div>
                                <div class="info">
                                    <div class="info-back">
                                        <h3>
                                            Staff Details</h3>
                                        <p>
                                            Click here</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="four columns">
                        <div class="ih-item square effect10 right_to_left">
                            <a href="Department.aspx">
                                <div class="spinner">
                                </div>
                                <div class="img">
                                    <img src="img/human.png" alt="img"></div>
                                <div class="info">
                                    <div class="info-back">
                                        <h3>
                                            Department Details</h3>
                                        <p>
                                            Click here</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="four columns">
                        <div class="ih-item square effect10 left_to_right">
                            <a href="News.aspx">
                                <div class="spinner">
                                </div>
                                <div class="img">
                                    <img src="img/news.png" alt="img"></div>
                                <div class="info">
                                    <div class="info-back">
                                        <h3>
                                            News Details</h3>
                                        <p>
                                            Click here</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
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
    </div>
    </form>
</body>
</html>
