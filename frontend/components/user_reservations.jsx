const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const ReservationItem = require('./reservation_item');
const ReservationSearch = require('./reservation_search');

const UserReservations = React.createClass({
  getInitialState: function () {
    return {user: {}};
  },

  componentWillReceiveProps: function (props) {
    this.setState({user: props.user})
  },

  render: function() {
    let resItems;
    if (Object.keys(this.state.user).length === 0) {
      resItems = <div>No Reservations</div>;
    } else {
      resItems = this.state.restaurant.reservations.map((resItem, idx) => {
        return <ReservationItem key={idx} resItem={resItem} />
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
