<html>
    <head>
        <title>Epistle-SingUp</title>
    </head>
    <link rel="icon" href="EpistleLogo.png" type="image/icon type">
    <link href="https://fonts.googleapis.com/css?family=Be+Vietnam:500&display=swap" rel="stylesheet">
    <style>
   #MainForm{
    -ms-transform: translate(500px,200px);
  -webkit-transform: translate(500px,200px);
 transform: translate(500px,200px);
 border-style:solid;
 width:600px;
 border-color:black;
 box-shadow:10px 10px;
   }
   #name{
       height:30px;
       width: 300px;
       border-style: solid;
       border-top: none;
       border-left: none;
       border-right: none;
       background-color:rgba(0, 0, 0, 0);
   }
   #loginKey{
        height:30px;
       width:300px;
       border-style: solid;
       border-top: none;
       border-left: none;
       border-right: none;
       background-color:rgba(0, 0, 0, 0);
   }
   #contact{
        height:30px;
       width:300px;
       border-style: solid;
       border-top: none;
       border-left: none;
       border-right: none;
       background-color:rgba(0, 0, 0, 0);
   }
   #email{
       height:30px;
       width: 300px;
       border-style: solid;
       border-top: none;
       border-left: none;
       border-right: none;
       background-color:rgba(0, 0, 0, 0);
   }
   #position{
        height:30px;
       width: 300px;
       border-style: solid;
       border-top: none;
       border-left: none;
       border-right: none;
       background-color:rgba(0, 0, 0, 0);
   }
   table{
    border-collapse: separate;
  border-spacing: 15px;
  background-color:rgba(0, 0, 0, 0);
   }
   #UserNameTitle{font-family: 'Be Vietnam', sans-serif; font-size:25px;}
   #LoginKeyTitle{font-family: 'Be Vietnam', sans-serif; font-size:25px;}
   #ContactNumberTitle{font-family: 'Be Vietnam', sans-serif; font-size:25px;}
   #EmailIdTitle{font-family: 'Be Vietnam', sans-serif; font-size:25px;}
   #PositionTitle{font-family: 'Be Vietnam', sans-serif; font-size:25px;}
   #submit{
       border: 2px solid #4CAF50;
       width: 100px;
       height: 35px;
       font-family: 'Be Vietnam', sans-serif; font-size:20px;
       text-align:center;
   }
   #Positions{
       width:300px;
       height:40px;
       background-color:rgba(0, 0, 0, 0);
       border-style:solid;
       border-left:none;
       border-right:none;
    }
    .VariousPositions{
        background-color:rgba(115, 96, 151, 0.1);
        color:black;
    }

    </style>
    <body background="simpleThreads.png">
        <div id="MainForm" align="center"> 
            <form method="POST" action="InsertUserRecord.asp">
        <table>
            <tr>
                <td><div id="UserNameTitle">UserName:</div></td>
                <td><input type="text" id="name" name="name" placeholder="UserName" required /></td>
            </tr>
            <tr>
                <td><div id="LoginKeyTitle">Login Key:</div></td>
                <td><input type="password" id="loginKey" name="loginKey" placeholder="XXXXXXX" required /></td>
            </tr>
            <tr>
                <td><div id="ContactNumberTitle">Contact Number:</div></td>
                <td><input type="tel" id="contact" name="contact" placeholder="980000000" maxlength="10" required /></td>
            </tr>
            <tr>
                <td><div id="EmailIdTitle">Email-Id:</div></td>
                <td><input type="email" id="email" name="email" placeholder="example@example.in" required /></td>
            </tr>
            <tr>
                <td><div id="PositionTitle">Position:</div></td>
                <td>
                    <select id="Positions" name="position">
                        <option class="VariousPositions" value="Anonymous" selected>Anonymous</option>
                        <option class="VariousPositions" value="admin">admin</option>
                        <option class="VariousPositions" value="manager">manager</option>
                        <option class="VariousPositions" value="seniorMarketingManager">senior Marketing Manager</option>
                        <option  class="VariousPositions" value="digitalMarketingManager">digital Marketing Manager</option>
                        <option class="VariousPositions" value="Marketer">Marketer</option>
                        <option class="VariousPositions" value="seniorDeveloper">senior Developer</option>
                        <option class="VariousPositions" value="seniorQA">senior QA</option>
                        <option class="VariousPositions" value="seniorNetworkAdministrator">senior Network Administrator</option>
                        <option class="VariousPositions" value="seniorDatabaseAdministrator">senior Database Administrator</option>
                        <option class="VariousPositions" value="Developer">Developer</option>
                        <option class="VariousPositions" value="QA">QA</option>
                        <option class="VariousPositions" value="NetworkEngineer">Network Engineer</option>
                        <option class="VariousPositions" value="DatabaseAssistant">Database Assistant</option>
                        <option class="VariousPositions" value="Technitian">Technitian</option>
                        <option class="VariousPositions" value="Peon">Peon</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" id="submit" value="Submit" />
                </td>
            </tr>
        </table>
    </form>
    </div>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="notify.js"></script>
    <script src="Authenticate.js"></script>
</html>
