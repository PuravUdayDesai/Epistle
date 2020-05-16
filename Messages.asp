<% @Language=VBScript%>
<%Option Explicit%>
<html>
<head>
    <title>Messages</title>
</head>
<link rel="icon" href="EpistleLogo.png" type="image/icon type">
<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Andika' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Antic' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Archivo' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=B612 Mono' rel='stylesheet'>
<link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin:700&display=swap|Indie+Flower|Montserrat&display=swap" rel="stylesheet">
<style>
    #MainMessageSummary { 
        float:left; 
        margin:10px;
        width:40%;
        height: 10px;
        margin-top:30px;
    }
    #SearchBar {
        background-color: rgba(3, 4, 37, 0.068);
        border-color: rgb(0, 0, 0);
        color: white;
        height: 35px;
        width: 6in;
        transition: height 1s;
        -webkit-transition: height 1s;
    }

    #SearchBarDiv {
        padding-left: 10px;
        padding-top: 10px;
    }

    #SearchBar:hover {
        background-color: rgba(3, 26, 37, 0.308);
        height: 40px;
        font-size: 20px;
    }

    #SearchBar:focus {
        background-color: rgba(3, 26, 37, 0.438);
        height: 40px;
        font-size: 20px;
    }

    #search:hover {
        border-color: black;
    }

    #search:focus {
        border-color: black;
    }

    #UserName {
        font-family: 'Cabin', sans-serif;
        font-size: 30px;
    }

    #MessageSummary {
        font-family: 'Antic';
        font-size: 15px;
    }

    #User {
        margin: 10px;
        border-color: rgba(0, 0, 0, 0.164); 
    }

    #User:hover {
        background-color:#3d5afe;
        border-color: black;
    }

    #User:hover>#UserNameDiv {
        background-color: rgba(4, 3, 44, 0.726);
        text-align: right;
    }

    #User:focus {
        box-shadow: 2px 2px rgba(16, 16, 17, 0.89);
    }

    #User:focus>#UserNameDiv {
        background-color: rgb(3, 11, 44)
    }

    #UserNameDiv {
        background-color: rgba(3, 3, 48, 0.116);
    }

    #UserNameDiv:hover {
        background-color:e3f2fd;
        color:whitesmoke;
    }

    #MainUserMessages{
        float:right;
        width:60%;
        clear:right;
        margin:5px;
        margin-top:30px;
    }
    #UserNameInUserMessages{
        float:right;
        background-color:#3949ab;
        width:90%;
        box-shadow: 10px 10px 5px rgba(0, 0, 0, 0.404);
        border-radius: 10px 10px 1px 1px;
    
    }   
    #UserNameTitleInUserMessages{
        color:#3949ab;
        font-family: 'Archivo';font-size: 25px;
        text-align:center;
    }
    #PreviousMessages{
        margin:20px 0;
        float:right;
        clear:left;
        width: 90%;
        background-color:rgba(0, 0, 0, 0);
    }
    #MessageReceived{
        margin:5px;
        float:left;
        width:60%;
        clear:right;
        background-color: white;
        border-radius: 1px 15px 15px; 
        border-style: solid;
        border-color: grey;
        border-width: 1px;
        

    }
    #MessageReceived:hover{
        background-color: white;
        border-radius: 1px 15px 15px; 
        border-color:grey;
        border-width: 3px;
    }
    #MessageReceived:hover > #MainMessage{
        color:black;  
    }
    #MessageSent{
        margin:5px;
        float:right;
        width:60%;
        clear:left;
        font-color:black;
        background-color:#3949ab   ;
        border-radius: 15px 15px 1px 15px;
        border-width:1px;
        border-style: solid;
        border-color: black;
    }
    #MessageSent>#MainMessage{
        color: white;   
    }
    #MessageSent:hover{
        background-color:#3949ab;
        border-width:3px;
    }
    #RightClearance{
        width:100%;
        clear:right;
    }
    #LeftClearance{
        width:100%;
        clear:left;
    }
    #MainMessage{
        font-family: 'Montserrat', sans-serif;
        font-size: 18px;
        margin-left:10px;
    }
    #GoToTextField{
        float:right;
    }
    #TextFieldDiv{
        margin:20px 0;
        float:left;
        width: 80%;
        background-color:#e8eaf6;
        border-radius: 10px;
        margin-left:10px;
    }
    #TextFieldDiv:hover{
        width: 85%;
    }
    #TextFieldDiv:focus{
        width:85%;
    }
    #TextFieldDivSuper{
        float:left;
        width: 100%;
        background-color:#1a237e;
        border-radius: 1px 1px 10px 10px;
    }
    #TextField:focus{
        height: 40px;
    }
    #SendMessageIconDiv{
        float:left;
        margin:15px;
        margin-top:20px;
        border-radius: 50%;
        background-color:#ffffff00;
    }
    #SendMessageIconId{
        border-radius: 50%;
    }
    #SubmitButton{
        border-radius: 50%;
        background-color: #ffffff00;
        border-color: #ffffff00;
    }
    #MainTextArea{
    background-color:#f5f5f500;
    border-color:#f5f5f500;
    }
    #MessageList{
    max-height: 50%;
    overflow-y:scroll;
    background-color:#a4cee200;
    }
    #SearchButton{
    background-color:#f5f5f500;
    border-color:#f5f5f500;
    }
    #DateTimeOfMessageSent{
    float:right;
    color: white;   
    background-color:#3949ab;
    }
    #DateTimeOfMessageReceived{
    margin-right:5px;
    float:right;
    }
    #LogoutButtonDiv{
    float:right;
    clear:left;
    border-style:solid;
    border-color:red;
    background-color:#fffbfb00;
    border-radius: 50%;
    }
    #SingUpDiv{
    float:right;
    clear:left;
    }   
    #SingUpButton{
    border-style:solid;
    border-color: black;
    margin-right:5px;
    width:50px;
    height:25px;
    background-color:green;  
    color: white;
    font-family: 'Titillium Web', sans-serif;
    font-size: 15px;
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

</style>
<body background="Messages.png">
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

    <div id="MainMessageSummary">
      <table>
        <tr>
            <td>
                <div id="MessageSummary">
                    <table>
                        <form method="POST" action="SearchOptions.asp">
                        <tr>
                            <td>
                                <div id="SearchBarDiv">
                                        <input type="search" id="SearchBar" name="SearchBar"
                                        placeholder="Search in Contacts" />
                                </div>
                            </td>
                            <td>
                                <button id="SearchButton"><div id="search"><img src="SearchImageMain.png" alt="Search"></div></button>
                            </td>
                        </tr>
                        </form>
                <form method="POST" action="InsertMessageInMessageLog.asp">
                            <textarea id="MainTextArea" name="MainTextArea" readonly>
                            </textarea>
                     <% 
                    Dim con,rs
                    Set con=Server.CreateObject("ADODB.Connection")
                    con.ConnectionString="DSN=Epistle"
                    con.Open
                    Set rs=Server.CreateObject("ADODB.RecordSet")
                    If Session("SearchOptions")="" then
                    rs.Open "SELECT * FROM Users WHERE UserName <>'"&Session("UserName")&"'",con
                    Else 
                    rs.Open "SELECT * FROM Users WHERE UserName LIKE '%"&Session("SearchOptions")&"%' AND UserName<> '"&Session("UserName")&"'",con
                    Session("SearchOptions")=""
                    End If
                    Do Until rs.EOF
                    %>
                        <tr>
                            <td colspan="3">
                                <div id="User" class="User">
                                    <div id="UserNameDiv" class="UserNameDiv">
                                    <%
                                    If rs("Active")="False" then
                                    %>
                                    <div id="UserActive" class="UserActive">
                                        <div id="UserActiveStatus" class="UserActiveStatus" style="background-color:#d818187c;clear:left;float:right;">Not Active</div>
                                    </div>
                                    <%
                                    Else
                                    %>
                                    <div id="UserActive" class="UserActive">
                                        <div id="UserActiveStatus" class="UserActiveStatus" style="font-family: 'Indie Flower', cursive;background-color:#0b9b177c;clear:left;float:right;">Active</div>
                                    </div>
                                    <%
                                    End If
                                    %>
                                        <pre id="UserName" class="UserName"><%=rs("UserName")%></pre>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <%
                        rs.moveNext
                        Loop
                        %>
                    </table>
                    
                </div>
            </td>
        </tr>
    </table>
</div>
<div id="MainUserMessages">
    <div id="UserNameInUserMessages">
        <pre id="UserNameTitleInUserMessages"><font color="ghostwhite"><b><pre id="UserNameTitleInUserMessagesInner"></pre></b></font></pre>
    </div>
    <div id="PreviousMessages">
        <div id="GoToTextField">
            <a href="#EndOfMessagesDiv"><img src="GoToTextFieldButtonMain.png" alt="Go To Text Field"></img></a>
        </div>
        <div id="MessageList">
                    <%
                    Dim con2,rs2
                    Set con2=Server.CreateObject("ADODB.Connection")
                    con2.ConnectionString="DSN=Epistle"
                    con2.Open
                    Set rs2=Server.CreateObject("ADODB.RecordSet")
                    rs2.Open "SELECT * FROM MessageLog WHERE Sender='"&Session("UserName")&"' AND Receiver='"&Request.Cookies("UserEnd")&"' OR Sender='"&Request.Cookies("UserEnd")&"' AND  Receiver='"&Session("UserName")&"' ORDER BY Id ASC",con2
                    Do Until rs2.EOF
                    If rs2("Sender")=Session("UserName") then
                    %>
            <div id="LeftClearance">
                <div id="RightClearance">
                    <div id="MessageSent">
                        <div id="MainMessage">
                            <%=rs2("Message")%>
                        </div>
                        <div id="DateTimeOfMessageSent">
                            <%=rs2("TimeStampOfMessage")%>
                        </div>                
                    </div>
                </div>
            </div>
                <%
                Else
                %>
            <div id="LeftClearance">
                <div id="RightClearance">
                    <div id="MessageReceived">
                            <div id="MainMessage">
                                <%=rs2("Message")%>
                            </div>
                        <div id="DateTimeOfMessageReceived">
                            <%=rs2("TimeStampOfMessage")%>
                        </div>
                    </div>
                </div>
            </div>
                    <%
                    End If
                    rs2.moveNext
                    Loop
                    %>
            <div id="EndOfMessagesDiv"></div>
        </div>
            
    <div id="TextFieldDivSuper">
    <div id="TextFieldDiv">
        <div id="editor">
        </div>
    </div>
    <div id="SendMessageIconDiv">
    <button id="SubmitButton"><img src="SendImageIcon.png" alt="SendMessage" id="SendMessageIconId"/></button>
    </div>
    </div>
</div>
</form> 
</body>
<script src="https://cdn.ckeditor.com/ckeditor5/12.4.0/inline/ckeditor.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        var messageBody = document.querySelector('#MessageList');
        messageBody.scrollTop = messageBody.scrollHeight - messageBody.clientHeight;
        document.getElementById("MainTextArea").style.visibility = "hidden";
        $("#MainUserMessages").hide();
        $(".UserName").click(function(e){
            //location.reload();
            document.cookie="UserEnd="+e.target.innerText;
            document.getElementById("UserNameTitleInUserMessagesInner").innerHTML=e.target.innerText;
            $("#MainUserMessages").show();
            document.cookie="UserEnd="+e.target.innerText;
        });
        $(".UserName").dblclick(function(){
        location.reload();
        });
    })

   InlineEditor
    .create( document.querySelector( '#editor' ),{
         toolbar: ['Heading','|','bold', 'italic', 'bulletedList', 'numberedList', 'blockQuote', 'Link','Undo', 'Redo']
    } )
    .then( editor => {
        console.log( editor );
        $("#SendMessageIconDiv").hover(function(){
        document.getElementById("MainTextArea").innerHTML=editor.getData();
        console.log(editor.getData());
        });
    } )
    .catch( error => {
        console.error( error );
    } );

</script>
</html>