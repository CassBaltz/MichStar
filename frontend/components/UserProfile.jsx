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
    return {user: user, reviewVisibility: false};
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

  updateReviews: function(e) {
    e.preventDefault();
    this.setState({reviewVisibility: true});
  },

  updateReservations: function(e) {
    e.preventDefault();
    this.setState({reviewVisibility: false});
  },

  logout: function() {
    SessionActions.logOut();
    hashHistory.push('/');
  },

  render: function() {
    let reviews;
    if (Object.keys(this.state.user).length === 0) {
      reviews = <div>No Reviews</div>;
    } else {
      reviews = this.state.user.reviews.map((review, idx) => {
       return <ReviewItem key={idx} review={review} />
     })
    }

    return (
      <div className="restaurant-box">
        <div className="restaurant-header">
          <div>
            <h2>
              {this.state.user.name}
            </h2>
          </div>
          <div className="form-header" onClick={this.logout}>
            <h4>
              LOGOUT
            </h4>
          </div>
        </div>
        <div onClick={this.updateReservations}>
          <h2>
            Reservations
          </h2>
        </div>
        <div onClick={this.updateReviews}>
          <h2>
            Reviews
          </h2>
        </div>
        {this.state.reviewVisibility ? <UserReview user={this.state.user} /> : <UserReservation user={this.state.user} />}
      </div>
    );
  }
});

module.exports = UserProfile;
