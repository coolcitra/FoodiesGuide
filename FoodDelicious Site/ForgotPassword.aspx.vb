Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports System.Linq
Imports System.Data.SqlClient
Imports System.Xml
Imports System.Xml.Linq
Imports System.Xml.XPath
Imports System.Net.Mail
Imports System.Web.Configuration
Imports System.Data.Sql
Imports System.Text
Imports System.Net
Imports System.Security.Permissions
Partial Class ForgotPassword
    Inherits System.Web.UI.Page

    'Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
    '    EmailSender("shashank.bargaje@gmail.com", "", "")

    'End Sub
    'Public Function EmailSender(ByVal Email As String, ByVal Subject As String, ByVal HtmlBody As String) As Boolean

    '    Dim bSuccess As Boolean = False

    '    Try
    '        Const cdoSendUsingPort As Integer = 2 'Send the message using the network (SMTP over the network).

    '        Const cdoAnonymous As Integer = 0 'Do not authenticate
    '        Const cdoBasic As Integer = 1 'basic (clear-text) authentication
    '        Const cdoNTLM As Integer = 2 'NTLM

    '        Dim From As String = ConfigurationManager.AppSettings("From")
    '        'MailHelper.SendMailMessage(From, txt1.Text, "", "", "United Software Associates: Login Credentials", "Thank you for Registering. <br> Your Credentials are :<br> <br> Username : " + txt1.Text + " <br>Password :" + password + "<br><br><br>Warm Regards, <br>Admin Team  <br>United Software Associates")
    '        'Dim conf As Configuration = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath)
    '        'Dim mailsettings As System.Net.Configuration.MailSettingsSectionGroup = DirectCast(conf.GetSectionGroup("system.net/mailSettings"), System.Net.Configuration.MailSettingsSectionGroup)

    '        Dim Mailer As Object
    '        Mailer = CreateObject("CDO.Message")
    '        Mailer.Subject = Subject
    '        '("United Software Associates: Login Credentials").ToString()
    '        Mailer.From = From
    '        Mailer.To = Email
    '        Mailer.HTMLBody = HtmlBody
    '        ' "Thank you for Registering. <br> Your Credentials are :<br> <br> Username : " + txtEmail.Text & " <br>Password :" & password & "<br><br><br>Warm Regards, <br>Admin Team  <br>United Software Associates"

    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/sendusing") = cdoSendUsingPort

    '        'Name or IP of Remote SMTP Server
    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "127.0.0.1"

    '        'Type of authentication, NONE, Basic (Base64 encoded), NTLM
    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = cdoBasic

    '        'Your UserID on the SMTP server
    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "usainco1" '"ftp_user_ID"

    '        'Your password on the SMTP server
    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "xU8aS+a_-w"
    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25

    '        'Use SSL for the connection (False or True)
    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False

    '        'Connection Timeout in seconds (the maximum time CDO will try to establish a connection to the SMTP server)
    '        Mailer.Configuration.Fields.Item _
    '        ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

    '        Mailer.Configuration.Fields.Update()

    '        Mailer.Send()
    '        Mailer = Nothing

    '        bSuccess = True

    '    Catch ex As Exception
    '        bSuccess = False

    '        ' RollbackUserTran(txtEmail.Text)
    '        'Throw New Exception(ex.StackTrace)
    '        ' lblMsg.Text = "An error occured while registering. Please try later"
    '    Finally
    '    End Try

    '    ' If (bSuccess) Then

    '    '  Response.Redirect("Login.aspx?lbl1=" + )
    '    '  End If
    '    Return bSuccess
    'End Function
    Function SendEmail(ByVal Recipients As List(Of String), _
                      ByVal FromAddress As String, _
                      ByVal Subject As String, _
                      ByVal Body As String, _
                      ByVal UserName As String, _
                      ByVal Password As String, _
                      Optional ByVal Server As String = "smtp.gmail.com", _
                      Optional ByVal Port As Integer = 587, _
                      Optional ByVal Attachments As List(Of String) = Nothing) As String
        Dim Email As New MailMessage()
        Try
            Dim SMTPServer As New SmtpClient
            For Each Attachment As String In Attachments
                Email.Attachments.Add(New Attachment(Attachment))
            Next
            Email.From = New MailAddress(FromAddress)
            For Each Recipient As String In Recipients
                Email.To.Add(Recipient)
            Next
            Email.Subject = Subject
            Email.Body = Body
            SMTPServer.Host = Server
            SMTPServer.Port = Port
            SMTPServer.Credentials = New System.Net.NetworkCredential(UserName, Password)
            SMTPServer.EnableSsl = True
            SMTPServer.Send(Email)
            Email.Dispose()
            Return "Email to " & Recipients(0) & " from " & FromAddress & " was sent."
        Catch ex As SmtpException
            Email.Dispose()
            Return "Sending Email Failed. Smtp Error."
        Catch ex As ArgumentOutOfRangeException
            Email.Dispose()
            Return "Sending Email Failed. Check Port Number."
        Catch Ex As InvalidOperationException
            Email.Dispose()
            Return "Sending Email Failed. Check Port Number."
        End Try
    End Function
    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim Recipients As New List(Of String)
        Recipients.Add(txtUsername.Text)
        Dim FromEmailAddress As String = Recipients(0)
        Dim Subject As String = "Password change notification"
        Dim Body As String = "Your new password is : 4085120350 "
        Dim UserName As String = "fooddelicioussjsu@gmail.com"
        Dim Password As String = "4085120350"
        Dim Port As Integer = 587
        Dim Server As String = "smtp.gmail.com"
        Dim Attachments As New List(Of String)
        MsgBox(SendEmail(Recipients, FromEmailAddress, Subject, Body, UserName, Password, Server, Port, Attachments))
    End Sub
End Class
