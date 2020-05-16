<%
Dim con2,rs2
Set con2=Server.CreateObject("ADODB.Connection")
con2.ConnectionString="DSN=Epistle"
con2.Open
Set rs2=Server.CreateObject("ADODB.RecordSet")
rs2.Open "SELECT * FROM MessageLog WHERE Sender='Sarah' AND Receiver='Rahul' OR Sender='Rahul' AND  Receiver='Sarah' ORDER BY Id ASC",con2
Do Until rs2.EOF
If rs2("Sender")="Sarah" then
Response.write("Sarah: "&rs2("Message")&"<BR />")
Response.write("-----------------------------------------------------------------------------------<BR />")
Else
Response.write("Rahul: "&rs2("Message"))
Response.write("-----------------------------------------------------------------------------------<BR />")
End If
rs2.moveNext
Loop
%>