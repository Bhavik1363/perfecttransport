<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="customer.aspx.vb" Inherits="Admin_customer" %>

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
                <h1 class="menutitle"><span>C</span>ustomer <span>D</span>etails</h1>
                <br />               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No records has been added." OnPageIndexChanging="OnPaging" OnRowCancelingEdit="OnRowCancelingEdit"  OnRowDeleting="OnRowDeleting"  OnRowUpdating="OnRowUpdating" DataKeyNames="uid" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="uid" HeaderText="uid" />
                        <asp:BoundField DataField="username" HeaderText="username" />
                        <asp:BoundField DataField="password" HeaderText="password" />
                        <asp:BoundField DataField="fname" HeaderText="fname" />
                        <asp:BoundField DataField="lname" HeaderText="lname" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" />
                        <asp:BoundField DataField="email" HeaderText="email" />
                        <asp:CommandField HeaderText="Action" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </div>
            
            <div class="col-12" style="padding: 20px"></div>
                
        </body>
    </html>

</asp:Content>

