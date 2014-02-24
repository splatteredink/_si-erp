var passport    = require('passport'),
LocalStrategy = require('passport-local').Strategy,
crypto      = require('crypto');

passport.serializeUser(function(user, done) {
  done(null, user[0].id);
});

passport.deserializeUser(function(id, done) {
  User.findById(id, function (err, user) {
    done(err, user);
  });
});

passport.use(new LocalStrategy(
  function(username, password, done) {

    User.findByUsername(username).done(function(err, user) {
      if (err) { return done(null, err); }
      if (!user || user.length < 1) { return done(null, false, { message: 'Incorrect User'}); }
      var hash = crypto.createHash('md5').update(password).digest('hex');
      if(hash == user[0].encryptedPassword){
        return done(null, user);
      }else{
        return done(null, false, { message: 'Invalid Password'});
      }
    });
  })
);



module.exports = {
	express: {
		customMiddleware: function(app){
			console.log('express midleware for passport');
			app.use(passport.initialize());
			app.use(passport.session());
		}
	}
};