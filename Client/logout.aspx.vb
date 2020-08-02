
Partial Class Client_logout
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session.Remove("cuname")
        Session.RemoveAll()
        Response.Redirect("index.aspx")
        Session.Abandon()

    End Sub

End Class
