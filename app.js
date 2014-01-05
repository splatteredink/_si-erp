
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var user = require('./routes/user');
var http = require('http');
var path = require('path');
var mysql = require('mysql');

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
app.use(app.router);
app.use(require('stylus').middleware(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'public')));

//connect to mysql database
var connection = mysql.createConnection({
host : 'localhost',
user : 'root',
password : '',
database : 'sierp'
});
connection.connect();


// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.get('/', routes.index);
app.get('/users', user.list);
app.get('/signup', function(req, res){
res.render('signup', {
    title: 'Sign Up'
  });
});

app.post('/', function(req, res){
	var email_address = req.body.email_address;
	var password = req.body.password;
	connection.query('SELECT id FROM sierp_users WHERE email = ? AND password= ? ;' , [email_address, password], function(err, row) {
	if(err){
		console.log(err);
	}else if(row.length > 0){
		res.redirect('/users');
	}else{
		res.redirect('/');
	}
	});
});

app.post('/signup', function(req, res){
	var full_name = req.body.full_name;
	var email_address = req.body.email_address;
	var password = req.body.password;
	connection.query('INSERT INTO sierp_users (name, username, email, password, registerDate) VALUES (?, ?, ? , ?, current_timestamp());' , [full_name, email_address, email_address, password], function(err, docs) {
	if (err) res.json(err);
		res.redirect('users');
	});
});

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
