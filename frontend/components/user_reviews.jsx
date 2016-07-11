const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const UserReviewItem = require('./user_review_item');
const ReviewForm = require('./review_form');
const ReactDOM = require('react-dom');

const UserReviews = React.createClass({

  render: function() {
    let reviews;
    if (Object.keys(this.props.user).length === 0) {
      reviews = <div>No Reviews</div>
    } else {
      reviews = this.props.user.reviews.map((review, idx) => {
        return <UserReviewItem key={idx} review={review} />
      });
    }

    return (
      <div>
        {reviews}
      </div>
    );
  }
});

module.exports = UserReviews;
