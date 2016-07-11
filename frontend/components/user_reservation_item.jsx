const React = require("react");
const Link = require('react-router').Link;
const UserActions = require('../actions/user_actions');
const hashHistory = require('react-router').hashHistory;

const DAYS = ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"];

const UserReservationItem = React.createClass({

  render: function() {
    let resItem = this.props.resItem;
    let user = this.props.user;
    return (
      <div className="reservation-item">
        <h2><Link to={`/restaurants/${resItem.rest_id}`}>{resItem.rest_name}</Link></h2>
        <h3>Party Size: {resItem.res_table_size}</h3>
        <h3>{resItem.time}</h3>
        <h3>{resItem.date}</h3>
        <h3>{resItem.day}</h3>
      </div>
    );
  }
});

// rest_name: restaurant.name,
// rest_id: restaurant.id,
// rest_website: restaurant.website,
// rest_address: restaurant.address,
// rest_phone: restaurant.phone,
// res_time: reservation_option.reservation_time.parse_time,
// res_table_size: reservation_option.table_size
// }
// reservation_ary.push(reservationItem)

module.exports = UserReservationItem;
