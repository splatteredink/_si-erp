/**
 * Allow a logged-in user to see, edit and update her own profile
 * Allow admins to see everyone
 */

 module.exports = function(req, res, ok) {

 	var userid = req.session.passport.user;
	// The requested id does not match the user's id,
	// and this is not an admin
	
	User.findById(userid).done(function(err, user) {
		if(err) return next(err);
		if(user[0].usertype == "manager" || user[0].usertype == "administrator"){
			ok();
		}else{
			// var noRightsError = [{name: 'noRights', message: 'You must be an admin.'}]
			// req.session.flash = {
			// 	err: noRightsError
			// }
			res.redirect('/ticket');
			return;
		}

	});
};