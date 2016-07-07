const React = require('react');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;

let linkText, linkPath, personalClass;
const PersonalButton = React.createClass({
  getInitialState: function() {
    return ({text: "Signup", linkPath: "/login", personalClass: "personal-link"});
  },

  componentWillReceiveProps: function(navProps) {
    if (navProps.status) {
      linkText = SessionStore.currentUser().name + " +";
      linkPath = `/profile`;
      personalClass = this.updateClass(navProps);
    } else {
      linkText = "Sign In";
      linkPath = "/login";
      personalClass = this.updateClass(navProps);
    }

    this.setState({text: linkText, linkPath: linkPath, personalClass: personalClass});
  },

  updateClass: function (navProps) {
    if (navProps.location === "/login" || navProps.location === "/signup" || navProps.location === "/profile") {
      return "personal-link clicked"
    } else {
      return "personal-link"
    }
  },

  update: function(e){
    e.preventDefault();
    hashHistory.push(this.state.linkPath);

  },

  render: function() {
    return (
    <h3 onClick={this.update} className={this.state.personalClass}>{this.state.text}</h3>
    );
  }
});

module.exports = PersonalButton;
