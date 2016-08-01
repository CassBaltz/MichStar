const React = require("react");
const Link = require('react-router').Link;
const ReactDOM = require('react-dom');


const UserReviewItem = React.createClass({

  render: function() {
    let star = "✩".repeat(this.props.review.rating);
    return (
      <div className="user-review-item-box">
        <div className="user-top-header">
          <h3 className="name-date">{this.props.review.rest_name}</h3>
          <h3 className="name-date">{star}</h3>
          <h3 className="name-date">{this.props.review.date}</h3>
        </div>
        <div className="user-review-item">
          <h4>{this.props.review.content}</h4>
        </div>
      </div>
    );
  }
});

module.exports = UserReviewItem;
