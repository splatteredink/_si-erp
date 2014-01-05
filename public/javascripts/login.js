$(document).ready(function(){

var lv = new LoginValidator();

	$('#sign_up_fullname').focus();
	$('#sign_up_button').click(function(e) {
		if (lv.validateForm() == false){
				return false;
		} 	else{
			return true;
		}
	});
});