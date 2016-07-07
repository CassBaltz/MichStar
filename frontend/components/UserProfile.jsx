const React = require("react");
const Link = require('react-router').Link;
const UserStore = require("../stores/user_store");
const SessionStore = require("../stores/session_store");
const SessionActions = require("../actions/session_actions");
const UserActions = require('../actions/user_actions');
const ReviewItem = require('./restaurant_review_item');

const UserProfile = React.createClass({
  getInitialState: function () {
    let reviews = UserStore.findAllReviews();
    return {reviews: "none", user: SessionStore.currentUser()};
  },

  componentDidMount: function() {
    UserActions.getReviews();
    this.listener = UserStore.addListener(this.update);
  },

  componentWillUnmount: function () {
    this.listener.remove();
  },

  update: function () {
    this.setState({reviews: UserStore.findAllReviews()})
  },

  logout: function() {
    SessionActions.logOut();
    hashHistory.push('/');
  },

  render: function() {
    let reviews;

    if (this.state.reviews === "none") {
      reviews = <div>No Reviews</div>;
    } else {
      reviews = this.state.reviews.map((review, idx) => {
       return <ReviewItem key={idx} review={review} />
     })
    }

    return (
      <div className="restaurant-box">
        <div className="form-header" onClick={this.logout}><h4>LOGOUT</h4></div>
        <h3>Reviews</h3>
        <ul>
          {reviews}
        </ul>
      </div>
    );
  }
});

module.exports = UserProfile;
