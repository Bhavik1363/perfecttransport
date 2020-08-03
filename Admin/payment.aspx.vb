Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_payment
    Inherits System.Web.UI.Page
    Dim cons As String = "Server=tcp:perfecttransport.database.windows.net,1433;Initial Catalog=Database;Persist Security Info=False;User ID=perfecttranport;Password=Perfect@transport;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim ds As New DataSet
    Dim dap As New SqlDataAdapter
    Sub display()
        qry = "select * from payment_master"
        dap = New SqlDataAdapter(qry, cons.ToString())
        dap.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            display()
        End If
    End Sub
    Protected Sub OnPaging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        display()
    End Sub
    Protected Sub OnRowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)
        Dim pid As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Values(0))
        Dim query As String = "DELETE FROM payment_master WHERE pid=@pid"

        Dim con As SqlConnection = New SqlConnection(cons)
        Dim cmd As SqlCommand = New SqlCommand(query, con)
        cmd.Parameters.AddWithValue("@pid", pid)

        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        display()
    End Sub
    Protected Sub OnRowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Try
            Dim row As GridViewRow = GridView1.Rows(e.RowIndex)
            Dim pid1 As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Values(0))
            Dim amount1 As String = (TryCast(row.FindControl("txtamount"), TextBox)).Text

            Dim pmethod1 As String = (TryCast(row.FindControl("txtpmethod"), TextBox)).Text
            Dim bid1 As String = (TryCast(row.FindControl("txtbid"), TextBox)).Text
            Dim query As String = "UPDATE payment_master SET amount=@amount, pmethod=@pmethod, bid=@bid, WHERE pid=@pid"

            Dim con As SqlConnection = New SqlConnection(cons)
            Dim cmd As SqlCommand = New SqlCommand(query, con)
            cmd.Parameters.AddWithValue("@pid", pid1)
            cmd.Parameters.AddWithValue("@amount", amount1)
            cmd.Parameters.AddWithValue("@pmethod", pmethod1)
            cmd.Parameters.AddWithValue("@bid", bid1)


            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()

            GridView1.EditIndex = -1
            display()

        Catch ex As Exception
        End Try
    End Sub
End Class
