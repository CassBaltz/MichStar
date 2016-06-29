const React = require('react');
const ReactDOM = require('react-dom');
const UserActions = require('./actions/user_actions');
const AuthComponent = require('./components/AuthComponent.jsx');

document.addEventListener('DOMContentLoaded', function(){
  if(window.currentUser){
    UserActions.receiveCurrentUser(currentUser);
  }
  const root = document.getElementById('content');
  ReactDOM.render(<AuthComponent />, root);
});
