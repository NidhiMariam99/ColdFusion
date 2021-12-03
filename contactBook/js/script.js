function createForm() {
    document.getElementById("createForm").style.display = "block";
  }
  function closeForm() {
    document.getElementById("createForm").style.display = "none";
  }

  function editForm() {
    document.getElementById("editForm").style.display = "block";
  }
  function closeForm2() {
    document.getElementById("editForm").style.display = "none";
  }
  
  function deleteForm() {
    document.getElementById("deleteForm").style.display = "block";
  }
  
  function closeDelete() {
    document.getElementById("deleteForm").style.display = "none";
  }

  function viewForm() {
    document.getElementById("viewForm").style.display = "block";
  }

  function closeView() {
    document.getElementById("viewForm").style.display = "none";
  }

  
function editContact(contact_id) {
  $.ajax({
    url: "component/component.cfc?method=populator&&contact_key="+contact_id,
    success: function( data ) {
      data = jQuery.parseJSON(data);
      console.log(data)
      $.each(data.DATA, function(i, row){
        $("#userfk").val(row[0])
        $("#edittitle").val(row[2])
        $("#editFName").val(row[3])
        $("#editLName").val(row[4])
        $("#editGender").val(row[5])
        $("#editDob").val(row[6])
        $("#editAddress").val(row[8])
        $("#editStreet").val(row[9])
        $("#editPincode").val(row[10])
        $("#editEmail").val(row[11])
        $("#editPhone").val(row[12])
      });
    }
  });
}

function deleteContact(contact_id) {
  $.ajax({
    url: "component/component.cfc?method=populator&&contact_key="+contact_id,
    success: function( data ) {
      data = jQuery.parseJSON(data);
      $.each(data.DATA, function(i, row){
        $("#userid_get_delete").val(row[0])
      });
    }
  });
}

function viewContact(contact_id) {
  $.ajax({
    url: "component/component.cfc?method=populator&&contact_key="+contact_id,
    success: function( data ) {
      console.log(data)
      data = jQuery.parseJSON(data);
      $.each(data.DATA, function(i, row){
        $(".inserttitle").html(row[2])
        $(".insertFName").html(row[3])
        $(".insertLName").html(row[4])
        $(".insertGender").html(row[5])
        $(".insertDob").html(row[6])
        $(".insertAddress").html(row[8])
        $(".insertStreet").html(row[9])
        $(".insertPincode").html(row[10])
        $(".insertEmail").html(row[11])
        $(".insertPhone").html(row[12])
      });
    }
  });
}


 
function errormsg(id)
{
    document.getElementById(id).style.border="1px solid red"; 
    document.getElementById(id).focus(); 
    return 1;
}
function successmsg(id)
{
    document.getElementById(id).style.border="none"; 
    return 0;
}

function validate() {
    var title_flag = title_val();
    var fname_flag = fname_val();
    var lname_flag = lname_val();
    var gender_flag = gender_val();
    var dob_flag = dob_val();
    var add_flag = address_val();
    var strt_flag = street_val();
    var pin_flag = pin_val();
    var mail_flag = mail_val();
    if(title_flag == 1 || fname_flag == 1 || lname_flag == 1 || gender_flag == 1 || dob_flag == 1 || add_flag == 1 || strt_flag == 1 || pin_flag == 1 || mail_flag == 1 || phone_flag == 1)
    {
        return false;
    }
    else
    {
        return true;
    }
}

function title_val() {
    let tt = document.getElementById("title").value;
    if (tt.trim().length == 0) {
        tflag = errormsg("title"); 
        return tflag;
    }
    else {
        tflag = successmsg("title"); 
        return tflag;
    }
}
function fname_val() {
    let fn = document.getElementById("fname").value;
    var text=/^[A-Za-z]+$/;
    if (fn.trim().length == 0) {
        fflag = errormsg("fname"); 
        return fflag;
    }
    else if (!/[^a-zA-ZàâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ]/.test(fn)) {
        tflag = successmsg("fname"); 
        return tflag;
    }
    else if(fn.match(text)) {
        tflag = successmsg("fname"); 
        return tflag;
    }
    else{
        fflag = errormsg("fname"); 
        return fflag;
    }
}
function lname_val() {
    let ln = document.getElementById("lname").value;
    var text=/^[A-Za-z ]+$/;
    if (ln.trim().length == 0) {
        lflag = errormsg("lname"); 
        return lflag;
    }
    else if (!/[^a-zA-ZàâäèéêëîïôœùûüÿçÀÂÄÈÉÊËÎÏÔŒÙÛÜŸÇ]/.test(ln)) {
        lflag = successmsg("lname"); 
        return lflag;
    }
    else if(ln.match(text)) {
        lflag = successmsg("lname");
        return lflag;
    }
    else{
        lflag = errormsg("lname"); 
        return lflag;
    }
}
function gender_val() {
    let gender = document.getElementById("gender").value;
    if (gender.trim().length == 0) {
        gflag = errormsg("gender"); 
        return gflag;
    }
    else {
        gflag = successmsg("gender"); 
        return gflag;
    }
}
function dob_val() {
    let db = document.getElementById("dob").value;
    var inpDate = new Date(db);
    var currDate = new Date();
    if(db.trim().length == 0) {
        dbflag = errormsg("dob"); 
        return dbflag;
    }
    else if (inpDate.setHours(0, 0, 0, 0) > currDate.setHours(0, 0, 0, 0)) {
        dbflag = errormsg("dob"); 
        return dbflag;
    }
    else {
        dbflag = successmsg("dob"); 
        return dbflag;
    }
}
function address_val() {
    let add = document.getElementById("add").value;
    if (add.trim().length == 0) {
        addflag = errormsg("add"); 
        return addflag;
    }
    else {
        addflag = successmsg("add"); 
        return addflag;
    }
}
function street_val() {
    let strt = document.getElementById("street").value;
    if (strt.trim().length == 0) {
        strtflag = errormsg("street"); 
        return strtflag;
    }
    else {
        strtflag = successmsg("street"); 
        return strtflag;
    }
}
function pin_val() {
    let pc = document.getElementById("pin").value;
    if(pc.trim().length == 0) {
        pinflag = errormsg("pin"); 
        return pinflag;
    }
    else if (pc.length < 6) {
        pinflag = errormsg("pin"); 
        return pinflag;
    }
    else if (pc.length > 6) {
        pinflag = errormsg("pin"); 
        return pinflag;
    }
    else
    {
        pinflag = successmsg("pin"); 
        return pinflag;
    }
}
function mail_val() {
    let ml = document.getElementById("mail").value;
    var format = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (ml.trim().length == 0) {
        mailflag = errormsg("mail"); 
        return mailflag;
    }
    else if(ml.match(format)) {
        mailflag = successmsg("mail"); 
        return mailflag;
    }
    else {
        mailflag = errormsg("mail"); 
        return mailflag;
    }
}
