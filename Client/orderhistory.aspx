<%@ Page Title="" Language="VB" MasterPageFile="~/Client/ClientMaster.master" AutoEventWireup="false" CodeFile="orderhistory.aspx.vb" Inherits="Client_orderhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>
    <html lang="zxx">

    <head>
        <title>Order History | Perfect Transport Pvt. Ltd.</title>
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


        <!-- contact -->

        <div class="container py-xl-5 py-lg-3">
            <form id="Form1" runat="server">
                <h3 class="title mb-sm-4 mb-3" style="text-align: center">
                    <span>O</span>rder <span>H</span>istory
                </h3>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    EmptyDataText="There are no data records to display." CellPadding="4"
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="bid" HeaderText="Booking ID" ReadOnly="True"
                            SortExpression="bid" InsertVisible="False">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sfname" HeaderText="First Name"
                            SortExpression="sfname">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="slname" HeaderText="Last Name"
                            SortExpression="slname">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="scity" HeaderText="City"
                            SortExpression="scity">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="smobno" HeaderText="Mobile" SortExpression="smobno">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="semail" HeaderText="Email"
                            SortExpression="semail">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rfname" HeaderText="First Name"
                            SortExpression="rfname">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rlname" HeaderText="Last Name"
                            SortExpression="rlname">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rcity" HeaderText="City"
                            SortExpression="rcity">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="rmobno" HeaderText="Mobile" SortExpression="rmobno">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="remail" HeaderText="Email"
                            SortExpression="remail">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gtypes" HeaderText="Goods Type"
                            SortExpression="gtypes">
                            <ItemStyle Width="140px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gweight" HeaderText="Weight"
                            SortExpression="gweight">
                            <ItemStyle Width="120px" />
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
               

                <br>

                <div class="row" style="text-align:center">

                    <div class="col contact-grid-agiles-w3l">
                        <h3>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Client/booking.aspx">Booking</asp:HyperLink></h3>
                    </div>

                    <div class="col contact-grid-agiles-w3l">
                        <h3>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Client/logout.aspx">Logout</asp:HyperLink></h3>
                    </div>

                    <div class="col contact-grid-agiles-w3l">
                        <h3>
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Client/track.aspx">Track Order</asp:HyperLink></h3>
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
            <span id="toTopHover" style="opacity: 1;"></span>
        </a>
        <!-- //smooth scrolling-bottom-to-top -->
        <!-- //Js files -->

    </body>

    </html>



</asp:Content>

