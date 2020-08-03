<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="services.aspx.vb" Inherits="Client_services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
    <html lang="zxx">

    <head>
	    <title>Services | Perfect Transport Pvt. Ltd.</title>
	    <!-- Meta tag Keywords 
	    <meta name="viewport" content="width=device-width, initial-scale=1"> -->
	    <meta charset="UTF-8" />
	    <meta name="keywords" content="Transports Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	    />
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
		    <!-- inner banner -->
		    <div class="inner-banner text-center text-white">
			
		    </div>
		    <!-- //inner banner -->

	

	    <!-- services -->

		    <div class="container py-xl-5 py-lg-3">
			    <h3 class="title mb-lg-5 mb-sm-4 mb-3">
				    <span>O</span>ur
				    <span>S</span>ervices</h3>
			    <div class="row w3-services-grids mt-md-5 mt-3">
				    <div class="col-md-4 w3l-services-grid">
					    <div class="w3ls-services-img">
						    <i class="fas fa-home"></i>
					    </div>
					    <div class="agileits-services-info">
						    <h4 class="my-sm-3 my-2">Largest Warehouse</h4>
						    <p>We have largest warehouse so we can store more goods and able to deliver them as soon as possible.</p>
					    </div>
				    </div>
				    <div class="col-md-4 w3l-services-grid mt-sm-5 mt-3">
					    <div class="w3ls-services-img">
						    <i class="fas fa-globe"></i>
					    </div>
					    <div class="agileits-services-info">
						    <h4 class="my-sm-3 my-2">Largest Destinations</h4>
						    <p>We have an India-wide network which covers major cities and districts of the country.</p>
					    </div>
				    </div>
				    <div class="col-md-4 w3l-services-grid mt-sm-5 mt-3">
					    <div class="w3ls-services-img mt-md-5">
						    <i class="fas fa-truck"></i>
					    </div>
					    <div class="agileits-services-info">
						    <h4 class="my-sm-3 my-2">Goods Tracking</h4>
						    <p>We provides goods tracking facility to our customer, So they can easily track where their goods are.</p>
					    </div>
				    </div>
			    </div>
			    <div class="row w3-services-grids">
				    <div class="col-md-4 w3l-services-grid mt-md-0 mt-sm-5 mt-3">
					    <div class="w3ls-services-img">
						    <i class="fas fa-fighter-jet"></i>
					    </div>
					    <div class="agileits-services-info">
						    <h4 class="my-sm-3 my-2">Modern Vehicles Fleet</h4>
						    <p>Our company has modern vehicle that deliver goods safely and time to time to the customer.</p>
					    </div>
				    </div>
				    <div class="col-md-4 w3l-services-grid mt-sm-5 mt-3">
					    <div class="w3ls-services-img">
						    <i class="fas fa-users"></i>
					    </div>
					    <div class="agileits-services-info">
						    <h4 class="my-sm-3 my-2">100% satisfied customers</h4>
						    <p>Our company work 100% accurately. We provide our best to the customer, So we have 100% satisfied customers.</p>
					    </div>
				    </div>
				    <div class="col-md-4 w3l-services-grid mt-sm-5 mt-3">
					    <div class="w3ls-services-img mt-md-5">
						    <i class="fas fa-phone"></i>
					    </div>
					    <div class="agileits-services-info">
						    <h4 class="my-sm-3 my-2">24x7 Customer Support</h4>
						    <p>Our company provides best support to their customer, So they can get our top class service.</p>
					    </div>
				    </div>
			    </div>
		    </div>

	    <!-- //services -->



	    <!-- Js files -->
	    <!-- JavaScript -->
	    <script src="js/jquery-3.3.1.min.js"></script>
	    <!-- Default-JavaScript-File -->

	    <script src="js/bootstrap.js"></script>
	    <!-- Necessary-JavaScript-File-For-Bootstrap -->

	    <!-- search -->
	    <script src="js/search.js"></script>

	    <!-- Owl-Carousel-JavaScript -->
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

</asp:Content>

