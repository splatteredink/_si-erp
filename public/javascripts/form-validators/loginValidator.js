
function LoginValidator(){

// bind a simple alert window to this controller to display any errors //

	this.loginErrors = $('.modal-alert');
	this.loginErrors.modal({ show : false, keyboard : true, backdrop : true });

	this.showLoginError = function(t, m)
	{
		$('.modal-alert .modal-header h3').text(t);
		$('.modal-alert .modal-body p').text(m);
		this.loginErrors.modal('show');
	}

}

LoginValidator.prototype.validateForm = function()
{
	if ($('#signup_full_name').val() == ''){
		this.showLoginError('Whoops!', 'Please enter a valid Name');
		return false;
	}	else if ($('#signup_email').val() == ''){
			this.showLoginError('Whoops!', 'Please enter a valid email');
			return false;
	}	else if ($('#signup_password').val() == ''){
			this.showLoginError('Whoops!', 'Please enter a valid password');
			return false;
	}	else if ($('#sign_password_rep').val() == ''){
			this.showLoginError('Whoops!', 'Please enter a valid password repeat');
			return false;
	}	else{
		return true;
	}
}