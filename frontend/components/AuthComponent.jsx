const React = require("react");
const UserActions = require("../actions/user_actions");
const LoginForm = require('./LoginForm');
const SignupForm = require('./SignupForm');

const AuthComponent = React.createClass({
  componentDidMount(){

  },

  render(){
    return (
      <div>
        <h1>LoginForm</h1>
        <LoginForm/>
        <h1>SignupForm</h1>
        <SignupForm/>
      </div>
    );
  }
});

module.exports = AuthComponent;
