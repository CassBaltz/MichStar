const React = require("react");
const Link = require('react-router').Link;


const RestaurantShowItem = React.createClass({
  render: function() {
    let review, review1, reviewer, reviewer1, content, content1, rating, rating1, date, date1, reviewLink;
    let imgUrl = this.props.restaurant.photo

    let divStyle = {
    backgroundImage: 'url(' + imgUrl + ')',
    }

    let michRating = "✩".repeat(this.props.restaurant.rating);

    if (Object.keys(this.props.restaurant).length > 0) {
      review = this.props.restaurant.reviews[0];
      reviewer = review['name'];
      content = review['content'].slice(0, 200);
      rating = "✩".repeat(review['rating']);
      date = review['date'];
      reviewLink = <span className="link-to-reviews" onClick={this.props.reviews}>[ more ]</span>

      review1 = this.props.restaurant.reviews[1];
      reviewer1 = review1['name'];
      content1 = review1['content'].slice(0, 200);
      rating1 = "✩".repeat(review1['rating']);
      date1 = review1['date'];
    } else {
      review = "";
      reviewer = "";
      content = "";
      rating = "";
      date = "";

      reviewLink = "";

      review1 = "";
      reviewer1 = "";
      content1 = "";
      rating1 = "";
      date1 = "";
    }


    return (
      <div>
        <div className="restaurant-show" style={divStyle}>
          <div className="restaurant-text">
            <h3>Cuisine: {this.props.restaurant.cuisine}</h3>
            <h3>Chef: {this.props.restaurant.head_chef}</h3>
            <h3>Phone: {this.props.restaurant.phone}</h3>
            <h3 id="rest-website"><a href={this.props.restaurant.website} target="blank"> Website <i className="material-icons">open_in_new</i></a></h3>
            <h3>Address: {this.props.restaurant.address}</h3>
          </div>
        </div>
        <div className="rest-review-box">
          <div className="michelin-review">
            <h3><span className="rev-header">Michelin Review | {michRating} </span>{this.props.restaurant.mich_review}</h3>
          </div>
          <div className="user-review">
            <h3><span className="user-rev-header">{reviewer} | {rating} | {date} </span>{content} {reviewLink}</h3>
            <h3><span className="user-rev-header">{reviewer1} | {rating1} | {date1} </span>{content1} {reviewLink}</h3>
          </div>
        </div>
      </div>
    );
  }
});

module.exports = RestaurantShowItem;
