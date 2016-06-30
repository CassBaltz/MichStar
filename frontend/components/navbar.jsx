const React = require('react');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;


let hlStatus, plStatus, nameField;

const NavBar = React.createClass({
  getInitialState: function () {
    if (SessionStore.isUserLoggedIn()) {
      nameField = SessionStore.currentUser().name;
    } else {
      nameField = "Sign Up or Log In";
    }
    return {hlStatus: "home-link", plStatus: "personal-link", personalNav: nameField };
  },

  updateHlStatus: function (e) {
    e.preventDefault();
    this.setState({hlStatus: "home-link clicked", plStatus: "personal-link"});
    hashHistory.push("/");
  },

  updatePlStatus: function (e) {
    e.preventDefault();
    this.setState({hlStatus: "home-link", plStatus: "personal-link clicked"});
    hashHistory.push("/login");
  },


  render: function () {
    return (
      <div className="container">
        <h3 className={this.state.hlStatus} onClick={this.updateHlStatus}>Home</h3>
        <h3 className={this.state.plStatus} onClick={this.updatePlStatus}>Hello</h3>
      </div>
    );
  }
});

module.exports = NavBar;
