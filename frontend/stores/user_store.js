"use strict";

const AppDispatcher = require('../dispatcher/dispatcher.js');
const Store = require('flux/utils').Store;
const UserConstants = require('../constants/user_constants');
const RestaurantConstants = require('../constants/restaurant_constants');

const UserStore = new Store(AppDispatcher);

let _user = {};
let _reviews = {};
let _reservations = {};

UserStore.getUser = () => _user

UserStore.findAllReviews = () => {
  return Object.keys(_reviews).map(key => {
  return _reviews[key]
  })
};

UserStore.findAllReservations = () => {
  return Object.keys(_reservations).map(key => {
  return _reservations[key]
  })
};

UserStore.findReview = (id) => {
  return _reviews[id];
};

UserStore.findReservation = (id) => {
  return _reservations[id]
};

function updateReview (review) {
  _reviews[review.id] = review;
};

function updateReservation (reservation) {
  _reservations[reservation.id] = reservation;
};

function deleteReview(reviewId) {
  delete _reviews[reviewId];
};

function updateUser(user) {
  _user = user;
};

function deleteReservation(reservationId) {
  delete _reservations[reservationId]
};

function updateReviews (userData) {
  _reviews = {};
  debugger
  let reviews = userData['reviews'];
  reviews.forEach(review => {
    _reviews[review.id] = review;
  })
};

function updateReservations (userData) {
  _reservations = {};
  let reservations = userData['reservations'];
  reservations.forEach(reservation => {
    _reservation[review.id] = reservation;
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
    case RestaurantConstants.UPDATE_RESERVATIONS:
      updateReservations(payload.userData);
      UserStore.__emitChange();
      break;
    case UserConstants.UPDATE_USER:
      updateUser(payload.user);
      UserStore.__emitChange();
      break;
  }
}

module.exports = UserStore;
