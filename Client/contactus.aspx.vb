Imports System.Data.SqlClient
Imports System.Data
Imports System
Imports System.Net.Mail
Partial Class Client_contactus
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Server=tcp:perfecttransport.database.windows.net,1433;Initial Catalog=Database;Persist Security Info=False;User ID=perfecttranport;Password=Perfect@transport;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim Text As String
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim qry As String = "INSERT INTO contactus_master VALUES('" + txtName.Text + "','" + txtEmail.Text + "','" + txtSubject.Text + "','" + txtMessage.Text + "')"
        cmd = New SqlCommand(qry, cn)
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("nikkipastagiya@gmail.com", "Nikki1317")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress(txtEmail.Text)
            e_mail.To.Add("bhavik1363@gmail.com")
            e_mail.Subject = (txtSubject.Text)
            e_mail.IsBodyHtml = True
            e_mail.Body = (txtMessage.Text) + "<br><br<br> Message from" + (txtName.Text) + "<br><br><br> This Message sent through Application"
            Smtp_Server.Send(e_mail)
            MsgBox("Mail Sent Successfully!")

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub
End Class