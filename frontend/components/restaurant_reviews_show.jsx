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
    return {restaurant: {}, modalIsOpen: false, error: false};
  },

  openModal: function() {
    if (SessionStore.isUserLoggedIn()) {
      this.setState({modalIsOpen: true});
    } else {
      this.displayError();
    }
  },

  displayError: function() {
    this.updateError();
  },

  updateError: function() {
    if (this.state.error) {
      this.setState({error: false})
    } else {
      this.setState({error: true});
    }
  },

  afterOpenModal: function() {
    this.refs.subtitle.style.color = '#f00';
  },

  closeModal: function() {
    this.setState({modalIsOpen: false});
  },

  componentDidMount: function () {
    this.listener = RestaurantStore.addListener(this.updateRestaurant);
    RestaurantActions.getRestaurant(parseInt(this.props.params.restaurantId));
  },

  componentWillMount: function () {
    Modal.setAppElement(document.body);
  },

  updateRestaurant: function () {
    let restaurant = RestaurantStore.find(parseInt(this.props.params.restaurantId))
    this.setState({restaurant: restaurant});
  },

  componentWillUnmount: function() {
    this.listener.remove();
  },

  render: function() {
    let reviews;
    if (Object.keys(this.state.restaurant).length === 0) {
      reviews = <div>No Reviews</div>;
    } else {
      reviews = this.state.restaurant.reviews.map((review, idx) => {
        return <ReviewItem key={idx} review={review} />
      })
    }

    var errorMessage = this.state.error ?
    <div className="error">You Must Be Logged In To Write a Review</div> : null;
    let hashPath = `/restaurants/${this.state.restaurant.id}`
    return (

        <div className="review-box">
          <div className="restaurant-header">
            <div onClick={this.openModal} className="review-button"><h2>Leave Review +</h2></div>
            <Modal
              isOpen={this.state.modalIsOpen}
              onAfterOpen={this.afterOpenModal}
              onRequestClose={this.closeModal}
              style={customStyles}>
            <ReviewForm closeModal={this.closeModal} restaurantId={this.state.restaurant.id} />
            </Modal>
            <div className="restaurant-name">
              <h2>{this.state.restaurant.name}Reviews</h2>
            </div>
            <div className="link-back"><Link to={hashPath}>BACK TO {this.state.restaurant.name}</Link></div>
            {errorMessage}
          </div>
          {reviews}
        </div>
    );
  }
});


module.exports = RestaurantReviews;
