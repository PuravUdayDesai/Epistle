<% @Language=VBScript%>
<%Option Explicit%>
<%
Dim userId,loginKey
userId=Request.Cookies("UserId")
loginKey=Request.Cookies("LoginKey")
%>
<html>
<head>
    <title>Epistle-Login</title>
</head>
<link rel="icon" href="EpistleLogo.png" type="image/icon type">
<link href='https://fonts.googleapis.com/css?family=Capriola' rel='stylesheet'>
<style>
@import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap');
</style>
<style>

#LoginTable
{
-ms-transform: translate(650px,270px);
  -webkit-transform: translate(650px,270px);
 transform: translate(600px,180px);
}
#UserId{
    background-color:rgba(10, 50, 70, 0.63);
    border-color: rgb(0,0,0);
    color:white;
    height:35px;
    transition:height 1s;
    -webkit-transition:height 1s;
}
#UserId:focus {
    height:40px;
    font-size:16px;
}
#LoginKey{
    background-color:rgba(10, 50, 70, 0.63);
    border-color: rgb(0,0,0);
    color:white;
    height:35px;
    transition:height 1s;
    -webkit-transition:height 1s;
}
#LoginKey:focus {
    height:40px;
    font-size:16px;
}
#LoginKeyValue{
    background-color:rgba(10, 50, 70, 0.63);
    border-color: rgb(0,0,0);
    color:white;
    height:35px;
    transition:height 1s;
    -webkit-transition:height 1s;
  }
#LoginKeyValue:focus{
    height:40px;
    font-size:16px;
  }
#UserIdTitle{
    font-family: 'Capriola';font-size: 22px;
}
#LoginKeyTitle{
    font-family: 'Capriola';font-size: 22px;
}
#RememberMe{
    font-family: 'Capriola';font-size: 15px;
}
#Submit {
  display: inline-block;
  padding: 10px 20px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  font-family: 'Capriola';font-size: 15px;
  color: white;
  background-color: rgba(10, 12, 100, 0.288);
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

#Submit:hover {background-color:rgba(10, 12, 100, 0.288);}

#Submit:active {
  background-color:rgba(10, 12, 100, 0.288);
  box-shadow: 0 5px rgb(50, 55, 73);
  transform: translateY(4px);
}
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: rgba(238, 16, 34, 0.329);
  border-radius: 10px;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: rgba(31, 38, 99, 0.575);
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: rgba(40, 114, 175, 0.425);
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
#RemberMeDiv
{
  padding: 10px;
}
#ShowPassword{
    background-color: rgba(26, 11, 228, 0.034);
  color: black;
  border: 2px solid rgba(50, 12, 187, 0.014);
  border-radius: 10px; 
}
#MainTable{
  box-shadow: 2px 2px 2px 2px rgba(0, 1, 43, 0.507);
    padding-bottom:13px;
  }
  #UserNotificationDiv{
  -ms-transform: translate(270px,0px);
-webkit-transform: translate(270px,0px);
 transform: translate(550px,100px);
  width:500px;
  height:100px;
  background-color: #ffffff9a;
  font-family: 'Source Sans Pro', sans-serif;
  font-size: 30px;
  }
  body{
  opacity: 100; 
  }
</style>
<body background="Organizer Desktop Wallpaper.png">
    <div id="UserNotificationDiv">
    <%
    If Session("UserNotifications")=2 then
    %>
    <div id="InvalidCredentialsEntered" align="center">
    <font color="red">Invalid Credentials Entered</font>
    </div>
    <%
    ElseIf Session("UserNotifications")=1 then
    %>
    <div id="UserRegisteredSuccessfully" align="center">
    <font color="green">User Registered Successfully</font>
    </div>
    <%
    ElseIf Session("UserNotifications")=0 then
    %>
    <div id="UserLoggedOutSuccessfully" align="center">
    User LoggedOut Successfully
    </div>
    <%
    Else
    %>
    <div id="Login" align="center">
    Please Enter Your Credentials
    </div>
    <%
    End If
    %>
    </div>
    <form method="POST" action="Epistle-Login.asp">
        <div id="LoginTable">
        <table id="MainTable">
            <tr>
                <td><pre id="UserIdTitle"><font color="white">UserName:</font></pre></td>
                <td><input type="text" id="UserID" name="UserId" placeholder="UserId" value="<%=userId%>"  required /></td>
            </tr>
            <tr>
                <td><pre id="LoginKeyTitle"><font color="white">Login Key:</font></pre></td>
                <td><div id="LoginKeyDiv"><input type="password" id="LoginKey" name="LoginKey" placeholder="LoginKey" value="<%=loginKey%>" required /></div>
                <div id="LoginKeyValueDiv"><input type="text" id="LoginKeyValue"  /></div></td>
                <td><div id="ShowPassword"><img src="EyeIcon.png" alt="Show Password" id="ShowPasswordImage" /></img></div></td>
            </tr>
            <tr>
                <td>
                  <div id="RemberMeDiv">
                    <label class="container"><b id="RememberMe"><font color="white">Remember Me</font></b>
                        <input type="checkbox" name="RememberMeCheckBox">
                        <span class="checkmark"></span>
                      </label>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" id="Submit" value="Login"/>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
 $(document).ready(function(){
    $("#LoginKeyValueDiv").hide();

    $("#ShowPassword").mouseover(function(){
        $("#LoginKeyDiv").hide();  
          document.getElementById("LoginKeyValue").value=document.getElementById("LoginKey").value;
        $("#LoginKeyValueDiv").show();
        document.getElementById("ShowPasswordImage").src="CloseEyeIcon.png";
    });
    
    $("#ShowPassword").mouseleave(function(){
        $("#LoginKeyValueDiv").hide();
        $("#LoginKeyDiv").show();
         document.getElementById("ShowPasswordImage").src="EyeIcon.png";
    });

});
</script>
</html>