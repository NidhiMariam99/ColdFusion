<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Address Book</title>
	<link rel="icon"  href="img/logo.png">
	<link rel="stylesheet" type="text/css" href="css/styles-signup.css">	
    <script src="js/signup.js"></script>
</head>

<body>
    <div class="header">
		<div class="header_left">
			<img src="img/logo.png">
            <h3>ADDRESS BOOK</h3>
		</div>
		
		<div class="header_right">
				<img src="img/person.png">
                <h4>Sign Up</h4>
				<img src="img/login.png">
                <h4>Login</h4>
		</div>
	</div>	
    <div class="Main-Sect">
        <div class="Login">
            <div class="LoginLeft">
                <img src="img/logo.png">
            </div>
            <div class="LoginRight">
                <div class="loginbox">
                    <h1>SIGN UP</h1>
                    <form action="signupAction.cfm" onsubmit="return check()" name="myform" method="POST" >
                        <div class="field">
                            <input type="text" name="fname" id="fname" placeholder=" ">
                            <label for="fname">Full Name</label>
                        </div>
                        <p id="nameError"></p>

                        <div class="field" id="field2">
                            <input type="email" name="email" id="email" placeholder=" ">
                            <label for="email">Email ID</label>
                        </div>
                        <p id="emailError"></p>

                        <div class="field" id="field3">
                            <input type="text" name="uname" id="uname" placeholder=" ">
                            <label for="uname">Username</label>
                        </div>
                        <p id="userError"></p>

                        <div class="field" id="field4">
                            <input type="password" name="pass" id="pass" placeholder=" ">
                            <label for="pass">Password</label>
                        </div>
                        <p id="passError"></p>

                        <div class="field" id="field5">
                            <input type="password" name="cpass" id="cpass" placeholder=" ">
                            <label for="cpass">Confirm Password</label>
                        </div>
                        <p id="cpassError"></p>

                        <div class="Button">
                            <input type="Submit" name="Submit" value="CREATE">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>    

<script>
  var oXmlHttp
  function showRegions(name)
  {
      var url="signupResponder.cfm?&username=" +name
      oXmlHttp=GetHttpObject(stateChanged)
      oXmlHttp.open("POST", url , true)
      oXmlHttp.send(null)
  }
  function stateChanged()
  {
    if (oXmlHttp.readyState==4 || oXmlHttp.status==200)
    {              
      if(oXmlHttp.responseText == 1)
      {
        document.getElementById("userError").innerHTML="This User Name is not available";
      }  
      else
      {
        document.getElementById("userError").innerHTML="This User Name is available";
      }   
    }  
    else
    {
      return false;
    }   
  }
  function GetHttpObject(handler)
  {
    try
    {
        var oRequester = new XMLHttpRequest();
        oRequester.onload=handler
        oRequester.onerror=handler
        return oRequester
    }
  catch (error)
  {
    try
        {
        var oRequester = new ActiveXObject("Microsoft.XMLHTTP");
        oRequester.onreadystatechange=handler
        return oRequester
        }
    catch (error)
        {
        return false;
        }
    }
  }
</script>