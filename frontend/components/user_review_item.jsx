const React = require("react");
const Link = require('react-router').Link;
const ReactDOM = require('react-dom');


const UserReviewItem = React.createClass({
  getInitialState: function () {
    let review = this.props.review;
    return {review: review};
  },

  componentWillReceiveProps: function (props) {
    this.setState({review: props.review});
  },

  render: function() {

    return (
      <div className="review-item">
        <div className="top-header">
          <h3 className="name-date">{this.state.review.restaurant} / {this.state.review.rating}✩</h3>
        </div>
        <div className="review">
          <h4>{this.state.review.content}</h4>
        </div>
      </div>
    );
  }
});

module.exports = UserReviewItem;
