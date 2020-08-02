<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="booking.aspx.vb" Inherits="Client_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!DOCTYPE html>
    <html lang="zxx">

    <head>
	    <title>Booking | Perfect Transport Pvt. Ltd.</title>
	    <!-- Meta tag Keywords -->
	    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
	    <link href="/../fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
	        rel="stylesheet">
	    <link href="/../fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
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
		            <span>B</span>ooking
                </h3>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="Field Required" />
                <div class="row">
                    <div class="col-lg-2 contact-grid-agiles-w3l"></div>
                    <div class="col-lg-8 contact-grid-agiles-w3l">
                        <br />
                        <div class="row">
                            <div class="col-lg-6 contact-grid-agiles-w3l border border-top-0 rounded">
                                <h4 class="subtitle mb-sm-4 mb-3">
		                            <span>C</span>onsignor <span>D</span>etails :
                                </h4>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtSFName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Consignor First Name" Text="*" ForeColor="Red" ControlToValidate="txtSFName" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
							    </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtSLName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Consignor Last Name" Text="*" ForeColor="Red" ControlToValidate="txtSLName" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
							    </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:DropDownList ID="DDLPickupCity" runat="server" DataTextField="cityname"
                                                DataValueField="cid" CssClass="form-control">
                                                <asp:ListItem Value="0">Surat</asp:ListItem>

                                                <asp:ListItem Value="1">Vapi</asp:ListItem>

                                                <asp:ListItem Value="2">baroda</asp:ListItem>

                                            </asp:DropDownList>


                                        </div>
                                    </div>
							    </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtSMobile" class="form-control" placeholder="Mobile No" runat="server" MaxLength="10"></asp:TextBox>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Consignor Mobile Number" Text="*" ForeColor="Red" ControlToValidate="txtSMobile" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
							    </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtSEmail" class="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Consignor Email ID" Text="*" ForeColor="Red" ControlToValidate="txtSEmail" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
							    </div>
                            </div>  
                            
                            <div class="col-lg-6 contact-grid-agiles-w3l border border-top-0 rounded">
                                <h4 class="subtitle mb-sm-4 mb-3">
		                            <span>C</span>onsignee <span>D</span>etails :
                                </h4>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtRFName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Consignee First Name" Text="*" ForeColor="Red" ControlToValidate="txtRFName" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
							    </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtRLName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
							            </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Consignee Last Name" Text="*" ForeColor="Red" ControlToValidate="txtRLName" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:DropDownList ID="DDLDropCity" runat="server" DataTextField="cityname" 
                                                DataValueField="cid" CssClass="form-control">
                                                <asp:ListItem Value="0">Surat</asp:ListItem>
                                                <asp:ListItem Value="1">Vapi</asp:ListItem>
                                                <asp:ListItem Value="2">baroda</asp:ListItem>
                                            </asp:DropDownList>

							                
                                        </div>
                                    </div>
							    </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtRMobile" class="form-control" placeholder="Mobile No" runat="server" MaxLength="10"></asp:TextBox>
							            </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Consignee Mobile Number" Text="*" ForeColor="Red" ControlToValidate="txtRMobile" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-11">
                                            <asp:TextBox ID="txtREmail" class="form-control" placeholder="Email ID" runat="server"></asp:TextBox>
							            </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Consignee Email ID" Text="*" ForeColor="Red" ControlToValidate="txtREmail" Font-Size="Large"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>    
                        </div>

                        <br />
                        
                        <div class="row">
                            <div class="col-12 contact-grid-agiles-w3l border border-top-0 rounded">
                                    <h4 class="subtitle mb-sm-4 mb-3">
		                                <span>G</span>oods <span>D</span>etails :
                                    </h4>
							    <div class="form-group">
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:DropDownList ID="DDLGType" runat="server"  CssClass="form-control">
                                                <asp:ListItem Value="-1">-- Select Goods Type --</asp:ListItem>
                                                <asp:ListItem Value="0">Solid</asp:ListItem>
                                                <asp:ListItem Value="1">Liquid</asp:ListItem>
                                            </asp:DropDownList>
							            </div>
                                        <div class="col-6">
                                            <asp:TextBox ID="txtGWeight" class="form-control" placeholder="Goods weight in Kg" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Goods Weight" Text="*" ForeColor="Red" ControlToValidate="txtGWeight" Font-Size="Large"></asp:RequiredFieldValidator>
							            </div>
                                    </div>
                                </div>                              
                                <div class="row">
                                    <div class="col-12">
                                        <asp:Button ID="btnNext" class="btn contact-grid-agile" runat="server" Text="Next >>" />
                                    </div>
                                </div>
                                <br />
                                
                            </div>
                        </div>
                    </div>
			    </div>
                <br />
                
                <div style="display:flex; justify-content:center">
                <div class="row" style="width:100%">
                    
                    
                    <div style="width:33%; text-align:center">
                        <h3><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Client/orderhistory.aspx">Order History</asp:HyperLink></h3>
                    </div>
                    
                    <div style="width:33%; text-align:center">
                        <h3><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Client/track.aspx">Track Order</asp:HyperLink></h3>    
                    </div>

                     <div style="width:34%; text-align:center">
                        <h3><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Client/logout.aspx">Logout</asp:HyperLink></h3>    
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

