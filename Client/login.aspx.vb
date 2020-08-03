Imports System.Data.SqlClient
Imports System.Data
Imports System

Partial Class Client_login
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Server=tcp:perfecttransport.database.windows.net,1433;Initial Catalog=Database;Persist Security Info=False;User ID=perfecttranport;Password=Perfect@transport;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub btnCLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCLogin.Click
        cn.Open()
        qry = "select * from user_master where username='" & txtuname.Text & "' and password='" & txtpwd.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            Session("cuname") = txtuname.Text
            Response.Redirect("index.aspx")
        Else
            Response.Write("<script>alert('Invalid Username or Password...')</script>")
        End If
        cn.Close()
    End Sub
End Class
