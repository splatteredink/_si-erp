
/**
 * Module dependencies.
 */

 var express = require('express');
 var routes = require('./routes');
 var user = require('./routes/user');
 var http = require('http');
 var path = require('path');
 var ensureLoggedIn = require('connect-ensure-login').ensureLoggedIn;
 var passport = require('passport');
 var LocalStrategy = require('passport-local').Strategy;
 var mysql = require('mysql');
 var crypto = require('crypto');
 var flash = require('connect-flash');

 var app = express();

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(express.bodyParser());
app.use(express.cookieParser('keyboard cat'));
app.use(express.session({ secret: 'super_secret_key', maxAge: 60000 }));
app.use(passport.initialize());
app.use(passport.session());
app.use(flash());
app.use(app.router);
app.use(require('stylus').middleware(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'public')));
app.use(function(req, res, next){
	// respond with html page
  if (req.accepts('html')) {
    res.render('user/404-page', { url: req.url });
    return;
  }

  // respond with json
  if (req.accepts('json')) {
    res.send({ error: 'Not found' });
    return;
  }

  // default to plain-text. send()
  res.type('txt').send('Not found');
});

// development only
if ('development' == app.get('env')) {
	app.use(express.errorHandler());
}

//connect to mysql database
var connection = mysql.createConnection({
	host : 'localhost',
	user : 'root',
	password : '',
	database : 'sierp'
});
connection.connect();

passport.use(new LocalStrategy({
	usernameField: 'login_email_address',
	passwordField: 'login_password'
},
function(username, password, done) {
	return check_auth_user(username,password,done);
}
));



/*All the get requests*/
app.get('/', routes.index);
app.get('/users', user.list);

app.get('/settings',
	ensureLoggedIn('/user/login'),
	function(req, res) {
		res.render('users', { user: req.user });
	});

app.get('/user/login', function(req, res){
	//var error = req.flash('info', ['Welcome', ' Please Enjoy']);
	//console.log(req.flash);
	res.render('user/login', {
		title: 'Login',
		message: req.flash('error')
	});
});

app.get('/user/signup', function(req, res){
	res.render('user/signup', {
		title: 'Sign Up'
	});
});

app.get('/user/myaccount', ensureLoggedIn('/user/login'), function(req, res){
	res.render('user/myaccount', {
		title: 'My Account'
	});
});

app.get('/tickets/deleteticket', ensureLoggedIn('/user/login'),function(req, res){
	deleteTicket(req.user.id, req.query.ticket_id, function(response){
		if(response == 'success'){
			res.render('tickets/listTickets', {
			
			});
		}else{
			res.render('tickets/listTickets', {
			
			});
		}
	});
});

app.get('/tickets/listTickets', ensureLoggedIn('/user/login'), function(req, res){
	getTicketlist(req.user.id, function(ticket_list){
		console.log(ticket_list);
		res.render('tickets/listTickets', {
			title: 'Ticket List',
			user: req.user,
			ticket_list: ticket_list
		});
	})
});

app.get('/tickets/newTicket', ensureLoggedIn('/user/login'), function(req, res){
	res.render('tickets/newTicket', {
		title: 'New Ticket',
		user: req.user
	});
});

app.get('/logout', function(req, res){
  req.logout();
  res.redirect('/user/login');
});



/*All the post requests*/
app.post('/user/login',
	passport.authenticate('local', { successReturnToOrRedirect: '/tickets/listTickets',
		failureRedirect: '/user/login',
		failureFlash: true })
	);



app.post('/user/signup', function(req, res){
	var full_name = req.body.signup_full_name;
	var email_address = req.body.signup_email_address;
	var password = req.body.signup_password;
	
	saltAndHash(password, function(hash){
		password = hash;
		connection.query('INSERT INTO sierp_users (name, username, email, password, registerDate) VALUES (?, ?, ? , ?, current_timestamp());' , [full_name, email_address, email_address, password], function(err, docs) {
			if (err) res.json(err);
			//req.flash('success', 'Successfully Signed Up!')
			res.redirect('/user/login');
		});
	});
});


app.post('/tickets/newTicket', function(req, res){
	var ticket_full_name = req.body.ticket_full_name;
	var ticket_email_address = req.body.ticket_email_address;
	var ticket_type = req.body.ticket_type;
	var ticket_subject = req.body.ticket_subject;
	var ticket_message = req.body.ticket_message;
	var user_id = req.user.id;
	connection.query('INSERT INTO sierp_tickets (user_id, user_fullname, user_email, ticket_topic, ticket_subject, ticket_message, ticket_registerdate) VALUES (?, ?, ?, ? , ?, ?,current_timestamp());' , [user_id, ticket_full_name, ticket_email_address, ticket_type, ticket_subject, ticket_message], function(err, docs) {
		if (err) res.json(err);
		//req.flash('success', 'Successfully Signed Up!')
		res.redirect('/tickets/newTicket');
	});
});


app.post('/user/myaccount', function(req, res){
	console.log(req.files);
});


http.createServer(app).listen(app.get('port'), function(){
	console.log('Express server listening on port ' + app.get('port'));
});



/* private encryption & validation methods */

var saltAndHash = function(pass, callback)
{
	callback(md5(pass));
}



var md5 = function(str) {
	return crypto.createHash('md5').update(str).digest('hex');
}

var validatePassword = function(plainPass, hashedPass, callback)
{
	var salt = hashedPass.substr(0, 10);
	var validHash = salt + md5(plainPass + salt);
	callback(null, hashedPass === validHash);
}

function check_auth_user(username,password,done,public_id){
	saltAndHash(password, function(hash){
		var sql="SELECT * FROM sierp_users WHERE (email LIKE "+connection.escape(username)+" OR username LIKE "+connection.escape(username)+") AND password = '"+hash+"' limit 1";
		connection.query(sql, function (err,results) {

			if (err) throw err;

			if(results.length > 0){

				var res = results[0]; 
	                //serialize the query result save whole data as session in req.user[] array  
	                passport.serializeUser(function(res, done) {
	                	done(null,res);
	                });

	                passport.deserializeUser(function(id, done) {
	                	done(null,res);

	                });
	                return done(null, res);
	            }else{
	            	return done(null, false, { message: 'Invalid login!' }); 

	            }

        });
	});

}

var getTicketlist = function(user_id, callback){
	var sql = "SELECT * FROM sierp_tickets WHERE user_id='"+user_id+"'";
	connection.query(sql, function (err,results) {
		if (err) throw err;

		if(results.length > 0){
			return callback(results);
		}else{
			return done(null, false, { message: 'No!' }); 
		}
	});
}

var deleteTicket = function(user_id, ticket_id, callback){
	var sql = "DELETE FROM sierp_tickets WHERE user_id='"+user_id+"' AND ticket_id='"+ticket_id+"'";
	connection.query(sql, function (err,results) {
		if (err) throw err;

		if(results.affectedRows){
			return callback("success");
		}else{
			return callback("fail");
		}
	});
}
