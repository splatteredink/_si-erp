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
      usertype: 'registered',
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

      // Log user in
      req.session.authenticated = true;
      req.session.User = user;

      // Change status to online
      //user.online = true;
      user.save(function(err, user) {
        if (err) return next(err);

      // add the action attribute to the user object for the flash message.
      user.action = " signed-up and logged-in."

      // Let other subscribed sockets know that the user was created.
      User.publishCreate(user);

        // After successfully creating the user
        // redirect to the show action
        // From ep1-6: //res.json(user); 

        res.redirect('/user/show/' + user.id);
      });
    });
  },



  login: function(req, res){
  	//var simplecrypt = require("simplecrypt");
    //var sc = simplecrypt();
    var password = req.param('login_password');
    var user_email = req.param('login_email_address');
    User.findOneByEmail(user_email).done(function (err, user) {
      if (err) res.json({ error: 'DB error' }, 500);

      if (user) {
      	//var asd = user.password;
      	//var decryptedpassword = sc.decrypt(asd);
      	///console.log(decryptedpassword);
      	// console.log(decryptedpassword);
      	if(password == user.password){
      		req.session.user = user.id;
      		res.json(user);
      	}else{
      		if (req.session.user) req.session.user = null;
            req.session.flash = {
          		err: "Invalid password!"
        	}
            return res.redirect('/');
      	}
      } else {
        res.json({ error: 'User not found' }, 404);
      }
    });
  }, 


  show: function(req, res, next) {
    User.findOne(req.param('id'), function foundUser(err, user) {
      if (err) return next(err);
      if (!user) return next();
      res.view({
        user: user,
        _layoutFile: '../layouts/inner_layout.ejs'
      });
    });
  },



   // render the edit view (e.g. /views/edit.ejs)
  edit: function(req, res, next) {

    // Find the user from the id passed in via params
    User.findOne(req.param('id'), function foundUser(err, user) {
      if (err) return next(err);
      if (!user) return next('User doesn\'t exist.');

      res.view({
        user: user,
        _layoutFile: '../layouts/inner_layout.ejs'
      });
    });
  },

  // process the info from edit view
  update: function(req, res, next) {

    if (req.session.User.admin) {
      var userObj = {
        name: req.param('name'),
        title: req.param('title'),
        email: req.param('email'),
        admin: req.param('admin')
      }
    } else {
      var userObj = {
        name: req.param('name'),
        title: req.param('title'),
        email: req.param('email')
      }
    }

    User.update(req.param('id'), userObj, function userUpdated(err) {
      if (err) {
        return res.redirect('/user/edit/' + req.param('id'));
      }

      res.redirect('/user/show/' + req.param('id'));
    });
  },

  // destroy: function(req, res, next) {

  //   User.findOne(req.param('id'), function foundUser(err, user) {
  //     if (err) return next(err);

  //     if (!user) return next('User doesn\'t exist.');

  //     User.destroy(req.param('id'), function userDestroyed(err) {
  //       if (err) return next(err);

  //       // Inform other sockets (e.g. connected sockets that are subscribed) that this user is now logged in
  //       User.publishUpdate(user.id, {
  //         name: user.name,
  //         action: ' has been destroyed.'
  //       });

  //       // Let other sockets know that the user instance was destroyed.
  //       User.publishDestroy(user.id);

  //     });        

  //     res.redirect('/user');

  //   });
  // },


  /**
   * Overrides for the settings in `config/controllers.js`
   * (specific to UserController)
   */
  _config: {}

  
};
