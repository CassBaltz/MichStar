const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const ReviewItem = require('./restaurant_review_item');
const ReviewForm = require('./review_form');
const ReactDOM = require('react-dom');

const UserReviews = React.createClass({
  getInitialState: function () {
    return {user: {}};
  },

  componentWillReceiveProps: function (props) {
    this.setState({user: props.user})
  },

  render: function() {
    let reviews;
    if (Object.keys(this.state.user).length === 0) {
      reviews = <div>No Reviews</div>
    } else {
      reviews = this.state.reviews.map((review, idx) => {
        return <UserReviewItem key={idx} review={review} />
      });
    }

    return (
      <div className="restaurant-box" >
        {reviews}
      </div>
    );
  }
});

module.exports = UserReviews;
