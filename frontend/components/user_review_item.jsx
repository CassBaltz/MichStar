const React = require("react");
const Link = require('react-router').Link;
const ReactDOM = require('react-dom');


const UserReviewItem = React.createClass({

  render: function() {

    return (
      <div className="review-item">
        <div className="top-header">
          <h3 className="name-date">{this.props.review.rest_name} / {this.props.review.rating}✩ / {this.props.review.date}</h3>
        </div>
        <div className="review">
          <h4>{this.props.review.content}</h4>
        </div>
      </div>
    );
  }
});

module.exports = UserReviewItem;
