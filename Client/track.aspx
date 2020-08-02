<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="track.aspx.vb" Inherits="Client_track" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>
    <html lang="zxx">

    <head>
        <title>Track Order</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta charset="UTF-8" />
        <meta name="keywords" content="Transports Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
        <form id="Form3" action="#" method="post" runat="server"> 
                                 <div class="container">
                                
                                     <div class="container py-xl-5 py-lg-3">
                <h3 class="title mb-sm-4 mb-3" style="text-align: center">
                    <span>T</span>rack <span>Y</span>our <span>O</span>rder
                </h3>
        </div>
                                   
                                       <div style="display:flex; flex-direction:column">
                                            
                                            <asp:TextBox ID="txtuname" runat="server" class="form-control" placeholder="Enter Booking Id"></asp:TextBox><br>
                                             <asp:Button ID="trackingbutton" runat="server" Text="Track Order" class="btn contact-grid-agile" />
                                       
                                       
                               </div>


                                 </div>
                                <br />
                                <div style="display:flex; justify-content:center; padding:10px">
                             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                    EmptyDataText="Invalide Booking Id" CellPadding="4"
                    ForeColor="#333333" GridLines="None" style="border:black solid 4px" >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="scity" HeaderText="Sender City"
                            SortExpression="scity">
                            <ItemStyle Width="34%" HorizontalAlign="left"/>
                        </asp:BoundField>

                        <asp:BoundField DataField="currentlocation" HeaderText="Currentlocation"
                            SortExpression="currentlocation">
                            <ItemStyle Width="34%" HorizontalAlign="Center"/>
                        </asp:BoundField>
                         
                         <asp:BoundField DataField="rcity" HeaderText="Receiver City"
                            SortExpression="rcity">
                            <ItemStyle Width="40%" HorizontalAlign="right"/>
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                                    </div>
						    </form>
         

        <!-- contact -->

       
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
            <span id="toTopHover" style="opacity: 1;"></span>
        </a>
        <!-- //smooth scrolling-bottom-to-top -->
        <!-- //Js files -->

    </body>

    </html>



</asp:Content>

