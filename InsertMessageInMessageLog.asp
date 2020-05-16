<%
    Dim con,rs
    Set con=Server.CreateObject("ADODB.Connection")
    con.ConnectionString="DSN=Epistle"
    con.Open
    set rs=Server.CreateObject("ADODB.RecordSet")
	rs.Open "MessageLog",con,0,3,2
	rs.AddNew
	rs("Message")=Request.Form("MainTextArea")
	rs("Sender")=Session("UserName")
    rs("Receiver")=Request.Cookies("UserEnd")
	rs("TimeStampOfMessage")= Date()&" "&Time()
	rs.Update
	rs.Movenext
	con.close
	set con=Nothing
	Response.Redirect("Messages.asp")
%>