<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="Client_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>
    <html lang="zxx">

    <head>
	    <title>Registration | Perfect Transport Pvt. Ltd.</title>
	    <!-- Meta tag Keywords 
	    <meta name="viewport" content="width=device-width, initial-scale=1"> -->
	    <meta charset="UTF-8" />
	    <meta name="keywords" content="Transports Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	    />
	    <script>	    
	        addEventListener("load", function () {
	            setTimeout(hideURLbar, 0);
	        }, false);
            "Invalid Username or Password..."
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
			<h3 class="title mb-sm-4 mb-3" style="text-align:center">
		        <span>R</span>egistration <span>F</span>orm
            </h3>
			    <div class="row">
				    
				    
                    <div class="col-lg-5 contact-grid-agiles-w3l">
                        <br />
                        <img src="images/clipboard.png" alt="" style="max-width: 100%;"/>
                    </div>

                    <div class="col-lg-7 contact-grid-agiles-w3l">
					    <div>
						    <form id="Form1" runat="server"> 
                                <br/>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="Field Required" />
							    <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtUname" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                                        </div>    
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username" Text="*" ForeColor="Red" ControlToValidate="txtUname" Font-Size="Large"></asp:RequiredFieldValidator>
							        </div>
                                </div>
							    <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
							            </div>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtCpassword" class="form-control" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
                                        </div>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does Not Match" Text="*" ForeColor="Red" ControlToCompare="txtPassword" ControlToValidate="txtCpassword" Font-Size="Large"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtFName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter First Name" Text="*" ForeColor="Red" ControlToValidate="txtFName" Font-Size="Large" ></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtLName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Last Name" Text="*" ForeColor="Red" ControlToValidate="txtLName" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtMobile" class="form-control" placeholder="Mobile No" runat="server" MaxLength="10"></asp:TextBox>
							            </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile Number" Text="*" ForeColor="Red" ControlToValidate="txtMobile" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
							            </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Email ID" Text="*" ForeColor="Red" ControlToValidate="txtEmail" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                
                                <div class="col-11">
                                    <div class="row">
                                        <asp:Button ID="btnRegister" class="btn contact-grid-agile" runat="server" Text="Register Now" />
                                    </div>
                                </div>
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

