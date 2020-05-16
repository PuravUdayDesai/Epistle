`<html>
    <head>
            <title>Create Ticket | Epistle</title>
            <link rel="icon" href="EpistleLogo.png" type="image/icon type">
            <link type="text/css" rel="stylesheet" href="static/css/Styles.css">
            <link type="text/css" href='static/css/gFonts.css' rel='stylesheet'>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script type="text/javascript" src="static/js/lib/popper.min.js"></script>
            <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="static/js/ckeditor.js"></script>
            <script type="text/javascript">
            function showLoader()
     		 {
     			 document.getElementById("shadow").style.display = "block";
      			document.getElementById("question").style.display = "block";
      		 }
            </script>
            <style type="text/css">
            .opaqueLayer {
   position: fixed;
   top: 0;
   right: 0;
   bottom: 0;
   left: 0;
   height: 100%;
   width: 100%;
   margin: 0;
   padding: 0;
   background: #000000;
   opacity: .8;
   filter: alpha(opacity=80);
   -moz-opacity: .8;
   display: none;
   z-Index: 99998;
}
.questionLayer {
   position: fixed;
   top: 50%;
   left: 40%;
   width: 250px;
   height: 20px;
   z-Index: 1001;
   color: #ffffff;
   text-align: center;
   vertical-align: middle;
   font-family: Verdana;
   font-size: 20pt;
   font-weight: bold;
   display: none;
   z-Index: 99999;
   white-space: nowrap;
}
#priorirty,#Users{
    width:100%;
    height:40px;
    border-radius:10px;
    background-color: white;
}
            </style>
            
    </head>
    
    <body>
        <div id="mainForm">
        <form method="post" action="db_entry.asp">
            <center>
                <table  id="mainTable">
                        <tr>
                            <td>
                                    <div id="queryTableDiv"  align="center">
                                    <table id="queryTable">
                                            <tr>
                                                <td><div id="subjectText">Subject:</div></td>
                                                <td><input type="text" placeholder="Subject Of Query" id="subject" name="subject" required/></td>
                                            </tr>
                                            <tr>
                                                    <td><div id="descriptionText">Description:</div></td>
                                                    <td>
                                                        <textarea name="content" id="editor" class="editor" placeholder="Description about Query" required></textarea>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td><div id="priorityText">Priority:</div></td>
                                                <td>
                                                    <select name="priority" id="priorirty" class="custom-select mb-3">
                                                        <option value="Low">Low</option>
                                                        <option value="Normal">Normal</option>
                                                        <option value="High">High</option>
                                                        <option value="Immediate">Immediate</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                        </div>
                            </td>
                            <td>
                                <div id="customerDetailsDiv">
                                    <p id="customerDetails" align="center"><b>Assignee Details</b></p>
                                </div>
                                <div id="customerTableDiv">
                                <table id="customerTable">
                                    <tr>
                                        <td><div id="nameText">Name:</div></td>
                                        <td>
                                        <select id="Users" name="Users">
                                        <%
                    Dim con,rs
                    Set con=Server.CreateObject("ADODB.Connection")
                    con.ConnectionString="DSN=Epistle"
                    con.Open
                    Set rs=Server.CreateObject("ADODB.RecordSet")
                    rs.Open "SELECT * FROM Users WHERE UserName <>'"&Session("UserName")&"'",con
                    Do until rs.EOF
                                        %>
                                        <option class="Users" value="<%=rs("UserName")%>"><%=rs("UserName")%></option>
                                        <%
                                        rs.moveNext
                                        Loop
                                        %>
                                        </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><div id="emailText">Deadline:</div></td>
                                     <td><input type="date" placeholder="Choose a Date" id="email" name="dead_line" required /></td>
                                    </tr>
                                </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <center><input type="submit" value="Submit" class="btn btn-success" id="submit"></center>
                            </td>
                        </tr>
                    </table>
            </center>
         </form>
         </div>
    </body>
    <script src="static/js/notify.js"></script>
    <script src="static/js/main.js"></script>
</html>
 