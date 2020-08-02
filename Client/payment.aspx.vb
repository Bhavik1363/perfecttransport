Imports System.Data.SqlClient
Imports System.Data
Imports System

Partial Class Client_payment
    Inherits System.Web.UI.Page

    Dim cn, cn1 As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Transport\Client\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30")
    Dim cmd, cmd1 As New SqlCommand
    Dim qry, qry1 As String
    Dim no As Integer
    Dim tamount As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        tamount = Session("tamount")
            lblAmount.Text = "Total Amount: " & tamount
    End Sub

    Protected Sub btnBookNow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBookNow.Click
        If (RadioButtonList1.SelectedItem.Text = "Cash On Delivery") Then
            cn1.Open()
            qry1 = "select max(bid) from booking_master"
            cmd = New SqlCommand(qry1, cn1)
            no = cmd.ExecuteScalar
            cn1.Close()

            cn.Open()
            qry = "insert into payment_master(amount,pmethod,bid) values(" & tamount & ",'" & RadioButtonList1.SelectedItem.Text & "'," & no & ")"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            Session("BID") = no
            cn.Close()
            Session("payment_method") = "cod"
            Response.Redirect("Payment_confirmation.aspx")
        Else
            cn1.Open()
            qry1 = "select max(bid) from booking_master"
            cmd = New SqlCommand(qry1, cn1)
            no = cmd.ExecuteScalar
            cn1.Close()

            cn.Open()
            qry = "insert into payment_master(amount,pmethod,bid) values(" & tamount & ",'" & RadioButtonList1.SelectedItem.Text & "'," & no & ")"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            Session("BID") = no
            cn.Close()
            Session("payment_method") = "Paytm"
            Response.Redirect("paytm payment getway.aspx")
        End If
    End Sub
End Class