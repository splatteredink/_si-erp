/**
 * UserController
 *
 * @module      :: Controller
 * @description	:: A set of functions called `actions`.
 *
 *                 Actions contain code telling Sails how to respond to a certain type of request.
 *                 (i.e. do stuff, then send some JSON, show an HTML page, or redirect to another URL)
 *
 *                 You can configure the blueprint URLs which trigger these actions (`config/controllers.js`)
 *                 and/or override them with custom routes (`config/routes.js`)
 *
 *                 NOTE: The code you write here supports both HTTP and Socket.io automatically.
 *
 * @docs        :: http://sailsjs.org/#!documentation/controllers
 */

var passport = require('passport');

 module.exports = {

 	signup: function(req, res) {
 		return res.view({
 			title: "Sign up"
 		});
 	},

 	create: function(req, res, next) {

 		var userObj = {
 			name: req.param('name'),
 			email: req.param('email'),
 			password: req.param('password'),
 			username: req.param('email'),
 			usertype: 'manager',
 			block: '0'
 		}
    // Create a User with the params sent from 
    // the sign-up form --> new.ejs
    User.create(userObj, function userCreated(err, user) {

      // // If there's an error
      // if (err) return next(err);

      if (err) {
      	console.log(err);
      	req.session.flash = {
      		err: err
      	}

        // If error redirect back to sign-up page
        return res.redirect('/user/signup');
    }
    
    req.flash.notice('Your action was successful');

    return res.redirect('/user/signup');

});
},


login: function(req, res){
	passport.authenticate('local', function(err, user, info){
      if ((err) || (!user)) res.send(err);
      req.logIn(user, function(err){
        if (err) res.send(err);
        return res.send({ message: 'login successful' });
      });
    })(req, res);
  },
  
  logout: function (req,res){
    req.logout();
    res.send('logout successful');
  },

  /**
   * Overrides for the settings in `config/controllers.js`
   * (specific to UserController)
   */
   _config: {}


};
