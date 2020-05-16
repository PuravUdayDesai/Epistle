<%
Dim con,rs
Set con=Server.CreateObject("ADODB.Connection")
con.ConnectionString="DSN=Epistle"
con.Open
Dim sql
sql="UPDATE Users SET Active='False' WHERE UserName='"&Session("UserName")&"'"
con.Execute sql
Session("UserNotifications")=0
Response.Redirect("Epistle-LoginPage.asp")
Session.abandon
%>