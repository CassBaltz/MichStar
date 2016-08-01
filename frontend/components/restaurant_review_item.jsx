const React = require("react");
const Link = require('react-router').Link;
const ReactDOM = require('react-dom');
const Modal = require('react-modal');


const RestaurantReviewItem = React.createClass({

  render: function() {

    let rating = "✩".repeat(this.props.review.rating);
    return (
      <div className="review-item">
        <div className="top-header">
          <h3 className="name-date">
            <i className="material-icons md-48">perm_identity</i> {this.props.review.name}
          </h3>

          <h3 id="rest-rating" className="name-date">
             {rating}
          </h3>

          <h3 className="name-date">
            <i className="material-icons md-48">date_range</i> {this.props.review.date}
          </h3>
        </div>
        <div className="review">
          <h4>{this.props.review.content}</h4>
        </div>
      </div>
    );
  }
});


module.exports = RestaurantReviewItem;
