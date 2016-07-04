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
    return (
      <div className="restaurant-show">
        <h1>{this.state.restaurant.name}</h1>
        <Link to="/">BACK TO RESTAURANTS</Link>
      </div>
    );
  }
})

module.exports = RestaurantShow;
