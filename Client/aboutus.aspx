<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="Client_aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
    <html lang="zxx">

    <head>
	    <title>About Us | Perfect Transport Pvt. Ltd.</title>
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
	    <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css" media="all" />
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
		
		    <!-- inner banner -->
		    <div class="inner-banner text-center text-white">
			
		    </div>
		    <!-- //inner banner -->
	    </header>
	    <!-- //header -->

	    <!-- about-1 -->
	
		    <div class="container py-xl-5 py-lg-3">
			    <h3 class="title mb-lg-5 mb-sm-4 mb-3">
				    <span>A</span>bout
				    <span>U</span>s</h3>
			    <div class="row">
				    <div class="col-xl-7 ab-left">
					    <img src="images/ab.jpg" alt=" " class="img-fluid" />
				    </div>
				    <div class="col-xl-5 ab-right">
					    <h3 class="mb-4 pb-4">Welcome to Perfect Transport Pvt. Ltd.</h3>
					    <p>Perfect Transport Pvt. Ltd. was established on 1990 as a Private Limited Company. The company is synonymous with safety and reliability. 
                        Whether it is personalized customer service, time-bound performance or careful handling of cargo, there's an ever growing base of loyal customers 
                        who count on Roadways.</p>
					    <p class="mt-3">Our service network is strongly spread across the India. As we, at Perfect Transport Pvt. Ltd., define the road rules for logistics, 
                        we hope to bring you the best of services for all your logistic needs.</p>
				    </div>
			    </div>
		    </div>
	
	    <!-- //about-1 -->

	    <!-- about-2 -->
        <div class="container py-xl-3 py-lg-3">
	        <div class="row">
			    <div class="ab-main">
				    <h2 class="mb-4 pb-4">Quality Policy :</h2>
			        <p>
                        We are committed to providing safe, dependable transportation service to our customers
                        and To meet our goal, organization shall strive things that given below,</p>
               
                    <ul style="margin-left:20px;">
                        <li>Prompt & Postive response.</li>
                        <li>Team Performance.</li>
                        <li>On time delivery of goods.</li>
                        <li>To reduce customer complaints.</li>
                        <li>With a mission to make continual improvement in all aspects.</li>
                    </ul>
               
			    </div>
		    </div>
        </div>

        <div class="container py-xl-3 py-lg-3">
	        <div class="row">
			    <div class="ab-main">
				    <h2 class="mb-4 pb-4">Technology :</h2>
			        <p>
                        In the field of technology also we are in the forefront, almost all the branches are computerized and are interconnected via state of 
                        the art technologies in software and database.</p>
			    </div>
		    </div>
        </div>

        <div class="container py-xl-3 py-lg-3">
	        <div class="row">
			    <div class="ab-main">
				    <h2 class="mb-4 pb-4">Our Mission :</h2>
			        <p>To ensure our clients get top class service: in terms of timely schedules, zero damages, value-for-their money & benefit of our ever growing 
                    geographical network.</p>
			    </div>
		    </div>
        </div>

            <div class="container py-xl-3 py-lg-3">
	        <div class="row">
			    <div class="ab-main">
				    <h2 class="mb-4 pb-4">Why Us ?</h2>
			        <p>Due to our excellent customer services, in-depth industry knowledge and competent workforce, we have been able to put a signature of success 
                    in the industry. Further, with timely delivery and client centric approach we have been placed ourselves at the leading position in the market.</p>
			    </div>
		    </div>
        </div>
        <br>
	    <!-- //about-2 -->

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

