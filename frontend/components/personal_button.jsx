const React = require('react');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;
const SessionActions = require('../actions/session_actions')

let linkText, linkPath, personalClass;
const PersonalButton = React.createClass({
  getInitialState: function() {
    return ({text: "Login", linkPath: "/login", personalClass: "personal-link"});
  },

  componentWillReceiveProps: function(navProps) {
    if (navProps.status) {
      linkText = SessionStore.currentUser().name;
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

  signOut: function(e) {
    e.preventDefault();
    SessionActions.logOut();
  },

  render: function() {
    let profileSec;
    if (SessionStore.isUserLoggedIn()) {
      profileSec =  <div className="inner-profile-container">
                      <h3 onClick={this.update}  className={this.state.personalClass}>{this.state.text}</h3>
                      <h4 onClick={this.signOut} className={this.state.personalClass}>Sign Out</h4>
                    </div>
    } else {
      profileSec =  <div className="inner-profile-container">
                      <h3 onClick={this.update} className={this.state.personalClass}>{this.state.text}</h3>
                    </div>
    };

    return (
      <div className="profile-container">
        {profileSec}
      </div>

    );
  }
});

module.exports = PersonalButton;
