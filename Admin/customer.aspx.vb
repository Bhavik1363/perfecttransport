Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Partial Class Admin_customer
    Inherits System.Web.UI.Page
    Dim cons As String = "Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Transport\Client\App_Data\Database.mdf;Integrated Security=True"
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim ds As New DataSet
    Dim dap As New SqlDataAdapter
    Sub display()
        ds.Clear()
        qry = "select * from user_master order by uid"
        dap = New SqlDataAdapter(qry, cons.ToString())
        dap.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            display()
        End If
    End Sub
    Protected Sub OnPaging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        display()
    End Sub
    Protected Sub OnRowCancelingEdit(ByVal sender As Object, ByVal e As EventArgs)
        GridView1.EditIndex = -1
        display()
    End Sub
    Protected Sub OnRowDeleting(ByVal sender As Object, ByVal e As GridViewDeleteEventArgs)
        Dim uid As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Values(0))
        Dim query As String = "DELETE FROM user_master WHERE uid=@uid"

        Dim con As SqlConnection = New SqlConnection(cons)
        Dim cmd As SqlCommand = New SqlCommand(query, con)
        cmd.Parameters.AddWithValue("@uid", uid)

        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        display()
    End Sub
    Protected Sub OnRowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Try
            Dim row As GridViewRow = GridView1.Rows(e.RowIndex)
            Dim uid1 As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Values(0))
            Dim username1 As String = (TryCast(row.FindControl("txtusername"), TextBox)).Text

            Dim password1 As String = (TryCast(row.FindControl("txtpassword"), TextBox)).Text
            Dim fname1 As String = (TryCast(row.FindControl("txtfname"), TextBox)).Text
            Dim lname1 As String = (TryCast(row.FindControl("txtlname"), TextBox)).Text
            Dim mobile1 As String = (TryCast(row.FindControl("txtmobile"), TextBox)).Text
            Dim email1 As String = (TryCast(row.FindControl("txtemail"), TextBox)).Text
            Dim query As String = "UPDATE user_master SET username=@username, password=@password, fname=@fname, lname=@lname,mobile=@mobile,email=@Email WHERE uid=@uid"

            Dim con As SqlConnection = New SqlConnection(cons)
            Dim cmd As SqlCommand = New SqlCommand(query, con)
            cmd.Parameters.AddWithValue("@uid", uid1)
            cmd.Parameters.AddWithValue("@username", username1)
            cmd.Parameters.AddWithValue("@password", password1)
            cmd.Parameters.AddWithValue("@fname", fname1)
            cmd.Parameters.AddWithValue("@lname", lname1)
            cmd.Parameters.AddWithValue("@mobile", mobile1)
            cmd.Parameters.AddWithValue("@Email", email1)


            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()

            GridView1.EditIndex = -1
            display()

        Catch ex As Exception
        End Try

    End Sub
End Class
