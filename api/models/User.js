/**
 * User
 *
 * @module      :: Model
 * @description :: A short summary of how this model works and what it represents.
 * @docs		:: http://sailsjs.org/#!documentation/models
 */
 var crypto = require('crypto');
 
 schema: true,

 module.exports = {

 	attributes: {

 		name     : 'string',

 		username : {
 			type: 'string',
 			required: true
 		},

 		email    : {
 			type: 'email',
 			unique: true,
 			required: true
 		},

 		encryptedPassword : {
 			type: 'string',
 		},

 		usertype : 'string',

 		block : 'integer',

 		registerDate : 'datetime',

 		lastvisitDate : 'datetime',

 	},

 	toJSON: function() {
 		var obj = this.toObject();
 		delete obj.password;
 		delete obj.user_password1;
 		delete obj.encryptedPassword;
 		delete obj._csrf;
 		return obj;
 	},

 	beforeCreate: function(values, next) {
 		var password = values.password;
 		var hash = crypto.createHash('md5').update(password).digest('hex');
 		values.encryptedPassword = hash;
 		next();
 	}

 };
