const React = require("react");
const Link = require('react-router').Link;

const ReservationItem = React.createClass({
  getInitialState: function () {
    let resItem = this.props.resItem;
    return {resItem: resItem};
  },

  componentWillReceiveProps: function (resItem) {
    this.setState({resItem: resItem});
  },

  createReservation: function (e) {

  },

  render: function() {
    return (
      <li>
        <h2>{this.state.resItem.reservation_time}</h2>
        <h4>{this.state.resItem.table_size}</h4>
        <button onClick={this.createReservation}>Reserve!</button>
      </li>
    );
  }
});


module.exports = ReservationItem;
