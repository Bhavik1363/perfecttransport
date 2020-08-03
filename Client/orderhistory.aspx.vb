Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient

Partial Class Client_orderhistory
    Inherits System.Web.UI.Page
    Dim cons As String = "Server=tcp:perfecttransport.database.windows.net,1433;Initial Catalog=Database;Persist Security Info=False;User ID=perfecttranport;Password=Perfect@transport;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
    Dim qry As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            display()
        End If
    End Sub
    Sub display()
        Dim query As String = "SELECT * FROM booking_master WHERE username='" & Session("cuname") & "'"
        Dim con As SqlConnection = New SqlConnection(cons)
        Dim sda As SqlDataAdapter = New SqlDataAdapter(query, con)
        Dim ds As DataSet = New DataSet()
        sda.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()

    End Sub
End Class


