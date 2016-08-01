const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const ReservationItem = require('./reservation_item');
const ReservationSearch = require('./reservation_search');

const RestaurantReservations = React.createClass({

  render: function() {
    let resItems = this.props.restaurant.reservations.slice(0, 8).map((resItem, idx) => {
        return <ReservationItem key={idx} resItem={resItem} />
      })
    return (
      <div className="reservations-box">
        <div className="restaurant-header">
          <ReservationSearch restaurant={this.props.restaurant} />
        </div>
        <div className="reservation-items-container">
          {resItems}
        </div>
      </div>
    );
  }
});


module.exports = RestaurantReservations;
