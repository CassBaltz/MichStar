const React = require("react");
const Link = require('react-router').Link;
const UserStore = require("../stores/user_store");
const SessionStore = require("../stores/session_store");
const UserActions = require('../actions/user_actions');
const ReviewItem = require('./restaurant_review_item');

const ReviewForm = React.createClass({
  getInitialState: function () {
    return {content: "", buttonDisable: true, rating: 1};
  },

  render: function() {
    return(

    )
  }
})
