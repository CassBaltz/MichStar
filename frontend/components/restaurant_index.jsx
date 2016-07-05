const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const RestaurantMap = require('./map');

const RestaurantIndex = React.createClass({
  getInitialState: function () {
    return {restaurants: RestaurantStore.allRestaurants()};
  },

  componentDidMount: function() {
    this.listener = RestaurantStore.addListener(this.updateChange);
    RestaurantActions.fetchRestaurants();
  },

  updateChange: function() {
    this.setState({restaurants: RestaurantStore.allRestaurants()});
  },

  componentWillUnmount: function() {
    this.listener.remove();
  },

  render: function () {

    return (
      <div>
        <div class="top-spacer" />
        <h1 className="index-header">Reservations At San Francisco's Top Restaurants</h1>
        <RestaurantMap />
      </div>
    );
  }
});

module.exports = RestaurantIndex;
