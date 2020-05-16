<html>
<head>
  <title>Home | Epistle</title>
  <link rel="icon" href="EpistleLogo.png" type="image/icon type">
  <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <style type="text/css">
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #0234410a;
  position: sticky;
  top: 0;
  border-style:solid;
  border-left:none;
  border-right:none;
}

li {
  float: left;
}

li a {
  display: block;
  color: black;
  text-align: center;
  padding: 1px 10px;
  text-decoration: none;
}

li a:hover {
  text-decoration: none;
  color:#3c0de9f3;
}

#toRight{
  float:right;
}
.HeaderFont{
font-family: 'Lato', sans-serif;
font-size:15px;
}
#Header{
height:2px;
}
#EpistleLogo{
font-family: 'Pacifico', cursive;
}
body{
background-image: url('EpistleMain.gif ');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
}
  </style>
</head>

<body>
<div id="Header">
    <ul>
      <li><a href="HomeEpistle.asp"><p class="HeaderFont" id="EpistleLogo"><font color="black">Epistle</font></p></a></li>
      <li><a href="Messages.asp"><p class="HeaderFont">Messaging</p></a></li>
      <li><a href="Ticket.asp"><p class="HeaderFont">Ticketing</p></a></li>
    
    <div id="toRight">
    
        <li><a href="Logout.asp"><p class="HeaderFont">Logout</p></a></li>
        <%
        Dim conCheck,rsCheck
        Set conCheck=Server.CreateObject("ADODB.Connection")
        conCheck.ConnectionString="DSN=Epistle"
        conCheck.Open
        Set rsCheck=Server.CreateObject("ADODB.RecordSet")
        rsCheck.Open "SELECT Position FROM Users WHERE UserName ='"&Session("UserName")&"'",conCheck
        If rsCheck("Position")="admin" then
        %>
       <li><a href="Epistle-SingUpPage.asp"><p class="HeaderFont">Sign Up</p></a></li>
        <%
        End If
        %>
  </div>   
</ul> 
</div>
</body>
</html>