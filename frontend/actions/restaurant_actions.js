const AppDispatcher = require('../dispatcher/dispatcher');
const RestaurantConstants = require('../constants/restaurant_constants');
const RestaurantApiUtil = require('../util/restaurant_api_util');
const ErrorActions = require('./error_actions');

const RestaurantActions = {
  fetchRestaurants: function () {
    RestaurantApiUtil.fetchRestaurants(RestaurantActions.receiveAllRestaurants);
  },

  getRestaurant: function (id, search={}) {
    RestaurantApiUtil.getRestaurant(id, RestaurantActions.receiveRestaurant, search);
  },

  receiveRestaurant: function (restaurant) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.RECEIVE_RESTAURANT,
      restaurant: restaurant
    });
  },

  receiveAllRestaurants: function (restaurants) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.RECEIVE_RESTAURANTS,
      restaurants: restaurants
    });
  }
};

module.exports = RestaurantActions;
