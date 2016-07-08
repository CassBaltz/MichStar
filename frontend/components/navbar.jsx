const React = require('react');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const SessionActions = require('../actions/session_actions');
const HomeButton = require('./home_button');
const PersonalButton = require('./personal_button');

let status, str, url, path;

const NavBar = React.createClass({
  getInitialState: function () {
    path = window.location.hash;
    url = path.split("").slice(1).join("");
    str = "";
    for (let i = 0; i < url.length; i++) {
      if (url[i] === "?") {
        break;
      } else {
        str += url[i];
      }
    }
    return {status: SessionStore.isUserLoggedIn(), location: str};
  },

  componentDidMount: function() {
    this.listener = SessionStore.addListener(this.userChange);
    window.addEventListener('hashchange', this.hashChange, false);
  },

  componentWillUnmount: function() {
    this.listener.remove();
  },

  userChange: function() {
    status = SessionStore.isUserLoggedIn();
    this.setState({status: status})
  },

  hashChange: function() {
    path = window.location.hash;
    url = path.split("").slice(1).join("");
    str = "";
    for (let i = 0; i < url.length; i++) {
      if (url[i] === "?") {
        break;
      } else {
        str += url[i];
      }
    }
    this.setState({location: str});
  },

  render: function () {
    return (
      <div className="container">
        <HomeButton status={this.state.status} location={this.state.location} />
        <h2 className="logo">MichStar</h2>
        <PersonalButton status={this.state.status} location={this.state.location} />
      </div>
    );
  }
});

module.exports = NavBar;
