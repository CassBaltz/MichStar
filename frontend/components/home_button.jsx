const React = require('react');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;

let buttonClass;

const HomeButton = React.createClass({
  getInitialState: function () {
    return {buttonClass: "home-link clicked", buttonText: ""}
  },

  componentWillReceiveProps: function(newProps) {
    buttonClass = this.updateClass(newProps);
    this.setState({buttonClass: buttonClass});
  },

  updateClass: function (newProps) {
    if (newProps.location === "/") {
      return "home-link clicked"
    } else {
      return "home-link"
    }
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
