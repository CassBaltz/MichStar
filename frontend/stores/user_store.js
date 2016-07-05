"use strict";

const AppDispatcher = require('../dispatcher/dispatcher.js');
const Store = require('flux/utils').Store;
const RestaurantConstants = require('../constants/restaurant_constants');

const UserStore = new Store(AppDispatcher);

let _reviews = {};

UserStore.findAllReviews = () => {
  return Object.keys(_reviews).map(key => {
  return _reviews[key]
  })
};

UserStore.findReview = (id) => {
  return _reviews[id];
};

function updateReview (review) {
  _reviews[review.id] = review;
};

function deleteReview(reviewId) {
  delete _reviews[reviewId];
};

function updateReviews (userData) {
  debugger
  _reviews = {};
  let reviews = userData['reviews'];
  reviews.forEach(review => {
    _reviews[review.id] = review;
  })
};

UserStore.__onDispatch = function (payload) {
  switch(payload.actionType) {
    case RestaurantConstants.UPDATE_REVIEWS:
      updateReviews(payload.userData);
      UserStore.__emitChange();
      break;
    case RestaurantConstants.UPDATE_REVIEW:
    	updateReview(payload.review);
      UserStore.__emitChange();
      break;
    case RestaurantConstants.REMOVE_REVIEW:
      deleteReview(payload.reviewId);
      UserStore.__emitChange();
      break;
  }
}

module.exports = UserStore;
