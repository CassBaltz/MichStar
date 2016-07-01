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
    RestaurantStore.addListener(this.updateChange);
    RestaurantActions.fetchRestaurants();
  },

  updateChange: function() {
    this.setState({restaurants: RestaurantStore.allRestaurants()});
  },

  render: function () {

    return (
      <div>
        <p>hello</p>
        <RestaurantMap restaurants={this.state.restaurants}/>
      </div>

    );
  }
});

module.exports = RestaurantIndex;
