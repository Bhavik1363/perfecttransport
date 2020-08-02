<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster2.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Client_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
    <html lang="zxx">

    <head>
	    <title>Log in | Perfect Transport Pvt. Ltd.</title>
	    <!-- Meta tag Keywords -->
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta charset="UTF-8" />
	    <!--<meta name="keywords" content="Transports Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	    />-->
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


	    <!-- contact -->
        <div class="container py-xl-5 py-lg-3">
			
			    <div class="row">
                <div class="col-lg-5 contact-right1 text-center mt-lg-0 mt-sm-5 mt-4">
					    <br/>
                        <img src="images/user.png" alt="" style="max-width: 70%;"/>
				    </div>
				    <div class="col-lg-7 contact-grid-agiles-w3l" style="text-align:center">
					    <div>
						    <form id="Form1" action="#" method="post" runat="server"> 
                                 <div class="container">
                                    <h3 class="title"><span>L</span>ogin</h3>
                                    <br />
                                    <table align="center" cellpadding="10" style="width:80%; text-align:left">
                                        <tr>
                                            <td>Username:</td>
                                            <td><asp:TextBox ID="txtuname" runat="server" class="form-control"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Password:</td>
                                            <td><asp:TextBox ID="txtpwd" runat="server" TextMode="Password" class="form-control"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" align="center"><asp:Button ID="btnCLogin" runat="server" Text="Login" class="btn contact-grid-agile" /></td>
                                        </tr>
                                    </table>
                                </div>
                                <br />
                                <p style="color:Black">New User ? <a href="registration.aspx">Click here </a> for Registration</p>
						    </form>
					    </div>
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

    </body>

    </html>


</asp:Content>

