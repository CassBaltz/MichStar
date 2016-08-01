const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const Link = require('react-router').Link;
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const ReviewItem = require('./restaurant_review_item');
const ReviewForm = require('./review_form');
const ReactDOM = require('react-dom');
const Modal = require('react-modal');

const appElement = document.getElementById("content");

const customStyles = {
  overlay : {
    position          : 'fixed',
    top               : 0,
    left              : 0,
    right             : 0,
    bottom            : 0,
    backgroundColor   : 'rgba(255, 255, 255, 0.75)'
  },
  content : {
    position                   : 'absolute',
    top                        : '10%',
    left                       : '10%',
    right                      : '10%',
    bottom                     : '10%',
    background                 : '#fff',
    WebkitOverflowScrolling    : 'touch',
    outline                    : 'none',
    padding                    : '20px'

  }
};

const RestaurantReviews = React.createClass({
  getInitialState: function () {
    return {modalIsOpen: false};
  },

  openModal: function() {
    if (SessionStore.isUserLoggedIn()) {
      this.setState({modalIsOpen: true});
    } else {
      $("#error-alert").removeClass("hidden");
    }
  },

  closeModal: function() {
    this.setState({modalIsOpen: false});
  },

  componentWillMount: function () {
    Modal.setAppElement(document.body);
  },

  saveLocation: function(e) {
    e.preventDefault();
    SessionStore.setRestaurantId(this.props.restaurant.id);
  },

  render: function() {
    let reviews;
    if (Object.keys(this.props.restaurant).length === 0) {
      reviews = <div>No Reviews</div>;
    } else {
      reviews = this.props.restaurant.reviews.map((review, idx) => {
        return <ReviewItem key={idx} review={review} />
      })
    }

    return (
      <div>
        <div className="restaurant-header">
          <div onClick={this.openModal} className="review-button"><h2>Leave Review</h2></div>
          <Modal
            isOpen={this.state.modalIsOpen}
            onAfterOpen={this.afterOpenModal}
            onRequestClose={this.closeModal}
            style={customStyles}>
          <ReviewForm closeModal={this.closeModal} restaurantId={this.props.restaurant.id} restaurantName={this.props.restaurant.name} />
          </Modal>
        </div>
        <div id="error-alert" className="error hidden">You Must Be Logged In To Write A Review <span onClick={this.saveLocation}>[<Link to="/login">Login</Link>]</span></div>
        <div className="review-box">
          {reviews}
        </div>
      </div>
    );
  }
});


module.exports = RestaurantReviews;
