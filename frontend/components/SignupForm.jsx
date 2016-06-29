var React = require("react");
var UserActions = require("../actions/user_actions");
var UserStore = require("../stores/user_store");

var SignupForm = React.createClass({
	getInitialState: function(){
		return {
			currentUser: UserStore.currentUser(),
			userErrors: UserStore.errors(),
			name: "",
      email: "",
			password: ""
		};
	},

	componentDidMount: function(){
		UserStore.addListener(this._updateUser);
		UserActions.fetchCurrentUser();
	},

	_updateUser: function(){
		this.setState({
			currentUser: UserStore.currentUser(),
			userErrors: UserStore.errors()
		});
	},

  _setForm: function(e){
		this.setState({form: e.currentTarget.value});
	},

  updateEmail: function(e) {
    e.preventDefault();
    this.setState({email: e.target.value});
  },

  updatePassword: function(e) {
    e.preventDefault();
    this.setState({password: e.target.value});
  },

  updateName: function(e) {
    e.preventDefault();
    this.setState({name: e.target.value});
  },

	handleSubmit: function(e){
		e.preventDefault();
		UserActions.signup({
      name: this.state.name,
      email: this.state.email,
			password: this.state.password
		});
	},
	logout: function(e){
		e.preventDefault();
		UserActions.logout();
	},
	greeting: function(){
		if (!this.state.currentUser) {
			return;
		}

		return (
			<div>
				<h2>Hi, {this.state.currentUser.name}!</h2>
				<input type="submit" value="logout" onClick={this.logout}/>
			</div>
		);
	},

	errors: function(){
		if (!this.state.userErrors){
			return;
		}
		var self = this;
		return (<ul>
		{
			Object.keys(this.state.userErrors).map(function(key, i){
				return (<li key={i}>{self.state.userErrors[key]}</li>);
			})
		}
		</ul>);
	},
	form: function(){
		if (this.state.currentUser) {
			return;
		}
		return(
      <form onSubmit={this.handleSubmit}>
        <section>
          <label> Name:
            <input type="text" onChange={this.updateName} value={this.state.name}/>
          </label>

          <label> Email:
            <input type="text" onChange={this.updateEmail} value={this.state.email}/>
          </label>

          <label> Password:
            <input type="password" onChange={this.updatePassword} value={this.state.password}/>
          </label>
        </section>

        <input type="Submit" value="Sign Up"/>
      </form>
		);
	},

	render: function(){
		return (
			<div id="signup-form">
				{this.greeting()}
				{this.errors()}
				{this.form()}
			</div>
		);
	}
});

module.exports = SignupForm;
