Partial Class Admin_index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("auname") = "" Then
            Response.Redirect("login.aspx")
        Else
            Label1.Text = Session("auname")
        End If
    End Sub
End Class
