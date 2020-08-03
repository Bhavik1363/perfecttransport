<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="payment.aspx.vb" Inherits="Client_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
    <html lang="zxx">

    <head>

	    <title>Payment | Perfect Transport Pvt. Ltd.</title>
	    <!-- Meta tag Keywords 
	    <meta name="viewport" content="width=device-width, initial-scale=1" /> -->
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
	    <link rel="stylesheet" href="css/bootstrap.css" />
	    <!-- Bootstrap-Core-CSS -->
	    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css" media="all" />
	    <!-- Owl-Carousel-CSS -->
	    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	    <!-- Style-CSS -->
	    <link rel="stylesheet" href="css/fontawesome-all.css" />
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
            <form id="Form1" runat="server">
			    <h3 class="title mb-sm-4 mb-3" style="text-align:center">
		            <span>P</span>ayment
                </h3>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="Field Required" />
                <div class="row">
                    <div class="col-lg-2 contact-grid-agiles-w3l"></div>
                    <div class="col-lg-8 contact-grid-agiles-w3l">
                        <br />
                        
                        <div class="row">
                            <div class="col-12 contact-grid-agiles-w3l border border-top-0 rounded">
                                    <h4 class="subtitle mb-sm-4 mb-3">
		                                <span>P</span>ayment <span>D</span>etails :
                                    </h4>
							    
                                <div class="form-group">
                                    <asp:Label ID="lblAmount" runat="server" Text="" CssClass="form-control" style="border:0px" Font-Size="Larger" Font-Bold="True">
                                        
                                    </asp:Label>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-4">
                                            <asp:Label ID="lblPayment" runat="server" Text="" CssClass="form-control" style="border:0px" Font-Size="Larger" Font-Bold="True">Payment Method: </asp:Label>
                                        </div>    
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Payment Method"  Text="*" ForeColor="Red" ControlToValidate="RadioButtonList1" Font-Size="Large"></asp:RequiredFieldValidator>    
                                    </div>
                                    
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-control" style="border-style: none; border-color: inherit; border-width: 0px; text-align: left;" Font-Size="Large" Font-Bold="True">
                                        <asp:ListItem Text="">Cash On Delivery</asp:ListItem>
                                        <asp:ListItem Text="">Paytm</asp:ListItem>
                                        </asp:RadioButtonList>
                                </div>

                                <asp:Button ID="btnBookNow"  class="btn contact-grid-agile" runat="server" Text="Book Now" />
                              

                                <br /><br />
                            </div>
                        </div>
                    </div>
			    </div>
		    </form>
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
