$(document).ready(function(){
	
  $('#user_name').focus();
  $('#login_username').focus();

  //Login Form Validation
  $('#login_form').validate({ 
    rules: {
      login_email_address: 'required',
      login_password: 'required',
    },
    messages: {
     login_email_address: 'Please enter a valid email address.',
     login_password: 'Please enter a valid password.',
   },
   highlight: function(element) {
    $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
  }
});

  //Signup Form Validation
  $('#signup_form').validate({ 
    rules: {
      name: 'required',
      email: {
       required: true,
       email: true, 
      },
      password: 'required',
      user_password1:{
        required: true,
        equalTo: "#signup_password" 
      } 
    },
    messages: {
      name: 'Please enter your full name.',
      email: 'Please enter valid email address.',
      password: 'Please enter a password.',
      user_password1: 'Please repeat the password.',
    },
    highlight: function(element) {
      $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
    }
  });  
});