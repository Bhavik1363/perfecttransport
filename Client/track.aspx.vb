Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient


Partial Class Client_track

    Inherits System.Web.UI.Page

    Dim cn As String = "Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Transport\Client\App_Data\Database.mdf;Integrated Security=True"
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub trackingbutton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles trackingbutton.Click
        Dim query As String = "SELECT * FROM booking_master where bid=( " & txtuname.Text & ") and username='" & Session("cuname") & "'"
        Dim con As SqlConnection = New SqlConnection(cn)
        Dim sda As SqlDataAdapter = New SqlDataAdapter(query, con)
        Dim ds As DataSet = New DataSet()
        sda.Fill(ds)
        GridView2.DataSource = ds
        GridView2.DataBind()
    End Sub
End Class