const React = require("react");
const RestaurantActions = require("../actions/restaurant_actions");
const SessionStore = require('../stores/session_store');
const RestaurantStore = require('../stores/restaurant_store');
const RestaurantShowItem = require('./restaurant_show_item');
const RestaurantReservations = require('./restaurant_reservations');
const RestaurantReviewsShow = require('./restaurant_reviews_show');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;

const RestaurantShow = React.createClass({
  getInitialState: function () {
    return {restaurant: {}, showing: "Home"};
  },

  componentDidMount: function () {
    this.listener = RestaurantStore.addListener(this.updateRestaurant);
    RestaurantActions.getRestaurant(parseInt(this.props.params.restaurantId));
  },

  updateRestaurant: function () {
    this.setState({restaurant: RestaurantStore.find(parseInt(this.props.params.restaurantId))});
  },

  componentWillUnmount: function() {
    this.listener.remove();
  },

  updateReservations: function (e) {
    if (SessionStore.isUserLoggedIn()) {
      this.setState({showing: "Reservations"})
      $("#second-link").addClass("tab");
      $("#second-link").siblings("h3").removeClass("tab");
      $('body').scrollTop(0);
    } else {
      $('#reservation-reminder').removeClass('hidden');
    }
  },

  updateHome: function (e) {
    this.setState({showing: "Home"});
    $("#first-link").addClass("tab");
    $("#first-link").siblings("h3").removeClass("tab");
    $('body').scrollTop(0);
  },

  updateReviews: function (e) {
    this.setState({showing: "Reviews"});
    $("#third-link").addClass("tab");
    $("#third-link").siblings("h3").removeClass("tab");
    $('body').scrollTop(0);
  },

  closeReminder: function () {
    $("#reservation-reminder").addClass("hidden");
  },

  toLogin: function () {
    SessionStore.setRestaurantId(this.state.restaurant.id)
    hashHistory.push('/login');
  },

  render: function() {
    let sub;

    if (this.state.showing === "Home") {
      sub = <RestaurantShowItem restaurant={this.state.restaurant} reviews={this.updateReviews}/>
    } else if (this.state.showing === "Reservations") {
      sub = <RestaurantReservations restaurant={this.state.restaurant} />
    } else {
      sub = <RestaurantReviewsShow restaurant={this.state.restaurant} />
    }

    var imgUrl = this.state.restaurant.photo

    var divStyle = {
    backgroundImage: 'url(' + imgUrl + ')',
    }

    return (
      <div className="restaurant-box">
        <div className="button-links">
            <h3 id="first-link" className="first tab" onClick={this.updateHome}>{this.state.restaurant.name} </h3>
            <h3 id="second-link" className="mid" onClick={this.updateReservations}>Reservations</h3>
            <h3 id="third-link" className="end" onClick={this.updateReviews}>Reviews</h3>
        </div>
        <div id="reservation-reminder" className="hidden">
          <h3>You Must Be Logged In To Make A Reservation <span onClick={this.toLogin}>[ Login ]</span></h3>
          <h3 className="close" onClick={this.closeReminder}>Close</h3>
        </div>
        <div className="header-div">
          <h1 className="restaurant-header">{"✩".repeat(this.state.restaurant.stars)}</h1>
          <h1 className="restaurant-header">{this.state.restaurant.name} {this.state.showing}</h1>
          <h1 className="restaurant-header">{"✩".repeat(this.state.restaurant.stars)}</h1>
        </div>
        {sub}
      </div>
    );
  }
})

module.exports = RestaurantShow;
