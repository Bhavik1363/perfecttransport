<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Payment_confirmation.aspx.cs" Inherits="Client_Payment_confirmation" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
	    <title>Contact Us | Perfect Transport Pvt. Ltd.</title>
	    <!-- Meta tag Keywords -->
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta charset="UTF-8" />
	    <meta name="keywords" content="Transports Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
	    <script>
	        addEventListener("load", function () {
	            setTimeout(hideURLbar, 0);
	        }, false);

	        function hideURLbar() {
	            window.scrollTo(0, 1);
	        }
	    </script>
	    <!--// Meta tag Keywords -->

	    <!-- Custom-Files -->
	    <link rel="stylesheet" href="css/bootstrap.css">
	    <!-- Bootstrap-Core-CSS -->
	    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" media="all" />
	    <!-- Owl-Carousel-CSS -->
	    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	    <!-- Style-CSS -->
	    <link rel="stylesheet" href="css/fontawesome-all.css">
	    <!-- Font-Awesome-Icons-CSS -->
	    <!-- //Custom-Files -->

	    <!-- Web-Fonts -->
	    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
	        rel="stylesheet">
	    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	    <!-- //Web-Fonts -->

    </head>

    <body>
        <!-- header -->
	<header>
		<!-- navigation -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.aspx">
				<i class="fas fa-truck mr-2"></i>Perfect Transport Pvt. Ltd.</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			    aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto text-center mr-lg-5">
					<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
						<a class="nav-link" href="index.aspx">Home</a>
					</li>
					<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link" href="services.aspx">Services</a>
					</li>
                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
						<a class="nav-link" href="gallery.aspx">Gallery</a>
					</li>
					<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
						<a class="nav-link" href="booking.aspx">Booking</a>
					</li>
					<li class="nav-item mr-lg-2 mb-lg-0 mb-2">
						<a class="nav-link" href="contactus.aspx">Contact Us</a>
					</li>
                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
						<a class="nav-link" href="aboutus.aspx">About Us</a>
					</li>
                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
						<a class="nav-link" href="login.aspx">Log Out</a>
					</li>
				</ul>
				<!--<form class="navbar-form" role="search" action="#" method="post">
					<div class="input-group">
						<input type="search" class="form-control pull-right" placeholder="Search" required="">
						<span class="input-group-btn">
							<button type="reset" class="btn btn-default">
								<span class="glyphicon fas fa-times">
									<span class="sr-only">Close</span>
								</span>
							</button>
							<button type="submit" class="btn btn-default">
								<span class="fas fa-search">
									<span class="sr-only">Search</span>
								</span>
							</button>
						</span>
					</div>
				</form>-->
			</div>
		</nav>
		<!-- //navigation -->

	</header>
	<!-- //header -->

		    <!-- inner banner -->
		    <div class="inner-banner text-center text-white">
			
		    </div>
		    <!-- //inner banner -->


	    <!-- contact -->
        <div class="container py-xl-5 py-lg-3">
			    <h3 class="title mb-sm-4 mb-3">
				    <span>T</span>ransaction
				    <span>S</span>tatus</h3>
			    <div class="row">
				    <div class="col-lg-7 contact-grid-agiles-w3l my-auto">
					    
					    <div class="contact-right2 my-auto mx-auto">
						    <div class="row call">
                                <div class="col-12 contact-grdr-w3l">
								    <h3 runat="server" id="h1Messasge" class="lead strong"></h3>
                                     <em runat="server" id="pTxnId"></em>
                                     <em runat="server" id="OrderId"></em>
                                     <em runat="server" id="BID"></em>
							    </div>
							    <form id="Form1" runat="server">
                                <asp:Button Text="Generate Invoice" OnClick="GenerateInvoicePDF" runat="server" />
                                </form>
						    </div>
						    
					    </div>
				    </div>
				    <div class="col-lg-5 contact-right1 text-center mt-lg-0 mt-sm-5 mt-4">
					    <img src="images/contact.png" alt="" height="30%" width="30%" class="img-fluid"/>
				    </div>
			    </div>
		    </div>
	    <!-- //contact -->

	   




	    <!-- Js files -->
	    <!-- JavaScript -->
	    <script src="js/jquery-3.3.1.min.js"></script>
	    <!-- Default-JavaScript-File -->

	    <script src="js/bootstrap.js"></script>
	    <!-- Necessary-JavaScript-File-For-Bootstrap -->

	    <!-- search -->
	    <script src="js/search.js"></script>

	    <!-- smooth scrolling -->
	    <script src="js/SmoothScroll.min.js"></script>
	    <!-- //smooth scrolling -->

	    <!-- start-smoth-scrolling -->
	    <script src="js/move-top.js"></script>
	    <script src="js/easing.js"></script>
	    <script>
	        jQuery(document).ready(function ($) {
	            $(".scroll").click(function (event) {
	                event.preventDefault();
	                $('html,body').animate({
	                    scrollTop: $(this.hash).offset().top
	                }, 1000);
	            });
	        });
	    </script>
	    <!-- start-smoth-scrolling -->

	    <!-- smooth scrolling-bottom-to-top -->
	    <script>
	        $(document).ready(function () {
	            /*
	            var defaults = {
	            containerID: 'toTop', // fading element id
	            containerHoverID: 'toTopHover', // fading element hover id
	            scrollSpeed: 1200,
	            easingType: 'linear' 
	            };
	            */
	            $().UItoTop({
	                easingType: 'easeOutQuart'
	            });
	        });
	    </script>
	    <a href="#" id="toTop" style="display: block;">
		    <span id="toTopHover" style="opacity: 1;"> </span>
	    </a>
	    <!-- //smooth scrolling-bottom-to-top -->
	    <!-- //Js files -->
        <footer class="py-md-5 py-4">
		<div class="container">
			<div class="row w3ls_footer_grid text-lg-left text-center pb-lg-5 pb-4 mt-xl-4 mt-1 mb-xl-5 mb-4">
				<div class="col-lg-5 footer-w3l">
					<h5>All India Transport with in 24 hours</h5>
				</div>
				<div class="col-lg-7 w3ls_footer_grid1_right text-lg-right text-center">
					<ul>
						<li class="mr-3">
							<a href="index.aspx">Home</a>
						</li>
						<li class="mr-3">
							<a href="services.aspx">Services</a>
						</li>
						<li class="mr-3">
							<a href="gallery.aspx">Gallery</a>
						</li>
                        <li class="mr-3">
							<a href="contactus.aspx">Contact Us</a>
						</li>
                        <li class="mr-3">
							<a href="aboutus.aspx">About Us</a>
						</li>
                        <li class="mr-3">
						    <a href="login.aspx">Log Out</a>
					    </li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-6 w3ls_footer_grid_right">
					<h1>
						<a href="index.aspx">
							<i class="fas fa-truck mr-2"></i>Perfect Transport Pvt. Ltd.</a>
					</h1>
                    <br>
                    <div class="col-lg-6 col-6 w3ls_footer_grid_left1_pos mt-2 text-lg-left text-sm-right text-center">
					<ul>
						<li class="mr-3">
							<a href="#" class="facebook">
								<i class="fab fa-facebook-f mr-2"></i>Facebook</a>
						</li>
						<li>
							<a href="#" class="twitter">
								<i class="fab fa-twitter mr-2"></i>Twitter</a>
						</li>
					</ul>
				</div>
				</div>
				
				<div class="col-lg-6 w3ls_footer_grid1_left mt-lg-2 mt-4 text-lg-right text-center">
					<p>&copy; 2019 Perfect Transport Pvt. Ltd. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- //footer -->

	<!-- Js files -->
	<!-- JavaScript -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<!-- Default-JavaScript-File -->

	<script src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- search -->
	<script src="js/search.js"></script>

	<%--<!-- Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
	    var owl = $('.owl-carousel');
	    owl.owlCarousel({
	        items: 3,
	        loop: true,
	        margin: 10,
	        autoplay: true,
	        autoplayTimeout: 1000,
	        autoplayHoverPause: true,
	        responsive: {
	            0: {
	                items: 1
	            },
	            600: {
	                items: 2
	            },
	            1000: {
	                items: 3
	            }
	        }
	    });
	    $('.play').on('click', function () {
	        owl.trigger('play.owl.autoplay', [1000])
	    })
	    $('.stop').on('click', function () {
	        owl.trigger('stop.owl.autoplay')
	    })
	</script>
	<!-- //Owl-Carousel-JavaScript -->
--%>
	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- start-smoth-scrolling -->
	<script src="js/move-top.js"></script>
	<script src="js/easing.js"></script>
	<script>
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();
	            $('html,body').animate({
	                scrollTop: $(this.hash).offset().top
	            }, 1000);
	        });
	    });
	</script>
	<!-- start-smoth-scrolling -->

	<!-- smooth scrolling-bottom-to-top -->
	<script>
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */
	        $().UItoTop({
	            easingType: 'easeOutQuart'
	        });
	    });
	</script>
	<a href="#" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- //smooth scrolling-bottom-to-top -->
	<!-- //Js files -->
    </body>
</html>
