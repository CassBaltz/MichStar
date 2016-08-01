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
    $("#two-star").removeClass("clicked");
    $("#one-star").addClass("clicked");
    $("#three-star").removeClass("clicked");
  },

  twoStar: function(e) {
    e.preventDefault();
    this.setState({rating: 2});
    $("#two-star").addClass("clicked");
    $("#one-star").removeClass("clicked");
    $("#three-star").removeClass("clicked");
  },

  threeStar: function(e) {
    e.preventDefault();
    this.setState({rating: 3});
    $("#two-star").removeClass("clicked");
    $("#one-star").removeClass("clicked");
    $("#three-star").addClass("clicked");
  },

  closeForm: function(e) {
    this.props.closeModal();
  },

  handleSubmit: function(e) {
    e.preventDefault();
    if (this.state.rating === null || this.state.content === "") {
      this.setState({content: "You must have a review and rating to submit"});
    } else {
      UserActions.postReview({content: this.state.content, rest_id: parseInt(this.props.restaurantId), user_id: SessionStore.currentUser().id, rating: this.state.rating});
      this.setState({content: ''})
      $("#two-star").removeClass("clicked");
      $("#one-star").removeClass("clicked");
      $("#three-star").removeClass("clicked");

      this.props.closeModal();
    }
  },

  updateContent: function(e) {
    this.setState({content: e.target.value});
  },

  render: function() {
    return(
      <div className="review-form">
        <h3 onClick={this.closeForm} className="close-button">Close</h3>
				<form className="form-text" onSubmit={this.handleSubmit}>
	        <div className="form-h">
            <h2><i className="material-icons md-48">perm_identity</i> {SessionStore.currentUser().name} | {this.props.restaurantName}</h2>
					</div>
					<label className="form-label">Review</label>
					<textarea
            placeholder="Leave a review..." value={this.state.content}
            onChange={this.updateContent}
						className="review-input" />
          <div className="input-block">
            <div id="one-star" onClick={this.oneStar}>✩</div>
            <div id="two-star"onClick={this.twoStar}>✩✩</div>
            <div id="three-star" onClick={this.threeStar}>✩✩✩</div>
          </div>

					<div className="button-wrapper">
						<button type="submit" disabled={this.state.buttonDisable} className="form-submit" type="submit">Leave Review</button>
					</div>
				</form>
			</div>
    )
  }
});

module.exports = ReviewForm;
