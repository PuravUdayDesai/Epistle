var data="";
var selected=-1;
var mails=["mail.com","ahoo.com","vgroup.in","ediffmail.com"];
var firstMailEntry=false;
//for name field
$("#name").keydown(function()
{
    var name=document.getElementById("name").value;
    var newElement="";
    for(var i=0;i<name.length;i++)
    {
        if(name.charAt(i)>='a'&&name.charAt(i)<='z'||name.charAt(i)>='A'&&name.charAt(i)<='Z'||name.charAt(i)==' ')
        {
            newElement+=name.charAt(i);
        }
    }
    document.getElementById("name").value=newElement;
});
$("#name").keyup(function(){
    if(event.keyCode==48||event.keyCode==49||event.keyCode==50||event.keyCode==51||event.keyCode==52||event.keyCode==53||event.keyCode==54||event.keyCode==55||event.keyCode==56||event.keyCode==57)
    {
        $.notify("Please do not enter digits in Name", "warn");
        var name=document.getElementById("name").value;
        var finalName="";
        for(var i=0;i<name.length-1;i++)
        {
            finalName+=name.charAt(i);
        }
        document.getElementById("name").value=finalName;
    }
});
//for position field
$("#position").keydown(function()
{
    var position=document.getElementById("position").value;
    var newElement="";
    for(var i=0;i<position.length;i++)
    {
        if(position.charAt(i)>='a'&&position.charAt(i)<='z'||position.charAt(i)>='A'&&position.charAt(i)<='Z'||position.charAt(i)==' ')
        {
            newElement+=position.charAt(i);
        }
    }
    document.getElementById("position").value=newElement;
});
$("#position").keyup(function(){
    if(event.keyCode==48||event.keyCode==49||event.keyCode==50||event.keyCode==51||event.keyCode==52||event.keyCode==53||event.keyCode==54||event.keyCode==55||event.keyCode==56||event.keyCode==57)
    {
        $.notify("Please do not enter digits in position", "warn");
        var position=document.getElementById("position").value;
        var finalposition="";
        for(var i=0;i<position.length-1;i++)
        {
            finalposition+=position.charAt(i);
        }
        document.getElementById("position").value=finalposition;
    }
});
//for contact field
$("#contact").keyup(function(){
    if(event.keyCode!=37&&event.keyCode!=39)
    {
     contactLength=document.getElementById("contact").value.length;
     if(event.keyCode==8&&contactLength!=0)//backspace
     {
         --contactLength;
     }
     else
     {
         //verifies that the character entered is between 0 to 9 
     if(event.keyCode==48||event.keyCode==49||event.keyCode==50||event.keyCode==51||event.keyCode==52||event.keyCode==53||event.keyCode==54||event.keyCode==55||event.keyCode==56||event.keyCode==57||event.keyCode==96||event.keyCode==97||event.keyCode==98||event.keyCode==99||event.keyCode==100||event.keyCode==101||event.keyCode==102||event.keyCode==103||event.keyCode==104||event.keyCode==105)
     {
         if(contactLength==10)
         {
             contactLength=10;
         }
         else
         {
         ++contactLength;
         }
         //check for initials
         if(contactLength==2)
         {
             //(19.06.2019) Initials of a Mobile/Cellular phone can only start from 6, 7, 8 or 9
             if(event.keyCode==54||event.keyCode==55||event.keyCode==56||event.keyCode==57||event.keyCode==102||event.keyCode==103||event.keyCode==104||event.keyCode==105)
             {

             }
             else
             {
                 navigator.vibrate(250);
                 $.notify("Please do not enter Illegal Initials In Contact", "warn");
                 //deletes currently entered character(initial)
                 var contact=document.getElementById("contact").value;
                 var finalContact="";
                 for(var i=0;i<contact.length-1;i++)
                 {
                     finalContact+=contact.charAt(i);
                 }
                 document.getElementById("contact").value=finalContact;
                 --contactLength;
             }
             
         }
     }
     else
     {
         navigator.vibrate(250);
         $.notify("Please do not enter letters in Contact","warn");
         //deletes currently entered character(current(this))
         var contact=document.getElementById("contact").value;
         var finalContact="";
         for(var i=0;i<contact.length-1;i++)
         {
             finalContact+=contact.charAt(i);
         }
         document.getElementById("contact").value=finalContact;
         
     }
 }
}
 });

$("#contact").keypress(function(){
 var contact=document.getElementById("contact").value;
 var newElement="";
 for(var i=0;i<contact.length;i++)
 {

     if(contact.charAt(0)=='6'||contact.charAt(0)=='7'||contact.charAt(0)=='8'||contact.charAt(0)=='9')
     {
     if(contact.charAt(i)>='0'&&contact.charAt(i)<='9')
     {
         newElement+=contact.charAt(i);
     }
     }
     else{
         newElement+="";
     }
 }
 document.getElementById("contact").value=newElement;
});
//start of Submit Stories
$("#submit").mouseover(function()
{

  if(selected==-1)
  {
    var mailContents=document.getElementById("email").value;
    var atPresent=false;
    var dotPresent=false;
    var anonymousExtension="";
    for(var i=0;i<mailContents.length;i++)
    {
      if(atPresent)
      {
        if(mailContents.charAt(i)=='.')
        {
          break;
        }
        anonymousExtension+=mailContents.charAt(i);
      }
      if(mailContents.charAt(i)=='@')
      {
        atPresent=true;
      }

    }
    if(anonymousExtension=="gmail")
    {
      selected=0;
    }
    else if(anonymousExtension=="yahoo")
    {
      selected=1;
    }
    else if(anonymousExtension=="ivgroup")
    {
      selected=2;
    }
    else if(anonymousExtension=="rediffmail")
    {
      selected=3;
    }
  }

  var newMail="";
  var mailContent=document.getElementById("email").value;
  var extensionMail="";
  var atHere=false;
  var presentMail="";
  for(var i=0;i<mailContent.length;i++)
  {
    if(mailContent.charAt(i)=='@')
    {
      atHere=true;
    }
    if(atHere)
    {
      if(mailContent.charAt(i)=='.')
      {
        break;
      }
      extensionMail+=mailContent.charAt(i);
    }
  }
  console.log("MailContent: "+mailContent);
  console.log("ExtensionMail: "+extensionMail);
  var fullCorrect=true;
  if(selected==0)
  {
    var presentMail="@g"+mails[selected];
  }
  else if(selected==1)
  {
    var presentMail="@y"+mails[selected];
  }
  else if(selected==2)
  {
    var presentMail="@i"+mails[selected];
  }
  else if(selected==3)
  {
    var presentMail="@r"+mails[selected];
  }
  console.log("Present Mail: "+presentMail);
  for(var i=0;i<extensionMail.length;i++)
  {
    if(presentMail.charAt(i)!=extensionMail.charAt(i))
    {
      fullCorrect=false;
      break;
    }
    if(extensionMail.charAt(i)=='.')
    {
        break;
    }
  }
  console.log("FullCorrect: "+fullCorrect);        
  if(fullCorrect)
  {
  for(var i=0;i<mailContent.length;i++)
  {
    newMail+=mailContent.charAt(i);
    if(selected!=-1)
    {
      if(mailContent.charAt(i)=='@')
      {
        if(selected==0)
        {
          newMail+=("g"+mails[selected]);
        }
        else if(selected==1)
        {
          newMail+=("y"+mails[selected]);
        }
        else if(selected==2)
        {
          newMail+=("i"+mails[selected]);
        }
        else if(selected==3)
        {
          newMail+=("r"+mails[selected]);
        }
        break;
      }
    }
  }
  document.getElementById("email").value=newMail;
}
else
{
  var newStart=0;
  var canExtend=false;
  for(var i=0;i<mailContent.length;i++)
  {
    newMail+=mailContent.charAt(i);
    if(!canExtend)
    {
    if(mailContent.charAt(i+1)=='@')
    {
      newStart=i+1;
      newMail+=extensionMail;
      newMail+='.';
      i+=(extensionMail.length+1);
      canExtend=true;
    }
    }
  }
  console.log("New Mail: "+newMail);
  document.getElementById("email").value=newMail;
}


 

});
//end of Submit Stories
//-----------------------------------------------

$("#email").keyup(function()
{
  var inAt=false;
  var getIn=false;
  var hurrayDotPresent=false;
  var contentsAfterAt="";
  var mailContent=document.getElementById("email").value;
  if(mailContent.charAt(0)!='@')
  {
  for(var i=0;i<mailContent.length;i++)
  {
  if(getIn)
  {
    contentsAfterAt+=mailContent.charAt(i);
  }
    if(!inAt)
    {
    if(mailContent.charAt(i)=='@')
    {
      inAt=true;
      getIn=true;
    }
  }
    if(inAt)
    {
    if(mailContent.charAt(i)=='.')
    {
      hurrayDotPresent=true;
      break;
    }

  }

}
}
else
{
$.notify("Please do not @ at starting", "warn");
}
if(firstMailEntry==true)
{
if(contentsAfterAt=="")
{
  hurrayDotPresent=false;
}
else{
  hurrayDotPresent=true;
}
}
var contentsOfMail=document.getElementById("email").value;
var atPresent=false;
var dotPresent=false;
for(var i=0;i<contentsOfMail.length;i++)
{
  if(contentsOfMail.charAt(i)=='@')
  {
    atPresent=true;
  }
  if(atPresent)
  {
  if(contentsOfMail.charAt(i)=='.')
  {
    dotPresent=true;
    break;
  }
  }
}
if(!hurrayDotPresent)
{
  selected=-1;
}
  if(getIn&&selected==-1&&!dotPresent)
  {
  if(event.keyCode==71)
  {
    selected=0;
    var mail=document.getElementById("email").value;
    document.getElementById("email").value=mail+mails[0];
    firstMailEntry=true;
  }
  else if(event.keyCode==89)
  {
    selected=1;
    var mail=document.getElementById("email").value;
    document.getElementById("email").value=mail+mails[1];
    firstMailEntry=true;
  }
  else if(event.keyCode==73)
  {
    selected=2;
    var mail=document.getElementById("email").value;
    document.getElementById("email").value=mail+mails[2];
    firstMailEntry=true;
  }
  else if(event.keyCode==82)
  {
    selected=3;
    var mail=document.getElementById("email").value;
    document.getElementById("email").value=mail+mails[3];
    firstMailEntry=true;
  }
}
});


