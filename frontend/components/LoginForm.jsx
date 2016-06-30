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

    let navLink, formHeader;
    if (this.formType() === "login") {
      navLink = <Link to="/signup">sign up instead</Link>;
			formHeader = "Log In";
    } else {
      navLink = <Link to="/login">log in instead</Link>;
			formHeader = "Sign Up";
    }


		return (
			<div className="login-form">
				<form className="form-fieldset">
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

							<div>
								<button className="form-submit" onSubmit={this.handleSubmit} type="submit">Submit</button>
							</div>
					</div>
				</form>
			</div>
		);
	}
});

module.exports = LoginForm;
