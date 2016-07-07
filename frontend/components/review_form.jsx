const React = require("react");
const Link = require('react-router').Link;
const UserStore = require("../stores/user_store");
const SessionStore = require("../stores/session_store");
const UserActions = require('../actions/user_actions');
const ReviewItem = require('./restaurant_review_item');

let buttonDisable;

const ReviewForm = React.createClass({
  getInitialState: function () {
    if (SessionStore.isUserLoggedIn()) {
      buttonDisable = false;
    } else {
      buttonDisable = true;
    }
    return {content: "", buttonDisable: buttonDisable, rating: null, restaurant: ""}
  },

  oneStar: function(e) {
    e.preventDefault();
    this.setState({rating: 1});
  },

  twoStar: function(e) {
    e.preventDefault();
    this.setState({rating: 2});
  },

  threeStar: function(e) {
    e.preventDefault();
    this.setState({rating: 3});
  },

  handleSubmit: function(e) {
    e.preventDefault();
    UserActions.postReview({content: this.state.content, rest_id: parseInt(this.props.restaurantId), user_id: SessionStore.currentUser().id, rating: this.state.rating});
  },

  updateContent: function(e) {
    this.setState({content: e.target.value});
  },

  render: function() {
    return(
      <div className="login-form">
				<form className="form-fieldset" onSubmit={this.handleSubmit}>
	        <div className="form-header">
						<h2>Leave a Review</h2>
					</div>

				<div className="login-form">

						<label className="form-label">Review</label>
							<textarea
		            placeholder="Leave a comment (must be signed in)" value={this.state.content}
		            onChange={this.updateContent}
								className="login-input" />

              <ul className="input block">
                <li onClick={this.oneStar}>*</li>
                <li onClick={this.twoStar}>**</li>
                <li onClick={this.threeStar}>***</li>
              </ul>

						<div className="button-wrapper">
							<button type="submit" disabled={this.state.buttonDisable} className="form-submit" type="submit">Leave Review</button>
						</div>
					</div>
				</form>
			</div>
    )
  }
});

module.exports = ReviewForm;
