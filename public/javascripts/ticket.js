$(document).ready(function(){
	$('#new_ticket').click(function(){
    $('#new_ticket_modal').modal();
  });
	$(".delete_ticket").click(function(){
    if (!confirm("Do you want to delete this ticket?")){
      return false;
    }
  });
});