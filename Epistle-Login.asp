<% @Language=VBScript%>
<%Option Explicit%>
<%
Response.Cookies("UserId").Expires=date+365
Response.Cookies("LoginKey").Expires=date+365

Dim userId:userId=Request.Form("UserId")
Dim loginKey:loginKey=Request.Form("LoginKey")




Dim con,rs
Set con=Server.CreateObject("ADODB.Connection")
con.ConnectionString="DSN=Epistle"
con.Open
Set rs=Server.CreateObject("ADODB.Recordset")
rs.Open"SELECT * FROM Login WHERE UserName='"&userId&"' AND LoginKey='"&loginKey&"'",con
Do Until rs.EOF
If rs("UserName")=userId AND rs("LoginKey")=loginKey Then
     If Request.Form("RememberMeCheckBox")="on" Then
            Response.Cookies("UserId")=userId
            Response.Cookies("LoginKey")=loginKey
     End If
    Dim sql
    sql="UPDATE Users SET Active='True' WHERE UserName='"&userId&"'"
    con.Execute sql

    Session("UserName")=userId
    Response.Redirect("HomeEpistle.asp")
Else
    rs.moveNext
End If
Loop
Session("UserNotifications")=2
Response.Redirect("Epistle-LoginPage.asp")
%>