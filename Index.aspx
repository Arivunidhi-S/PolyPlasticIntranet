<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width" />
    <title>Polyplastic | Home</title>
    <!-- Included CSS Files-->
    <link rel="stylesheet" href="stylesheets/style.css">
    <link rel="stylesheet" href="stylesheets/homepage.css">
    <!-- homepage stylesheet -->
    <link rel="stylesheet" href="stylesheets/skins/red.css">
    <!-- skin color -->
    <link rel="stylesheet" href="stylesheets/responsive.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- HIDDEN PANEL 
================================================== -->
        <!--<div id="panel">
	<div class="row">
		<div class="twelve columns">
			<img src="images/info.png" class="pics" alt="info">
			<div class="infotext">
				Thank you for visiting my theme! Replace this with your message to visitors.
			</div>
		</div>
	</div>
</div>-->
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
        <div id="subheader" class="subheadertext">
            <div class="row">
                <div class="twelve columns">
                    <div class="noslide">
                        <h1>
                            Solution Platform for Engineering Plastics™</h1>
                        <h3>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                            Ipsum has been the industry's standard dummy text ever since the 1500s.</h3>
                        <div class="minipause">
                        </div>
                        <br />
                        <%-- <a href="#" class="clear actbutton">Action Button</a>--%>
                    </div>
                </div>
            </div>
        </div>
        <!-- CLIENTS 
================================================== -->
        <div class="row">
            <div class="twelve columns">
                <div class="centersectiontitle">
                    <h4>
                        Recent Gallery</h4>
                </div>
            </div>
            <div class="twelve columns">
                <div class="image_carousel fitcarousel">
                    <div id="foo2">
                        <img src="images\Plastic\1.jpg" alt="" width="140" height="140" />
                         <img src="images\Plastic\2.jpg" alt="" width="140" height="140" />
                          <img src="images\Plastic\3.jpg" alt="" width="140" height="140" />
                           <img src="images\Plastic\4.jpg" alt="" width="140" height="140" />
                            <img src="images\Plastic\5.jpg" alt="" width="140" height="140" />
                             <img src="images\Plastic\6.jpg" alt="" width="140" height="140" />
                              <img src="images\Plastic\7.jpg" alt="" width="140" height="140" />
                       <%-- <img src="http://placehold.it/140x140/333" alt="" width="140" height="140" />--%>
                    </div>
                    <div class="clearfix">
                    </div>
                    <a class="prev" id="foo2_prev" href="#"><span>prev</span></a> <a class="next" id="foo2_next"
                        href="#"><span>next</span></a>
                </div>
            </div>
        </div>
        <!-- CONTENT 
================================================== -->
        <div class="row">
            <div class="twelve columns">
                <div class="centersectiontitle">
                    <h4>
                        Staff</h4>
                </div>
            </div>
             <%for (int aa = 0; aa < 3; aa++)
                          { %>
            <div class="four columns">
                <h5>
                    <%= dtStaffItems.Rows[aa][2].ToString()%></h5>
                <p>
                   Staff No :  <%= dtStaffItems.Rows[aa][1].ToString()%><br />
                   IC No :  <%= dtStaffItems.Rows[aa][8].ToString()%><br />
                   Contact No :  <%= dtStaffItems.Rows[aa][5].ToString()%><br />
                   E-mail :  <%= dtStaffItems.Rows[aa][7].ToString()%><%--<br />--%>
                </p>
                <p>
                  <%--  <a href="#" class="readmore">Learn more</a>--%>
                </p>
            </div>
             <% } %>
     <%--       <div class="four columns">
                <h5>
                    Artwork</h5>
                <p>
                    Swine short ribs meatball irure bacon nulla pork belly cupidatat meatloaf cow. Nulla
                    corned beef sunt ball tip, qui bresaola enim jowl. Capicola short ribs minim salami
                    nulla nostrud pastrami.
                </p>
                <p>
                    <a href="#" class="readmore">Learn more</a>
                </p>
            </div>--%>
           <%-- <div class="four columns">
                <h5>
                    Logos</h5>
                <p>
                    Swine short ribs meatball irure bacon nulla pork belly cupidatat meatloaf cow. Nulla
                    corned beef sunt ball tip, qui bresaola enim jowl. Capicola short ribs minim salami
                    nulla nostrud pastrami.
                </p>
                <p>
                    <a href="#" class="readmore">Learn more</a>
                </p>
            </div>--%>
        </div>
        <!-- TESTIMONIALS 
================================================== -->
        <div class="row">
            <div class="twelve columns">
                <div class="centersectiontitle">
                    <h4>
                        News</h4>
                </div>
            </div>
            <div class="row">
                <div class="twelve columns">
                    <div id="testimonials">
                        <%for (int aa = 0; aa < dtNewsItems.Rows.Count; aa++)
                          { %>
                        <blockquote>
                            <p>
                                "<%= dtNewsItems.Rows[aa][2].ToString()%>" <cite>
                                    <%= dtNewsItems.Rows[aa][1].ToString()%>
                                </cite>
                            </p>
                        </blockquote>
                        <% } %>
                    </div>
                    <!--end testimonials-->
                </div>
            </div>
            <!-- ANIMATED COLUMNS 
================================================== -->
            <div class="row">
                <div class="twelve columns">
                <div class="centersectiontitle">
                    <h4>
                        Department</h4>
                </div>
                    <ul class="ca-menu">

                    <%
                        string[] a = new string[4] { "F", "H","N", "K" };

                        for (int aa = 0; aa < 4; aa++)
                          
                        
                          { %>

                        <li><a href="#"><span class="ca-icon"><%= a[aa] %></span>
                            <div class="ca-content">
                                <h2 class="ca-main">
                                  <%= dtDeptItems.Rows[aa][4].ToString()%></h2>
                                <h3 class="ca-sub">
                                    <%= dtDeptItems.Rows[aa][2].ToString()%></h3>
                            </div>
                        </a></li>
                         <% } %>
                       <%-- <li><a href="#"><span class="ca-icon">H</span>
                            <div class="ca-content">
                                <h2 class="ca-main">
                                    Friendly<br />
                                    Documentation</h2>
                                <h3 class="ca-sub">
                                    Straight to the point</h3>
                            </div>
                        </a></li>
                        <li><a href="#"><span class="ca-icon">N</span>
                            <div class="ca-content">
                                <h2 class="ca-main">
                                    Alternate<br />
                                    Home Pages</h2>
                                <h3 class="ca-sub">
                                    Full slider, boxed or none</h3>
                            </div>
                        </a></li>
                        <li><a href="#"><span class="ca-icon">K</span>
                            <div class="ca-content">
                                <h2 class="ca-main">
                                    Filterable<br />
                                    Portofolio</h2>
                                <h3 class="ca-sub">
                                    Isotop & PrettyPhoto</h3>
                            </div>
                        </a></li>--%>
                    </ul>
                </div>
            </div>
            <div class="hr">
            </div>
            <!-- TWITTER
================================================== -->
           <%-- <div class="tweetarea">
                <div class="tweettext">
                    <div class="row">
                        <div class="twelve columns">
                            <div class="tweet">
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!-- FOOOTER 
================================================== -->
            <%--<div id="footer">
                <footer class="row">
	<p class="back-top floatright">
		<a href="#top"><span></span></a>
	</p>
	<div class="four columns">
		<h1>ABOUT US</h1>
		 Our goal is to keep clients satisfied!
	</div>
	<div class="four columns">
		<h1>GET SOCIAL</h1>
		<div class="social facebook">
			<a href="#"></a>
		</div>
		<div class="social twitter">
			<a href="#"></a>
		</div>
		<div class="social deviantart">
			<a href="#"></a>
		</div>
		<div class="social flickr">
			<a href="#"></a>
		</div>
		<div class="social dribbble">
			<a href="#"></a>
		</div>
	</div>
	<div class="four columns">
		<h1 class="newsmargin">NEWSLETTER</h1>
		<div class="row collapse newsletter floatright">
			<div class="ten mobile-three columns">
				<input type="text" class="nomargin" placeholder="Enter your e-mail address...">
			</div>
			<div class="two mobile-one columns">
				<a href="#" class="postfix button expand">GO</a>
			</div>
		</div>
	</div>
	</footer>
            </div>--%>
            <div class="copyright">
                <div class="row">
                    <div class="six columns">
                        &copy;<span class="small"> Copyright 2016 Polyplastic</span>
                    </div>
                    <!--<div class="six columns">
			<span class="small floatright"> Purchase "Studio Francesca" - WowThemes.net</span>
		</div>-->
                </div>
            </div>
            <!-- JAVASCRIPTS 
================================================== -->
            <!-- Javascript files placed here for faster loading -->
            <script src="javascripts/foundation.min.js"></script>
            <script src="javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
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
