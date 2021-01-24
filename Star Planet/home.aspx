<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<script src="js/jquery.vide.min.js"></script>
	<div data-vide-bg="video/cook">
		<!-- banner -->
		<div class="banner">
			<div class="container">
				<div class="header">
					<div class="logo">
						<h1><a href="home.aspx" style="color:red">Kolsa Restaurant</a></h1>
					</div>
					<div class="top-nav">
						<nav class="navbar navbar-default">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">Menu						
								</button>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
                            <li><a class="active" href="home.aspx">Home</a></li>
                            <li><a href="aboutus.aspx">About</a></li>
					<li><a href="menu.aspx">Menu</a></li>
					<li><a href="todaysspecial.aspx">Todays Special</a></li>
					
                    <li><a href="testimonials.aspx">Testimonial</a></li>
                    <li><a href="feedback.aspx">Feedback</a></li>
                    <li><a href="signup.aspx">Signup</a></li>
					<li><a href="contactus.aspx">Contact Us</a></li>
                                    
                                    <%if (Session["email"] == null)
                                          { %>
                                    
                                        <a style="color:deeppink" href="login.aspx">Login</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <%}
                                          else
                                          { %>
                                    <a href="viewcart.aspx" style="color:purple"><img src="images/cart.jpg" alt="View cart" height="50" width="50" /></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <a href="Logout.aspx" style="color:purple">Logout</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                         Welcome <%=Session["username"] %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <%} %>
					

								</ul>	
							</div>	
						</nav>		
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="banner-info">
					<h2>The Best Desi Restaurant in Mumbai </h2>
					<p> Visit once to Experience Authentic Food .</p>
				</div>
				<div class="banner-grads">
					<div class="col-md-4 banner-grad">
						<div class="banner-grad-img">
							<img src="images/b1.jpg" alt="" />
							<h4>Chicken Tandoor</h4>
						</div>
					</div>
					<div class="col-md-4 banner-grad">
						<div class="banner-grad-img">
							<img src="images/b2.jpg" alt="" />
							<h4>Achari Aloo</h4>
						</div>
					</div>
					<div class="col-md-4 banner-grad">
						<div class="banner-grad-img">
							<img src="images/b3.jpg" alt="" />
							<h4>Chicken Moglai</h4>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //banner -->
	</div>

</asp:Content>

