Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Partial Class Admin_booking
    Inherits System.Web.UI.Page
    Dim cons As String = "Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Transport\Client\App_Data\Database.mdf;Integrated Security=True"
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim ds As New DataSet
    Dim dap As SqlDataAdapter
    Sub display()
        ds.Clear()
        qry = "select * from booking_master order by bid"
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
        Dim bid As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Values(0))
        Dim query As String = "DELETE FROM booking_master WHERE bid=@bid"

        Dim con As SqlConnection = New SqlConnection(cons)
        Dim cmd As SqlCommand = New SqlCommand(query, con)
        cmd.Parameters.AddWithValue("@bid", bid)

        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

        display()
    End Sub
    Protected Sub OnRowEditing(sender As Object, e As GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        display()
    End Sub
    Protected Sub OnRowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Try
            Dim row As GridViewRow = GridView1.Rows(e.RowIndex)
            Dim bid As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Values(0))
            Dim username1 As String = (TryCast(row.FindControl("txtusername"), TextBox)).Text
            Dim sfname1 As String = (TryCast(row.FindControl("txtsfname"), TextBox)).Text
            Dim slname1 As String = (TryCast(row.FindControl("txtslname"), TextBox)).Text
            Dim scity1 As String = (TryCast(row.FindControl("txtscity"), TextBox)).Text
            Dim smobno1 As String = (TryCast(row.FindControl("txtsmobno"), TextBox)).Text
            Dim semail1 As String = (TryCast(row.FindControl("txtsemail"), TextBox)).Text
            Dim rfname1 As String = (TryCast(row.FindControl("txtrfname"), TextBox)).Text
            Dim rlname1 As String = (TryCast(row.FindControl("txtrlname"), TextBox)).Text
            Dim rcity1 As String = (TryCast(row.FindControl("txtrcity"), TextBox)).Text
            Dim rmobno1 As String = (TryCast(row.FindControl("txtrmobno"), TextBox)).Text
            Dim remail1 As String = (TryCast(row.FindControl("txtremail"), TextBox)).Text
            Dim gtypes1 As String = (TryCast(row.FindControl("txtgtypes"), TextBox)).Text
            Dim gweight1 As String = (TryCast(row.FindControl("txtgweight"), TextBox)).Text
            Dim currentlocation As String = (TryCast(row.FindControl("txtcurrentlocation"), TextBox)).Text
            Dim query As String = "UPDATE booking_master SET username=@username, sfname=@sfname, slname=@slname, scity=@scity,smobno=@smobno,semail=@semail,rfname=@rfname,rlname=@rlname,rcity=@rcity,rmobno=@rmobno,remail=@remail,gtypes=@gtypes,gweight=@gweight,currentlocation=@currentlocation WHERE bid=@bid"

            Dim con As SqlConnection = New SqlConnection(cons)
            Dim cmd As SqlCommand = New SqlCommand(query, con)
            cmd.Parameters.AddWithValue("@bid", bid)
            cmd.Parameters.AddWithValue("@username", username1)
            cmd.Parameters.AddWithValue("@sfname", sfname1)
            cmd.Parameters.AddWithValue("@slname", slname1)
            cmd.Parameters.AddWithValue("@scity", scity1)
            cmd.Parameters.AddWithValue("@smobno", smobno1)
            cmd.Parameters.AddWithValue("@semail", semail1)
            cmd.Parameters.AddWithValue("@rfname", rfname1)
            cmd.Parameters.AddWithValue("@rlname", rlname1)
            cmd.Parameters.AddWithValue("@rcity", rcity1)
            cmd.Parameters.AddWithValue("@rmobno", rmobno1)
            cmd.Parameters.AddWithValue("@remail", remail1)
            cmd.Parameters.AddWithValue("@gtypes", gtypes1)
            cmd.Parameters.AddWithValue("@gweight", gweight1)
            cmd.Parameters.AddWithValue("@currentlocation", currentlocation)
           

            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()

            
        Catch ex As Exception
        End Try
        GridView1.EditIndex = -1
        display()
    End Sub
End Class

