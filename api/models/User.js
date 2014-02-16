/**
 * User
 *
 * @module      :: Model
 * @description :: A short summary of how this model works and what it represents.
 * @docs		:: http://sailsjs.org/#!documentation/models
 */

module.exports = {

  attributes: {
  	
  	name     : 'string',
  	
  	username : {
  		type: 'string',
  		required: true
  	},

  	email    : {
		  type: 'email',
	    required: true
  	},

    password : {
    	type: 'string',
  		required: true	
    },
    
    usertype : 'string',

    block : 'integer',

    registerDate : 'datetime',

    lastvisitDate : 'datetime',
  },

  // beforeCreate: function(values, next) {
  //   var simplecrypt = require("simplecrypt");
  //   var sc = simplecrypt();
  //   var encryptedpassword = sc.encrypt(values.password);
  //   values.password = encryptedpassword;
  //   next();
  // }
};
