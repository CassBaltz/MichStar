var React = require("react");
var UserActions = require("../actions/user_actions");
var UserStore = require("../stores/user_store");

var LoginForm = React.createClass({
	getInitialState: function(){
		return {
			currentUser: UserStore.currentUser(),
			userErrors: UserStore.errors(),
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

	handleSubmit: function(e){
		e.preventDefault();
		UserActions.login({
			email: this.state.email,
			password: this.state.password
		});
	},
	logout: function(e){
		e.preventDefault();
		UserActions.logout();
	},

	updateEmail: function(e) {
		e.preventDefault();
		this.setState({email: e.target.value});
	},

	updatePassword: function(e) {
		e.preventDefault();
		this.setState({password: e.target.value});
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
						<label> Email:
							<input type="text" onChange={this.updateEmail} value={this.state.email}/>
						</label>

						<label> Password:
							<input type="password" onChange={this.updatePassword} value={this.state.password}/>
						</label>
					</section>

					<input type="Submit" value="Log In"/>
				</form>
		);
	},

	render: function(){
		return (
			<div id="login-form">
				{this.greeting()}
				{this.errors()}
				{this.form()}
			</div>
		);
	}
});

module.exports = LoginForm;
