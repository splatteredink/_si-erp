$(document).ready(function(){
	
  $('#tick_full_name').focus();
  
  //Ticket Form Validation
  $('#ticket_form').validate({ 
    rules: {
      ticket_full_name: 'required',
      ticket_email_address: 'required',
      ticket_subject: 'required',
      ticket_desc: 'required',
    },
    messages: {
     ticket_full_name: 'Please enter your name.',
     ticket_email_address: 'Please enter a valid email address.',
     ticket_subject: 'Please enter ticket subject.',
     ticket_desc: 'Please enter a ticket description.',
   },
   highlight: function(element) {
    $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
   }
  });
});