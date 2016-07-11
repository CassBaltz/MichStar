const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const UserReservationItem = require('./user_reservation_item');

const UserReservations = React.createClass({

  render: function() {
    let resItems;
    if (Object.keys(this.props.user).length === 0) {
      resItems = <div>No Reservations</div>;
    } else {
      resItems = this.props.user.reservations.map((resItem, idx) => {
        return <UserReservationItem key={idx} resItem={resItem} />
      })
    }

    return (
      <div className="reservation-items-container">
        {resItems}
      </div>
    );
  }
});


module.exports = UserReservations;
