const React = require('react');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;

let buttonClass;

const HomeButton = React.createClass({
  getInitialState: function () {
    buttonClass = this.updateClass();
    return {buttonClass: buttonClass}
  },

  componentWillReceiveProps: function() {
    buttonClass = this.updateClass();
    this.setState({buttonClass: buttonClass});
    debugger
  },

  updateClass: function () {
    if (this.props.location === "/") {
      return "home-link clicked"
    } else {
      return "home-link"
    }
    debugger
  },

  updateLocation: function (e) {
    e.preventDefault;
    hashHistory.push("/");
  },

  render: function() {
    return (
      <h3 onClick={this.updateLocation} className={this.state.buttonClass}>Restaurants</h3>
    );
  }
});

module.exports = HomeButton;
