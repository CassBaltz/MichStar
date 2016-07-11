const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const RestaurantMap = require('./map');

const RestaurantIndex = React.createClass({
  getInitialState: function () {
    return {restaurants: RestaurantStore.allRestaurants(), clicked: SessionStore.getClicked()};
  },

  componentDidMount: function() {
    this.listener = RestaurantStore.addListener(this.updateChange);
    RestaurantActions.fetchRestaurants();
  },

  updateChange: function() {
    this.setState({restaurants: RestaurantStore.allRestaurants()});
  },

  clicked: function(e) {
    e.preventDefault();
    SessionStore.updateClicked();
    this.setState({clicked: true});
  },

  componentWillUnmount: function() {
    this.listener.remove();
  },

  render: function () {

  let bannerClass = this.state.clicked ? "hidden" : "splash";

  debugger

    return (
    <div className="index-full-content">
      <div className="map-container">
        <div className={bannerClass}>
          <h3 onClick={this.clicked}>Close</h3>
          <h1>✩MichStar✩</h1>
          <h2>Reservations At San Francisco's Top Restaurants</h2>
          <h4>Visit restaurants on the map by clicking an icon and then the clicking the link to the restaurant page at the top of the map. Make reservations at the restaurant by visiting the reservation page. You can also read and write reviews by clicking the restaurant reviews page at each restaurant.</h4>
        </div>
        <RestaurantMap />
      </div>
    </div>
    );
  }
});

module.exports = RestaurantIndex;
