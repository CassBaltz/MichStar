const React = require("react");
const Link = require('react-router').Link;
const UserStore = require("../stores/user_store");
const SessionStore = require("../stores/session_store");
const SessionActions = require("../actions/session_actions");
const UserActions = require('../actions/user_actions');
const ReviewItem = require('./restaurant_review_item');
const hashHistory = require('react-router').hashHistory;
const UserReview = require('./user_reviews');
const UserReservation = require('./user_reservations');

const UserProfile = React.createClass({
  getInitialState: function () {
    let user = UserStore.getUser();
    return {user: user, reviewVisibility: false, buttonText: "My Reviews", headerText: "Reservations"};
  },

  componentDidMount: function() {
    UserActions.getUser();
    this.listener = UserStore.addListener(this.update);
  },

  componentWillUnmount: function () {
    this.listener.remove();
  },

  update: function () {
    this.setState({user: UserStore.getUser()})
  },

  logout: function() {
    SessionActions.logOut();
    hashHistory.push('/');
  },

  render: function() {
    return (
      <div className="user-box">
        <div className="user-reservations-box">
          <h3>My Reservations</h3>
          <UserReservation user={this.state.user} />
        </div>
        <div className="user-reviews-box">
          <h3>My Reviews</h3>
          <UserReview user={this.state.user} />
        </div>

      </div>
    );
  }
});

module.exports = UserProfile;
