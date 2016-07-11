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

  toggleButton: function(e) {
    e.preventDefault();
    if (this.state.reviewVisibility === true) {
      this.setState({reviewVisibility: false, buttonText: "My Reviews", headerText: "Reservations"});
    } else {
      this.setState({reviewVisibility: true, buttonText: "My Reservations", headerText: "Reviews"});
    }
  },

  logout: function() {
    SessionActions.logOut();
    hashHistory.push('/');
  },

  render: function() {
    return (
      <div className="restaurant-box">
        <div className="user-profile-header">
            <h2>{this.state.user.name}</h2>
            <h2 className="button" onClick={this.toggleButton}>{this.state.buttonText}</h2>
            <h2  className="button" onClick={this.logout}>Logout</h2>
        </div>
        <div>
          <h2 className="header-text">{this.state.headerText}</h2>
        </div>
        {this.state.reviewVisibility ? <UserReview user={this.state.user} /> : <UserReservation user={this.state.user} />}
      </div>
    );
  }
});

module.exports = UserProfile;
