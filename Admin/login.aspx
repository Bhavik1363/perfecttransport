<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Admin Login | Perfect Transport Pvt. Ltd.</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Bootstrap -->

        <link href="css/fontawesome-all.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
        <link href="css/adminmain.css" rel="stylesheet" type="text/css" />

    </head>
<body>
    <form id="form1" action="#" method="post" runat="server">
     <!-- Navigation Bar -->
            <div class="navbar navbar-default navbar-light bg-dark" role="navigation">
                <a class="navbar-brand" style="color:#2ec8a6" href="index.aspx">
                    <span><i class="fas fa-truck mr-2"></i></span> Perfect Transport Pvt. Ltd.</a>          
            </div>          
            
            <div class="col-12" style="padding: 20px"></div>
           
            <div class="container">
                <h1 class="title"><span>L</span>ogin</h1>
                <br/>
                <table align="center" cellpadding="10">
                    <tr>
                        <td>Username:</td>
                        <td><asp:TextBox ID="txtuname" runat="server" class="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><asp:TextBox ID="txtpwd" runat="server" TextMode="Password" class="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><asp:Button ID="btnALogin" runat="server" Text="Login" class="btn" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><asp:Label ID="lblMsg" runat="server" Font-Size="Large" ForeColor="Red" Font-Bold="True"></asp:Label></td>
                    </tr>
                </table>
                </div>
        <div class="container" style="align-items:center">
         <p style="color:Black; text-align:center">New User ? <a href="registration.aspx">Click here </a> for Registration</p>
             </div>
            <div class="col-12" style="padding: 20px"></div>

            <div class="navbar navbar-default navbar-light bg-dark" role="navigation">    
                    <div class="col-12">
                        <p class="afooter">&copy; 2019 Perfect Transport Pvt. Ltd. All rights reserved.</p>
                    </div>   
            </div>
 
        <!-- Navigation Bar -->
    </form>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>

</body>
</html>
