const React = require("react");
const Link = require('react-router').Link;
const UserActions = require('../actions/user_actions');
const hashHistory = require('react-router').hashHistory;

const DAYS = ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"];

const ReservationItem = React.createClass({
  getInitialState: function () {
    let resItem = this.props.resItem;
    return {resItem: resItem};
  },

  componentWillReceiveProps: function (props) {
    this.setState({resItem: props.resItem});
  },

  createReservation: function (e) {
    e.preventDefault();
    let userId = SessionStore.currentUser().id;
    let resOptId = this.state.resItem.id;
    UserActions.createReservation({user_id: userId, reservation_option_id: resOptId});
    hashHistory.push("/profile");
  },

  render: function() {

    const objDate = new Date(this.state.resItem.reservation_time)
    const day = DAYS[objDate.getDay()];
    let hour = (parseInt(objDate.getHours()) - 5).toString();
    // debugger
    // if (hour > 12) {
    //   hour = hour - 12;


    let minutes = objDate.getMinutes();
    if (minutes.toString().length === 1) {
      minutes = minutes.toString() + "0"
    }

    const month = (parseInt(objDate.getMonth()) + 1).toString()
    const year = objDate.getFullYear();
    const days = objDate.getDate();

    const dateObj = month + "." + days + "." + year;
    const time = hour + ":" + minutes;

    return (
      <div className="reservation-item">
        <h3>{dateObj}</h3>
        <h4>Party Size: {this.state.resItem.table_size}</h4>
        <h4>{time}</h4>
        <h4>{day}</h4>
        <h2 className="button" onClick={this.createReservation}>Reserve</h2>
      </div>
    );
  }
});


module.exports = ReservationItem;
