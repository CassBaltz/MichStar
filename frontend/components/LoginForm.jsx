const React = require("react");
const SessionActions = require('../actions/session_actions');
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const ErrorStore = require('../stores/error_store');
const ErrorActions = require('../actions/error_actions');

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

	componentWillMount: function() {
		ErrorActions.clearErrors();
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
			if (SessionStore.getRestaurantId() !== null) {
				let id = SessionStore.getRestaurantId();
				SessionStore.setRestaurantId(null);
				this.context.router.push(`/restaurants/${id}`);
			} else {
				this.context.router.push("/");
			}
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

	handleGuestLogin(e) {
		e.preventDefault();
		SessionActions.logIn({email: "guest@gmail.com", password: "password"});
	},

  fieldErrors(field) {

		const errors = ErrorStore.formErrors(this.formType());
    if (!errors[field]) { return; }

    const messages = errors[field].map( (errorMsg, i) => {
      return <li key={ i }>{ errorMsg }</li>;
    });

    return <ul className="text-center">{ messages }</ul>;
  },

  formType() {
    return this.props.location.pathname.slice(1);
  },

  update(property) {
    return (e) => this.setState({[property]: e.target.value});
  },

	removeErrors(e) {
		this.setState({
			name: "",
			email: "",
			password: ""
		});
		ErrorActions.clearErrors();
	},

	render() {
    let navLink, formHeader, buttonClass;
    if (this.formType() === "login") {
      navLink = <Link to="/signup" onClick={this.removeErrors}>Sign Up</Link>;
			formHeader = "Log In";
    } else {
      navLink = <Link to="/login" onClick={this.removeErrors}>Log In</Link>;
			formHeader = "Sign Up";
    }



		return (
			<div className="index-full-content">
				<div className="login-form">
					<form className="form-fieldset" onSubmit={this.handleSubmit}>
		        <div className="form-header">
							<h2>{ formHeader }</h2>
							<h4> { navLink } </h4>
						</div>

		        { this.fieldErrors("base") }

					<div className="login-form">

						{this.formType() === "signup" ?
							<div className="form-input-div"><label className="form-label">Name</label>
			          { this.fieldErrors("name") }
								<input type="text" placeholder="Name"
			            value={this.state.name}
			            onChange={this.update("name")}
									className="login-input" />
							 </div> : <div/>}

							<label className="form-label"> Email</label>
			          { this.fieldErrors("email") }
								<input type="text"
			            placeholder="Email" value={this.state.email}
			            onChange={this.update("email")}
									className="login-input" />

							<label className="form-label"> Password</label>
			          { this.fieldErrors("password") }
			          <input type="password"
									placeholder="Password"
			            value={this.state.password}
			            onChange={this.update("password")}
									className="login-input" />

							<div className="button-wrapper">
								<button onClick={this.handleGuestLogin} className="form-submit">Guest</button>
								<button className="form-submit" type="submit">Submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		);
	}
});

module.exports = LoginForm;
