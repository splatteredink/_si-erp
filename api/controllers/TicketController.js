/**
 * TicketController
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
 	
 	
 	index: function(req, res) {
 		var userid = req.session.passport.user;
 		Ticket.findByUser_id(userid).done(function(err, tickets) {
 			if(err) return next(err);
 			res.view({
				mytickets: tickets,
				_layoutFile: '../layouts/inner_layout.ejs'
			});
		});
 	},

 	newticket: function(req, res) {
 		return res.view({
 			_layoutFile: '../layouts/inner_layout.ejs'
 		});
 	},

 	ticketlist: function(req, res) {
		// Get an array of all users in the User collection(e.g. table)
		Ticket.find(function foundTickets(err, tickets) {
			if (err) return next(err);
			// pass the array down to the /views/index.ejs page
			res.view({
				tickets: tickets,
				_layoutFile: '../layouts/inner_layout.ejs'
			});
		});
	},

	// render the edit view (e.g. /views/edit.ejs)
	editticket: function(req, res, next) {
		// Find the user from the id passed in via params
		Ticket.findOne(req.param('id'), function foundUser(err, ticket) {
			if (err) return next(err);
			if (!ticket) return next('Ticket doesn\'t exist.');
			res.view({
				ticket: ticket,
				_layoutFile: '../layouts/inner_layout.ejs'
			});
		});
	},

	showticket: function(req, res, next){
		Ticket.findOne(req.param('id'), function foundUser(err, ticket) {
			if (err) return next(err);
			if (!ticket) return next();
			res.view({
				ticket: ticket,
				_layoutFile: '../layouts/inner_layout.ejs'
			});
		});
	},

	createticket: function(req, res, next) {
		var userid = req.session.passport.user;
		var ticketObj = {
			user_fullname: req.param('ticket_full_name'),
			user_email: req.param('ticket_email_address'),
			ticket_topic: req.param('ticket_type'),
			ticket_subject: req.param('ticket_subject'),
			ticket_message: req.param('ticket_desc'),
			user_id: userid,
			ticket_registerdate: new Date(),
			ticket_status: 'open'
		}

		Ticket.create(ticketObj, function ticketCreated(err, user) {
			if (err) {
				console.log(err);
				req.session.flash = {
					err: err
				}
        		// If error redirect back to sign-up page
        		return res.redirect('/ticket/newticket');
        	}

        });
	},

  /**
   * Overrides for the settings in `config/controllers.js`
   * (specific to TicketController)
   */
   _config: {}

   
};
