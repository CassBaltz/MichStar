const React = require("react");
const Link = require('react-router').Link;
const RestaurantActions = require('../actions/restaurant_actions');

const ReservationSearch = React.createClass({
  getInitialState: function () {
    return {date: null, seats: null};
  },

  updateDate: function (e) {
    e.preventDefault();
    this.setState({date: e.target.value});
    RestaurantActions.getRestaurant(this.props.restaurant.id, {date: e.target.value, seats: this.state.seats});
  },

  updateTableSize: function (e) {
    e.preventDefault();
    this.setState({seats: e.target.value});
    RestaurantActions.getRestaurant(this.props.restaurant.id, {date: this.state.date, seats: e.target.value});
  },

  render: function() {
    return (
     <div>
       <form className="reservation-form">
         <input type="date" onChange={this.updateDate} />
         <select onChange={this.updateTableSize} name="table_size">
           <option selected disabled>Number of Diners</option>
           <option value="2">2</option>
           <option value="4">4</option>
           <option value="6">6</option>
         </select>
       </form>
     </div>
    );
  }
});


module.exports = ReservationSearch;
