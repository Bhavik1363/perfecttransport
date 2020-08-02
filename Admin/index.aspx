<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <link href="css/fontawesome-all.css" rel="stylesheet" type="text/css" />
            <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
            <link href="css/adminmain.css" rel="stylesheet" type="text/css" />
    
        </head>

        <body>
            <div class="col-12" style="padding: 20px"></div>
                <div class="container">
                    <h1 class="menutitle"><span>U</span>ser: <asp:Label ID="Label1" runat="server" Text="Label" style="color:Red"></asp:Label></h1>
                        <br />
                </div>
            
            <div class="col-12" style="padding: 20px"></div>       
        </body>
    </html>
</asp:Content>

