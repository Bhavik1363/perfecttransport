Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient


Partial Class Client_track

    Inherits System.Web.UI.Page

    Dim cn As String = "Server=tcp:perfecttransport.database.windows.net,1433;Initial Catalog=Database;Persist Security Info=False;User ID=perfecttranport;Password=Perfect@transport;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
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