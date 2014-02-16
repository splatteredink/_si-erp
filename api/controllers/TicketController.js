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
    return res.view({
      _layoutFile: '../layouts/inner_layout.ejs'
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



  createticket: function(req, res, next) {

    var ticketObj = {
      user_fullname: req.param('ticket_full_name'),
      user_email: req.param('ticket_email_address'),
      ticket_topic: req.param('ticket_type'),
      ticket_subject: req.param('ticket_subject'),
      ticket_message: req.param('ticket_desc'),
      //user_id: user.id,
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
