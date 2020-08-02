<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="booking.aspx.vb" Inherits="Admin_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <html>
    <head>

        <link href="css/fontawesome-all.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/adminmain.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">


    </head>
    <body>

        
        <div class="container">
            <h1 class="menutitle"><span>B</span>ooking <span>D</span>etails</h1>
            <br />
            <div class="table-responsive" style="border:#24512e solid 4px; border-radius:2.5px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No records has been added." OnPageIndexChanging="OnPaging" OnRowCancelingEdit="OnRowCancelingEdit" OnRowDeleting="OnRowDeleting" OnRowEditing="OnRowEditing" OnRowUpdating="OnRowUpdating" DataKeyNames="bid" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>


                    <asp:TemplateField HeaderText="Username" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblusername" runat="server" Text='<%# Eval("username")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtusername" runat="server" Text='<%# Eval("username")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="sfname" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblsfname" runat="server" Text='<%# Eval("sfname")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtsfname" runat="server" Text='<%# Eval("sfname")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="slname" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblslname" runat="server" Text='<%# Eval("slname")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtslname" runat="server" Text='<%# Eval("slname")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="scity" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblscity" runat="server" Text='<%# Eval("scity")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtscity" runat="server" Text='<%# Eval("scity")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="smobno" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblsmobno" runat="server" Text='<%# Eval("smobno")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtsmobno" runat="server" Text='<%# Eval("smobno")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="semail" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblsemail" runat="server" Text='<%# Eval("semail")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtsemail" runat="server" Text='<%# Eval("semail")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rfname" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblrfname" runat="server" Text='<%# Eval("rfname")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtrfname" runat="server" Text='<%# Eval("rfname")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rlname" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblrlname" runat="server" Text='<%# Eval("rlname")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtrlname" runat="server" Text='<%# Eval("rlname")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rcity" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblrcity" runat="server" Text='<%# Eval("rcity")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtrcity" runat="server" Text='<%# Eval("rcity")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="rmobno" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblrmobno" runat="server" Text='<%# Eval("rmobno")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtrmobno" runat="server" Text='<%# Eval("rmobno")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="remail" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblremail" runat="server" Text='<%# Eval("remail")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtremail" runat="server" Text='<%# Eval("remail")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="gtypes" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblgtypes" runat="server" Text='<%# Eval("gtypes")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtgtypes" runat="server" Text='<%# Eval("gtypes")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="gweight" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblgweight" runat="server" Text='<%# Eval("gweight")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtgweight" runat="server" Text='<%# Eval("gweight")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="currentlocation" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblcurrentlocation" runat="server" Text='<%# Eval("currentlocation")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcurrentlocation" runat="server" Text='<%# Eval("currentlocation")%>' Width="140"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>


                    <asp:CommandField ButtonType="Link" HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
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
        </div>

        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
    </html>

</asp:Content>

