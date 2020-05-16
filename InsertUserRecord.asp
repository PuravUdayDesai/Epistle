<%
    Dim con,rs
    Set con=Server.CreateObject("ADODB.Connection")
    con.ConnectionString="DSN=Epistle"
    con.Open
    set rs=Server.CreateObject("ADODB.RecordSet")
	rs.Open "Users",con,0,3,2
	rs.AddNew
	rs("UserName")=Request.Form("name")
	rs("Active")="False"
    rs("Position")=Request.Form("position")
	rs("EmailId")=Request.Form("email")
    rs("ContactNumber")=Request.Form("contact")
	rs.Update
	rs.Movenext

    Set rs=Nothing
    set rs=Server.CreateObject("ADODB.RecordSet")
	rs.Open "Login",con,0,3,2
	rs.AddNew
	rs("UserName")=Request.Form("name")
	rs("LoginKey")=Request.Form("loginKey")
    rs.Update
	rs.Movenext
    con.close
	set con=Nothing
	Session("UserNotifications")=1
	Response.Redirect("Epistle-LoginPage.asp")
%>