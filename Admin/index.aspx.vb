Partial Class Admin_index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("auname") = "" Then
            Response.Redirect("login.aspx")
        ElseIf (DateTime.Now.Hour <= 12) Then
            Label1.Text = "Good Morning " + Session("auname") + " !"
        ElseIf (DateTime.Now.Hour <= 17) Then
            Label1.Text = "Good Afternoon " + Session("auname") + " !"
        Else
            Label1.Text = "Good Evening " + Session("auname") + " !"
        End If
    End Sub
End Class