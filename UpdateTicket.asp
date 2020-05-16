<%
Dim con,rs 
Set con=Server.CreateObject("ADODB.Connection")
con.Provider="Microsoft.Jet.OLEDB.4.0"
con.Open("C:/inetpub/wwwroot/ASP/Project/Database/WorkPackages.mdb")
Dim sql
sql="UPDATE WorkPackagesInfo SET Subject='"&Request.Form("SubjectText")&"' WHERE TicketId="&Request.Cookies("TicketId")
con.Execute sql
sql="UPDATE WorkPackagesInfo SET Description='"&Request.Form("TextArea")&"' WHERE TicketId="&Request.Cookies("TicketId")
con.Execute sql
Response.redirect("Ticket.asp")
%>