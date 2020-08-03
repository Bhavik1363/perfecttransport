<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="Client_contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
    <script runat="server">

       
</script>

    <html lang="zxx">

    <head>
	    <title>Contact Us | Perfect Transport Pvt. Ltd.</title>
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


	    <!-- contact -->
        <div class="container py-xl-5 py-lg-3">
			    <h3 class="title mb-sm-4 mb-3">
				    <span>C</span>ontact
				    <span>U</span>s</h3>
			    <div class="row">
				    <div class="col-lg-7 contact-grid-agiles-w3l">
					    <div>
						    <form id="Form1" runat="server" title="Perfect Transportation Pvt. Ltd.">
							    <div class="form-group">
							        <asp:TextBox ID="txtName" class="form-control" type="text" placeholder="Name" runat="server" required=""></asp:TextBox>
							    </div>
							    <div class="form-group">
                                    <asp:TextBox ID="txtEmail" class="form-control" type="email" placeholder="Email" runat="server" required=""></asp:TextBox>
							    </div>
							    <div class="form-group">
                                    <asp:TextBox ID="txtSubject"  class="form-control" type="text" placeholder="Subject" runat="server" required=""></asp:TextBox>
							    </div>
							    <div class="form-group">
                                    <asp:TextBox ID="txtMessage" class="form-control" placeholder="Message..." TextMode="MultiLine" runat="server" style="min-height:150px" required=""></asp:TextBox>
							    </div>
                                <asp:Button ID="btnSubmit" class="btn contact-grid-agile" runat="server" Text="Send Now" />
                            
						    </form>
					    </div>
					    <div class="contact-right2 mt-4">
						    <div class="row call ">
                                <div class="col-4 contact-grdr-w3l">
								    <h3>Address :</h3>
							    </div>
							    <div class="col-8 contact-grdr-w3l">
								    <ul>
									    <li>Dumbhal Transport Nagar, Surat.</li>
								    </ul>
							    </div>               
						    </div>
						    <div class="row call my-4">
                                <div class="col-4 contact-grdr-w3l">
								    <h2>Phone No :</h2>
							    </div>
							    <div class="col-8 contact-grdr-w3l">
								    <ul>
									    <li>+91 9876543210</li>
								    </ul>
							    </div>                   
						    </div>
						    <div class="row call">
							    <div class="col-4 contact-grdr-w3l">
								    <h3>E-mail :</h3>
							    </div>
							    <div class="col-8 contact-grdr-w3l">
								    <ul>
									    <li>
										    <a href="mailto:info@perfecttransportpvtltd.com">info@perfecttransportpvtltd.com</a>
									    </li>
								    </ul>
							    </div>
						    </div>
					    </div>
				    </div>
				    <div class="col-lg-5 contact-right1 text-center mt-lg-0 mt-sm-5 mt-4">
					    <img src="images/contact.png" alt="" class="img-fluid"/>
				    </div>
			    </div>
		    </div>
	    <!-- //contact -->

	    <!-- map -->
	    <div class="mapf">
        <%--https://www.google.com/maps/place/Unnamed+Road,+Shubhash+Nagar,+Parvat+Patiya,+Surat,+Gujarat+395101/@21.1944316,72.8653206,18z/data=!3m1!4b1!4m13!1m7!3m6!1s0x3be04fa50b01d355:0xad2675d004ea3261!2sAmaazia+Water+Park,+Opp.+Dumbal+Transport+Godown,Magib,+Canal+Rd,+Shubhash+Nagar,+Parvat+Patiya,+Surat,+Gujarat+395010!3b1!8m2!3d21.1946103!4d72.8650135!3m4!1s0x3be04fa5024c17d9:0x2e9fdafdcff288e0!8m2!3d21.1944316!4d72.8661525--%>
		    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2067.7441767525625!2d72.86482651937916!3d21.194490860206646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04fa500bff675%3A0x43628dea825d485c!2sJaipur+Golden+Transport!5e0!3m2!1sen!2sin!4v1563375693248!5m2!1sen!2sin"></iframe>
	    </div>
	    <!--// map -->




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

