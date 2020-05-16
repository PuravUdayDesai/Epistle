<% @language=vbscript%>
<% option explicit %>
<html>
<body>
  <%
    dim subj,desc,prio,reci_By,d_line
    subj=Request.Form("subject")
    desc=Request.Form("content")
    prio=Request.Form("priority")
    reci_By=Request.Form("Users")
    d_line=Request.Form("dead_line")
  	dim con,rs,uname,upwd
  	set con=Server.CreateObject("ADODB.connection")
  	con.Provider="Microsoft.Jet.OLEDB.4.0"
  	con.Open "C:/inetpub/wwwroot/ASP/Project/Database/WorkPackages.mdb"
  	set rs=Server.CreateObject("ADODB.RecordSet")
  	rs.Open "WorkPackagesInfo",con,0,3,2
  	rs.AddNew
  	rs("Subject")=subj
  	rs("Description")=desc
  	rs("Priority")=prio
  	rs("Deadline")=d_line
  	rs("SentBy")=Session("UserName")
    rs("ReceivedBy")=reci_By
	rs("AssignedDate")=Date()
	rs("Status")="New"
  	rs.Update
  	rs.Movenext
  	con.close
  	set con=Nothing
	Response.redirect("Ticket.asp")
  %>
</body>
</html>