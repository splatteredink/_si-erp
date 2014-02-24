/**
 * Ticket
 *
 * @module      :: Model
 * @description :: A short summary of how this model works and what it represents.
 * @docs		:: http://sailsjs.org/#!documentation/models
 */

module.exports = {

  attributes: {
  	
  	user_id: {
  		type: 'string',
  		
  	},

  	user_fullname: {
  		type: 'string'
  	},

  	user_email: {
  		type:'string'
  	},

  	ticket_topic: {
  		type:'string'
  	},

	ticket_subject: {
		type: 'string'
	},

	ticket_message: {
		type:'text'
	},

	ticket_registerdate: {
		type: 'datetime'
	},

	ticket_priority: {
		type: 'string'
	},

	ticket_status: {
		type: 'string'
	},

	ticket_internal_note: {
		type: 'text'
	},

	ticket_assigned: {
		type: 'string'
	},
    
  }

};
