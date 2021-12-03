function errormsg(id)
{
    document.getElementById(id).innerHTML="This Feild is required";
    document.getElementById(id).className=" error"; 
    return 1;
}
function successmsg(id)
{
    document.getElementById(id).innerHTML=""; 
    document.getElementById(id).className = id;
    return 0;
}
function validate() {
    var uname = document.getElementById("username").value;
    if(uname.trim().length == 0) {
        uname_flag = errormsg("uerror");  
    }
    else {
        uname_flag = successmsg("uerror");
    }
    var pwd = document.getElementById("pwd").value;
    if(pwd.trim().length == 0) {
        pwd_flag = errormsg("perror");
    }
    else {
        pwd_flag = successmsg("perror");
    }
    if(uname_flag == 1 || pwd_flag == 1)
    {
        return false;
    }
    else
    {
        return true;
    }
}
