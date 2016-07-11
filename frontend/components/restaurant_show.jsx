const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');

const RestaurantShow = React.createClass({
  getInitialState: function () {
    return {restaurant: {}};
  },

  componentDidMount: function () {
    this.listener = RestaurantStore.addListener(this.updateRestaurant);
    RestaurantActions.getRestaurant(parseInt(this.props.params.restaurantId));
  },

  updateRestaurant: function () {
    let restaurant = RestaurantStore.find( parseInt(this.props.params.restaurantId))
    this.setState({restaurant: restaurant});
  },

  componentWillUnmount: function() {
    this.listener.remove();
  },

  render: function() {
    let reservationPath = `restaurants/${this.state.restaurant.id}/reservations`
    let reviewsPath = `restaurants/${this.state.restaurant.id}/reviews`

    var imgUrl = this.state.restaurant.photo

    var divStyle = {
    backgroundImage: 'url(' + imgUrl + ')',
    }

    return (
      <div className="restaurant-box">
        <div className="button-links">
          <div className="rs"><Link to="/">BACK TO RESTAURANTS</Link></div>
          <div className="rs"><Link to={reservationPath}>RESERVATIONS</Link></div>
          <div className="rs"><Link to={reviewsPath}>REVIEWS</Link></div>
        </div>
        <div className="header-div">
          <h1 className="restaurant-header">{this.state.restaurant.name}</h1>
          <h1 className="restaurant-header">|</h1>
          <h1 className="restaurant-header">{this.state.restaurant.stars} ✩</h1>
        </div>
        <div className="restaurant-show" style={divStyle}>
          <div className="restaurant-text">
            <h3>Cuisine: {this.state.restaurant.cuisine}</h3>
            <h3>Chef: {this.state.restaurant.head_chef}</h3>
            <h3>Phone: {this.state.restaurant.phone}</h3>
            <h3><a href={this.state.restaurant.website} target="blank">Visit Website</a></h3>
            <h3>Address: {this.state.restaurant.address}</h3>
          </div>
        </div>
        <div className="michelin-review">
          <h3>{this.state.restaurant.mich_review}</h3>
        </div>
      </div>
    );
  }
})

module.exports = RestaurantShow;
