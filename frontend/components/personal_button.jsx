const React = require('react');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;

let linkText, linkPath;
const PersonalButton = React.createClass({
  getInitialState: function() {
    if (this.props.status) {
      linkText = SessionStore.currentUser().name;
      linkPath = `/users/${SessionStore.currentUser().id}`;
    } else {
      linkText = "Sign In";
      linkPath = "/login"
    }
    return ({text: linkText, path: linkPath});
  },

  update: function(e){
    e.preventDefault();
    hashHistory.push(linkPath);
  },

  render: function() {
    return (
    <h3 onClick={this.update} className="personal-link">{this.state.text}</h3>
    );
  }
});

module.exports = PersonalButton;
