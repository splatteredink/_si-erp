$(document).ready(function(){
	
  $('#login_email').focus();
  $('#signup_full_name').focus();

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
      signup_full_name: 'required',
      signup_email_address: {
       required: true,
       email: true, 
      },
      signup_password: 'required',
      signup_password_rep:{
        required: true,
        equalTo: "#signup_password" 
      } 
    },
    messages: {
      signup_full_name: 'Please enter your full name.',
      signup_email_address: 'Please enter valid email address.',
      signup_password: 'Please enter a password.',
      signup_password_rep: 'Please repeat the password.',
    },
    highlight: function(element) {
      $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
    }
  });

  
  // Forgot Password Modal window
  $('#forgot_password_link').click(function(){
    $('#forgot_password_modal').modal();
  });

  //For displaying message when no user found in database.
  // $('#login_form').ajaxForm({
  //   success : function(responseText, status, xhr, $form){
  //     alert(responseText);
  //     if (status == 'success') window.location.href = responseText;
  //   },
  //   error : function(e){
  //     showLoginError('Login Failure', 'Please check your username and/or password');
  //   }
  // });

  function showLoginError(t,m){
    $('#alertModal .modal-header h4').text(t);
    $('#alertModal .modal-body p').text(m);
    $('#alertModal').modal();
  }
});