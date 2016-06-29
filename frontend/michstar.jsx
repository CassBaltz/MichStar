const React = require('react');
const ReactDOM = require('react-dom');
const UserActions = require('./actions/user_actions');
const App = require('./components/app.jsx');

document.addEventListener('DOMContentLoaded', function(){
  if(window.currentUser){
    UserActions.receiveCurrentUser(currentUser);
  }
  const root = document.getElementById('content');
  ReactDOM.render(<App />, root);
});
