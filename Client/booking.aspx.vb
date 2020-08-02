Imports System.Data.SqlClient
Imports System.Data
Imports System
Partial Class Client_booking
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Transport\Client\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim tamount As Integer
    Dim netamount As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("cuname") = "" Then
            Response.Redirect("login.aspx")
        End If

        If Session("payment") = 1 Then
            Response.Write("<script>alert('Order Successful...')</script>")
            Session.Remove("payment")

        End If
    End Sub
    Protected Sub btnNext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNext.Click
        If DDLGType.SelectedValue = -1 Then
            Response.Write("<script>alert('Select Goods Type...')</script>")
        ElseIf txtGWeight.Text < 1 Then
            Response.Write("<script>alert('Enter Proper Goods Weight...')</script>")
        Else
            cn.Open()
            qry = "insert into booking_master(username,sfname,slname,scity,smobno,semail,rfname,rlname,rcity,rmobno,remail,gtypes,gweight) values('" & Session("cuname") & "','" & txtSFName.Text & "','" & txtSLName.Text & "','" & DDLPickupCity.SelectedItem.Text & "','" & txtSMobile.Text & "','" & txtSEmail.Text & "','" & txtRFName.Text & "','" & txtRLName.Text & "','" & DDLDropCity.SelectedItem.Text & "','" & txtRMobile.Text & "','" & txtREmail.Text & "','" & DDLGType.SelectedItem.Text & "','" & txtGWeight.Text & "')"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            cn.Close()
        End If
        Session("amount") = Val(txtGWeight.Text)
        netamount = CType(Session("amount"), Integer)
        If Val(txtGWeight.Text) <= 10 Then
            Session("tamount") = 100
            Response.Redirect("payment.aspx")
        Else
            Session("tamount") = netamount * 10
            Response.Redirect("payment.aspx")

        End If
    End Sub

    Protected Sub txtGWeight_TextChanged(sender As Object, e As EventArgs) Handles txtGWeight.TextChanged

    End Sub
End Class


