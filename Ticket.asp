<%
If Request.Cookies("TicketId")="" then
    Response.Cookies("TicketId")=17
End If
%>
<html>
    <head>
        <title>Ticketing</title>
        <link rel="icon" href="EpistleLogo.png" type="image/icon type">
	<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Fira+Sans&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bree+Serif&display=swap" rel="stylesheet">
    </head>
    
    <style>
    #TicketHeadTicketId{
        float:left;
        font-family: 'Fira Sans', sans-serif;
        font-size: 15px;
        width:10%;
    }
    #TicketHeadSubject{
        float:left;
        font-family: 'Fira Sans', sans-serif;
        font-size: 15px;
        width:40%;
    }
    #TicketHeadStatus{
        float:left;
        font-family: 'Fira Sans', sans-serif; 
        font-size: 15px;  
        width:10%;
    }
    #TicketHeadPriority{
        float:left;
        font-family: 'Fira Sans', sans-serif;
        font-size: 15px;  
        width:15%;
    }
    #TicketHeadSentBy{
        float:left;
        font-family: 'Fira Sans', sans-serif;   
        font-size: 15px; 
        width:15%;
    }
    #TicketHeadEndDate{
        float:left;    
        font-family: 'Fira Sans', sans-serif; 
        font-size: 15px;
        width:10%;
    }
    #Tickets{
        margin-left:15px;
        margin-top:70px;
        float:left;
        width:55%;
    }
    .Ticket{
        float:left;
        width:100%;
        padding-top:10px;
        padding-bottom: 10px;
        border-style: solid;
        border-width: thin;
        border-top:none;
        border-left:none;
        border-right:none;
    }
    .Ticket:hover{
    background-color:rgba(2, 2, 53, 0.986);
    }
    .Ticket:hover>#TicketTicketId{color:white; font-size:20px;}
    .Ticket:hover>#TicketSubject{color:white; font-size:20px;}
    .Ticket:hover>#TicketStatus{color:white; font-size:20px;}
    .Ticket:hover>#TicketEndDate{color:red; font-size:15px;}
    .Ticket:hover>#TicketPriority{color:white; font-size:20px;}
    .Ticket:hover>#TicketSentBy{color:white; font-size:20px;}
    #TicketHead{
        float:left;
        width:100%;
        border-style:solid;
        border-left:none;
        border-right:none;
        padding-top:10px;
        padding-bottom: 10px;
    }
    #TicketTicketId{
        float:left;
        width:10%;
        font-family: 'Fira Sans', sans-serif;
        font-size: 15px;
    }
    #TicketSubject{
        float:left;
        width:40%;
        font-family: 'Fira Sans', sans-serif;
        font-size: 15px;
    }
    #TicketStatus{
        float:left;
        font-family: 'Fira Sans', sans-serif; 
        width:10%; 
    }
    #TicketPriority{
        float:left;
        font-family: 'Fira Sans', sans-serif;
        width:15%;
    }
    #TicketSentBy{
        float:left;
        width:15%; 
        font-family: 'Fira Sans', sans-serif;   
        font-size: 15px;  
    }
    #TicketEndDate{
        float:left;    
        font-family: 'Fira Sans', sans-serif; 
        font-size: 15px;
        width:10%; 
    }
    #TicketDescription{
        float:right;
        margin-right:5px;
        margin-top:70px;
        width:43%;
        height:90%;
        background-color: rgba(165, 177, 202, 0.185);
        border-style:solid;
        box-shadow: 10px 10px black;
    }
    #TicketDesccriptionContents{
        margin-top:10px;
    }
    #Subject{
        float:left;
        width:70%;
        margin-left:10px;
        font-family: 'Raleway', sans-serif;
        font-size:30px;
        border-style:solid;
        border-left:none;
    }
    #Priority{
        float:right;
        margin-right:10px;
        width:25%;
        height:40px;
        font-family: 'Raleway', sans-serif;
        font-size:25px;
        border-style:solid;
        border-right:none;
    }
    #Status{
        float:left;
        clear:left;
        margin-left:10px;
        margin-top:10px;
        width:30%;
        height:30px;
        font-family: 'Raleway', sans-serif;
        font-size:25px;
        border-style:solid;
        border-left:none;
    }
    #Breif{
        float:right;
        clear:right;
        margin-right:10px;
        margin-top:8%;
        width:65%;
        height:30px;
        font-family: 'Raleway', sans-serif;
        font-size:15px;
        border-style:solid;
        border-right:none;
        text-align: justify;
    }
    #Description{
        float:left;
        clear:left;
        width:97%;
        height:40%;
        margin-top:10px;
        margin-left:10px;
        border-style:solid;
        font-family: 'Raleway', sans-serif;
    }
    #Assigner{
        float:left;
        clear:left;
        margin-top: 50px;
        margin-left:10px;
        width:30%;
        height: 40px;
        font-family: 'Raleway', sans-serif;
        font-size:25px;
    }
    #DateAssigned{
        float:left;
        clear:left;
        margin-top: 10px;
        margin-left:10px;
        width:30%;
        height: 40px;
        font-family: 'Raleway', sans-serif;
        font-size:25px;
    }
    #EndDate{
        float:right;
        clear:right;
        margin-top: 10px;
        margin-right:35%;
        width:30%;
        height: 40px;
        font-family: 'Raleway', sans-serif;
        font-size:30px;
    }
    #SaveChanges{
        float:left;
        clear:left;
        margin-top:25px;
        margin-left:10px;
        width:25%;
        height:35px;
        font-family: 'Raleway', sans-serif;
        font-size:25px;
        border-style: solid;
        background-color: springgreen;
        text-align: center;
    }
    #Cancel{
        float:right;
        clear:right;
        width:25%;
        height:35px;
        margin-right:45%;
        margin-top:25px;
        font-family: 'Raleway', sans-serif;
        font-size:25px;
        border-style: solid;
        background-color: white;
        text-align: center;
    }
    #editor{
        background-color: rgba(255, 250, 250, 0.856);
        height:99%;
    }
    #AssignerTitle{
        font-family: 'Oswald', sans-serif;
        font-size:15px;
    }
    #DateAssignedTitle{
        font-family: 'Oswald', sans-serif;
        font-size:15px;
    }
    #EndDateTitle{
        font-family: 'Oswald', sans-serif;
        font-size:15px;
    }
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
#CreateTicketTitle{
    font-family: 'Bree Serif', serif;
    font-size:20px;
    margin-top:8.5px;
}
#SaveChangesButton{
    width:100%;
        height:35px;
        font-family: 'Raleway', sans-serif;
        font-size:25px;
        border-style: solid;
        background-color: springgreen;
        text-align: center;
}
a{
    text-decoration:none;
}

    </style>
    <body>
            <div id="Header">
                    <ul>
                      <li><a href="HomeEpistle.asp"><p class="HeaderFont" id="EpistleLogo"><font color="black">Epistle</font></p></a></li>
                      <li><a href="Messages.asp"><p class="HeaderFont">Messaging</p></a></li>
                      <li><a href="#"><p class="HeaderFont">Ticketing</p></a></li>
                      <%
                        Dim conCheck,rsCheck
                        Set conCheck=Server.CreateObject("ADODB.Connection")
                        conCheck.ConnectionString="DSN=Epistle"
                        conCheck.Open
                        Set rsCheck=Server.CreateObject("ADODB.RecordSet")
                        rsCheck.Open "SELECT Position FROM Users WHERE UserName ='"&Session("UserName")&"'",conCheck
                        If rsCheck("Position")="admin" then
                    %>
                      <li><a href="create_ticket.asp"><p class="HeaderFont" id="CreateTicketTitle"><font color="teal" >Create Ticket</font></p></a></li>
                            <%
                            End If
                            %>
                    <div id="toRight">
                    
                        <li><a href="Logout.asp"><p class="HeaderFont">Logout</p></a></li>

                       <li><a href="Epistle-SingUpPage.asp"><p class="HeaderFont">Sign Up</p></a></li>
                        
                  </div>   
                </ul> 
                </div>
                    <div id="Tickets">
                        <div id="TicketHead">
                            <td><div id="TicketHeadTicketId"><b>Ticket Id</b></div></td>
                            <td><div id="TicketHeadSubject"><b>Subject</b></div></td>
                            <td><div id="TicketHeadStatus"><b>Status</b></div></td>
                            <td><div id="TicketHeadPriority"><b>Priority</b></div></td>
                            <td><div id="TicketHeadSentBy"><b>Assigned to</b></div></td>
                            <td><div id="TicketHeadEndDate"><b>End Date</b></div></td>
                        </div>
                        <%
							dim uname
							set con=Server.CreateObject("ADODB.connection")
							con.Provider="Microsoft.Jet.OLEDB.4.0"
							con.Open "C:/inetpub/wwwroot/ASP/Project/Database/WorkPackages.mdb"
							sql="SELECT * FROM WorkPackagesInfo ORDER BY TicketId DESC"
							Set cmd=Server.CreateObject("ADODB.command")
								cmd.ActiveConnection=con
								cmd.CommandText=sql
								Set rs=cmd.Execute
							do while not rs.EOF
						%>
                        <div class="Ticket" id="Ticket">    
                            <div id="TicketTicketId" class="TicketTicketId"><font color="blue" id="TicketTicketIdColor"><%=rs("TicketId")%></font></div>
                            <div id="TicketSubject"><%=rs("Subject")%></div>
                            <div id="TicketStatus"><%=rs("Status")%></div>
                            <div id="TicketPriority"><%=rs("Priority")%></div>
                            <div id="TicketSentBy"><%=rs("ReceivedBy")%></div>
                            <div id="TicketEndDate"><%=rs("Deadline")%></div>
                        </div>
                        <%
							rs.moveNext
							Loop
						%>
                    </div>
                    <div id="TicketDescription">
                       <form method="POST" action="UpdateTicket.asp">
                         <textarea id="TextArea" name="TextArea">
                        </textarea>
                        <input type="hidden" name="SubjectText" id="SubjectText" />
                        <%
							dim con,rs,sql,cmd
							set con=Server.CreateObject("ADODB.connection")
							con.Provider="Microsoft.Jet.OLEDB.4.0"
							con.Open "C:/inetpub/wwwroot/ASP/Project/Database/WorkPackages.mdb"
							Set rs=Server.CreateObject("ADODB.RecordSet")
                            rs.Open "SELECT * FROM WorkPackagesInfo WHERE TicketId="&Request.Cookies("TicketId"),con
						%>
                        <div id="TicketDesccriptionContents">
                        <div id="Subject" contenteditable="true">
                            <%=rs("Subject")%>
                        </div>
                        <div id="Priority">
                            <%=rs("Priority")%>
                        </div>
                        <div id="Status">
                            <%=rs("Status")%>
                        </div>
                        <div id="Breif">
                            #<%=rs("TicketId")%>&ensp;<%=rs("SentBy")%>&ensp;<%=rs("AssignedDate")%>
                        </div>
                        <div id="Description" >
                            <div id="editor" contenteditable="true">
                                <%=rs("Description")%>
                            </div>
                        </div>
                        <div id="Assigner">
                            <div id="AssignerTitle">
                                Assigned By:
                            </div>
                             <%=rs("SentBy")%>
                        </div>
                        <div id="DateAssigned">
                            <div id="DateAssignedTitle">
                                Date Assigned:
                            </div>
                            <%=rs("AssignedDate")%>
                        </div>
                        <div id="EndDate">
                            <div id="EndDateTitle">
                                End Date:
                            </div>
                            <%=rs("Deadline")%>
                        </div>
                        <div id="SaveChanges">
                            <input type="Submit" id="SaveChangesButton" value="Save" />
                        </div>
                        <a href="Ticket.asp">
                        <div id="Cancel">
                            Cancel
                        </div>
                        </a>
                    </div>
                    </form>
                    </div>
    </body>
    <script src="https://cdn.ckeditor.com/ckeditor5/12.4.0/inline/ckeditor.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#TicketDescription").hide();
            $("#TextArea").hide();
            $(".TicketTicketId").click(function(e){
                document.cookie="TicketId="+e.target.innerText;
                $("#TicketDescription").show();  
                document.cookie="TicketId="+e.target.innerText;
            })
            $(".Ticket").dblclick(function(){
                location.reload();
                });
InlineEditor
.create( document.querySelector( '#editor' ),{
         toolbar: ['Heading','|','bold', 'italic', 'bulletedList', 'numberedList', 'blockQuote', 'Link','Undo', 'Redo']
    } )
    .then( editor => {
        $("#SaveChanges").mouseover(function(){
            document.getElementById("TextArea").value=editor.getData();
            document.getElementById("SubjectText").value=document.getElementById("Subject").innerText;
        });
    } )
    .catch( error => {
        console.error( error );
    } );
        });
    </script>
</html>
