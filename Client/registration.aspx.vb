Imports System.Data.SqlClient
Imports System.Data
Imports System

Partial Class Client_registration
    Inherits System.Web.UI.Page

    Dim cn, cn1 As New SqlConnection("Server=tcp:perfecttransport.database.windows.net,1433;Initial Catalog=Database;Persist Security Info=False;User ID=perfecttranport;Password=Perfect@transport;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Dim cmd, cmd1 As New SqlCommand
    Dim qry, qry1 As String
    Dim dr As SqlDataReader

    Protected Sub btnRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRegister.Click
        cn.Open()
        qry = "select * from user_master where username='" & txtUname.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            Response.Write("<script>alert('Username already Exist!')</script>")
        Else
            If txtPassword.Text = "" Then
                Response.Write("<script>alert('Password is Blank...')</script>")
            ElseIf txtPassword.Text <> txtCpassword.Text Then
                Response.Write("<script>alert('Password Mismatch...')</script>")
            Else
                cn1.Open()
                qry1 = "insert into user_master(username,password,fname,lname,mobile,email) values('" & txtUname.Text & "','" & txtPassword.Text & "','" & txtFName.Text & "','" & txtLName.Text & "','" & txtMobile.Text & "','" & txtEmail.Text & "')"
                cmd1 = New SqlCommand(qry1, cn1)
                Try
                    cmd1.ExecuteNonQuery()
                    cn1.Close()
                    Response.Write("<script>alert('Registred Successfully!')</script>")
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
                
                clear()
            End If
        End If
        cn.Close()
    End Sub

    Sub clear()
        txtUname.Text = ""
        txtPassword.Text = ""
        txtCpassword.Text = ""
        txtFName.Text = ""
        txtLName.Text = ""
        txtMobile.Text = ""
        txtEmail.Text = ""
    End Sub
End Class
