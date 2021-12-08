function deleteForm() {
    document.getElementById("deleteForm").style.display = "block";
}

function closeDelete() {
    document.getElementById("deleteForm").style.display = "none";
}

function deleteContact(id) {
    $.ajax({
      url: "component/component.cfc?method=selectById&&contactId="+ id,
      success: function( data ) {
        data = jQuery.parseJSON(data);
        $.each(data.DATA, function(i, row){
          $("#deleteId").val(row[0])
        });
      }
    });
  }