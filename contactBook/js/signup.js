function check()
{
    var fname=document.getElementById('fname').value;
    var fullname=fname.split(" ").join("");
    if (fullname.length<3 || /[^a-zA-ZàâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ]/.test(fullname))
    {
        errormsg("Name","nameError");
        document.getElementById("fname").focus();
        return false;
    }
    else
    {
       success("nameError")
    }

    var mail_format =  /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var emailcheck=document.getElementById("email");
    if(!emailcheck.value.match(mail_format))
    {
        errormsg("Email","emailError","email");
        document.getElementById("email").focus();
        return false;
    }
    else
    {
      success("emailError")  
    } 

    var un = document.getElementById("uname").value;
    if(un == "")
    {
        document.getElementById("userError").innerHTML = "**Fill the username please!";
        document.getElementById("userError").className="error";
        return false;
    } 
    else
    {
        document.getElementById("userError").innerHTML = "";
    }


    var pw = document.getElementById("pass").value;
    if(pw == "")
    {
        document.getElementById("passError").innerHTML = "**Fill the password please!";
        document.getElementById("passError").className="error";
        return false;
    }
   
    else if(pw.length < 8)
    {
        document.getElementById("passError").innerHTML = "**Password length must be atleast 8 characters";
        document.getElementById("passError").className="error";
        return false;
    }
  
    else if(pw.length > 15)
    {
        document.getElementById("passError").innerHTML = "**Password length must not exceed 15 characters";
        document.getElementById("passError").className="error";
        return false;
    } 
    else
    {
        document.getElementById("passError").innerHTML = "";
    }

    var pwd=document.getElementById("pass").value;
    var repwd=document.getElementById("cpass").value;
    if(pwd == "") {
        document.getElementById("cpassError").innerHTML = "**Fill the password!";
        document.getElementById("cpassError").className="error";
        return false;
    }
    else if(pwd==repwd)
    {
        document.getElementById("cpassError").innerHTML="";
    }
    else
    {
        document.getElementById("cpassError").innerHTML="**Password do not match";
        document.getElementById("cpassError").className="error";
        return false;
    }

}

function errormsg(input,id)
{
    document.getElementById(id).innerHTML=input+" is Invalid";
    document.getElementById(id).className="error";
}

function success(id)
{
    document.getElementById(id).innerHTML="";
}

function printit()
{
  var user = document.getElementById("uname").value;
  document.getElementById("demo").innerHTML = user ;
  return false;
}
