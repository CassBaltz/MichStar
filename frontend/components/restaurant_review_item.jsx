const React = require("react");
const Link = require('react-router').Link;


const RestaurantReviewItem = React.createClass({
  getInitialState: function () {
    let review = this.props.review;
    return {review: review};
  },

  componentWillReceiveProps: function (props) {
    this.setState({review: props.review});
  },

  render: function() {
    return (
      <li>
        <h2>{this.state.review.name}</h2>
        <h4>{this.state.review.rating}</h4>
        <h4>{this.state.review.content}</h4>
      </li>
    );
  }
});


module.exports = RestaurantReviewItem;
