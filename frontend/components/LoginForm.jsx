var React = require("react");
const SessionActions = require('../actions/session_actions');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ErrorStore = require('../stores/error_store');

const LoginForm = React.createClass({

	contextTypes: {
		router: React.PropTypes.object.isRequired
	},

	getInitialState: function(){
		return {
			name: "",
			email: "",
			password: ""
		};
	},

	componentDidMount: function(){
		this.errorListener = ErrorStore.addListener(this.forceUpdate.bind(this));
    this.sessionListener = SessionStore.addListener(this.redirectIfLoggedIn);
  },

	componentWillUnmount() {
    this.errorListener.remove();
    this.sessionListener.remove();
  },

	redirectIfLoggedIn() {
    if (SessionStore.isUserLoggedIn()) {
      this.context.router.push("/");
    }
  },

	handleSubmit(e) {
		e.preventDefault();

		const formData = {
			name: this.state.name,
			email: this.state.email,
			password: this.state.password
		};

    if (this.props.location.pathname === "/login") {
      SessionActions.logIn({email: formData.email, password: formData.password});
    } else {
      SessionActions.signUp(formData);
    }
	},

  fieldErrors(field) {
    const errors = ErrorStore.formErrors(this.formType());

    if (!errors[field]) { return; }

    const messages = errors[field].map( (errorMsg, i) => {
      return <li key={ i }>{ errorMsg }</li>;
    });

    return <ul>{ messages }</ul>;
  },

  formType() {
    return this.props.location.pathname.slice(1);
  },

  update(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

	render() {

    let navLink;
    if (this.formType() === "login") {
      navLink = <Link to="/signup">sign up instead</Link>;
    } else {
      navLink = <Link to="/login">log in instead</Link>;
    }


		return (
			<div className="login-form-container">
				<form onSubmit={this.handleSubmit} className="login-form-box">
	        Welcome to MichStar
					<br/>
					Please { this.formType() } or { navLink }

	        { this.fieldErrors("base") }

					{this.formType() === "signup" ?
						<div className="login-form">
			        <br />
							<label>Name:
			          { this.fieldErrors("name") }
								<input type="text"
			            value={this.state.name}
			            onChange={this.update("name")}
									className="login-input" />
							</label>
						</div> : <div></div>}

					<div className="login-form">
		        <br />
						<label> Email:
		          { this.fieldErrors("email") }
							<input type="text"
		            value={this.state.email}
		            onChange={this.update("email")}
								className="login-input" />
						</label>

		        <br />
						<label> Password:
		          { this.fieldErrors("password") }
		          <input type="password"
		            value={this.state.password}
		            onChange={this.update("password")}
								className="login-input" />
						</label>

		        <br />
						<input type="submit" value="Submit" />
					</div>
				</form>
			</div>
		);
	}
});

module.exports = LoginForm;
