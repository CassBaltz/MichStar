const AppDispatcher = require('../dispatcher/dispatcher.js');
const Store = require('flux/utils').Store;
const RestaurantConstants = require('../constants/restaurant_constants');

const RestaurantStore = new Store(AppDispatcher);

let _restaurants = {};

RestaurantStore.allRestaurants = function () {
  return Object.keys(_restaurants).map(key => _restaurants[key]);
};

function resetRestaurants (restaurants) {
  _restaurants = {};
  restaurants.forEach((restaurant) => {
    _restaurants[restaurant.id] = restaurant;
  });
};

function updateRestaurants (restaurant) {
  _restaurants[restaurant.id] = restaurant;
};

function updateReview(review) {
  _restaurants[review["rest_id"]].reviews.push(review);
};

RestaurantStore.find = function(id) {
  return _restaurants[id];
};

RestaurantStore.__onDispatch = function (payload) {
  switch (payload.actionType) {
    case RestaurantConstants.RECEIVE_RESTAURANTS:
    resetRestaurants(payload.restaurants);
    RestaurantStore.__emitChange();
    break;

    case RestaurantConstants.UPDATE_REVIEWS:
    updateReview(payload.reviewData);
    RestaurantStore.__emitChange();
    break;

    case RestaurantConstants.RECEIVE_RESTAURANT:
    updateRestaurants(payload.restaurant);
    RestaurantStore.__emitChange();
    break;
  }
};

module.exports = RestaurantStore;
