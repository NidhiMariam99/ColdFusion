function openForm() {
    document.getElementById("myForm").style.display = "block";
}
function closeForm() {
    document.getElementById("myForm").style.display = "none";
}
function errormsg(id)
{
    document.getElementById(id).style.border="1px solid red"; 
    document.getElementById(id).focus(); 
    return false;
}
function successmsg(id)
{
    document.getElementById(id).style.border="none"; 
    return true;
}

function createValidate() {
    if((title_val() && fname_val() && lname_val() && gender_val() && dob_val() && address_val() && street_val() && pin_val() && mail_val() && phone_val()) == true)
    {
        return true;
    }
    else
    {
        return false;
    }
}

function title_val() {
    let tt = document.getElementById("title").value;
    if (tt.trim().length == 0) {
        tflag = errormsg("title"); 
        return false;
    }
    else {
        tflag = successmsg("title"); 
        return true;
    }
}
function fname_val() {
    let fn = document.getElementById("fname").value;
    var text=/^[A-Za-z]+$/;
    if (fn.trim().length == 0) {
        fflag = errormsg("fname"); 
        return false;
    }
    else if (!/[^a-zA-ZàâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ]/.test(fn)) {
        tflag = successmsg("fname"); 
        return true;
    }
    else if(fn.match(text)) {
        tflag = successmsg("fname"); 
        return true;
    }
    else{
        fflag = errormsg("fname"); 
        return false;
    }
}
function lname_val() {
    let ln = document.getElementById("lname").value;
    var text=/^[A-Za-z ]+$/;
    if (ln.trim().length == 0) {
        lflag = errormsg("lname"); 
        return false;
    }
    else if (!/[^a-zA-ZàâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ]/.test(ln)) {
        lflag = successmsg("lname"); 
        return true;
    }
    else if(ln.match(text)) {
        lflag = successmsg("lname");
        return true;
    }
    else{
        lflag = errormsg("lname"); 
        return false;
    }
}
function gender_val() {
    let gender = document.getElementById("gender").value;
    if (gender.trim().length == 0) {
        gflag = errormsg("gender"); 
        return false;
    }
    else {
        gflag = successmsg("gender"); 
        return true;
    }
}
function dob_val() {
    let db = document.getElementById("dob").value;
    var inpDate = new Date(db);
    var currDate = new Date();
    if(db.trim().length == 0) {
        dbflag = errormsg("dob"); 
        return false;
    }
    else if (inpDate.setHours(0, 0, 0, 0) > currDate.setHours(0, 0, 0, 0)) {
        dbflag = errormsg("dob"); 
        return false;
    }
    else {
        dbflag = successmsg("dob"); 
        return true;
    }
}
function address_val() {
    let add = document.getElementById("add").value;
    if (add.trim().length == 0) {
        addflag = errormsg("add"); 
        return false;
    }
    else {
        addflag = successmsg("add"); 
        return true;
    }
}
function street_val() {
    let strt = document.getElementById("street").value;
    if (strt.trim().length == 0) {
        strtflag = errormsg("street"); 
        return false;
    }
    else {
        strtflag = successmsg("street"); 
        return true;
    }
}
function pin_val() {
    let pc = document.getElementById("pin").value;
    if(pc.trim().length == 0) {
        pinflag = errormsg("pin"); 
        return false;
    }
    else if (pc.length < 6) {
        pinflag = errormsg("pin"); 
        return false;
    }
    else if (pc.length > 6) {
        pinflag = errormsg("pin"); 
        return false;
    }
    else
    {
        pinflag = successmsg("pin"); 
        return true;
    }
}
function mail_val() {
    let ml = document.getElementById("mail").value;
    var format = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (ml.trim().length == 0) {
        mailflag = errormsg("mail"); 
        return false;
    }
    else if(ml.match(format)) {
        mailflag = successmsg("mail"); 
        return true;
    }
    else {
        mailflag = errormsg("mail"); 
        return false;
    }
}
function phone_val() {
    let mb = document.getElementById("Phone").value;
    var regExp = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/;
    if(mb.trim().length == 0) {
        phoneflag = errormsg("Phone");
        return false;
    }
    else if (mb.match(regExp)) {
        phoneflag = successmsg("Phone"); 
        return true;
    }
    else {
        phoneflag = errormsg("Phone"); 
        return false;
    }
}