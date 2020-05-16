<%
Session("SearchOptions")=Request.Form("SearchBar")
Response.Redirect("Messages.asp")
%>