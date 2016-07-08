const React = require("react");
const Link = require('react-router').Link;
const UserActions = require('../actions/user_actions');
const hashHistory = require('react-router').hashHistory;

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
    return (
      <li>
        <h2>{this.state.resItem.reservation_time}</h2>
        <h4>{this.state.resItem.table_size}</h4>
        <button onClick={this.createReservation}>Reserve</button>
      </li>
    );
  }
});


module.exports = ReservationItem;
