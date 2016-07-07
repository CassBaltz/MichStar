const AppDispatcher = require('../dispatcher/dispatcher');
const RestaurantConstants = require('../constants/restaurant_constants');
const hashHistory = require('react-router').hashHistory;
const UserApiUtil = require('../util/UserApiUtil');

const UserActions = {

  postReview: function (review) {
    UserApiUtil.postReview(review, UserActions.updateReview)
  },

  deleteReview: function (reviewId) {
    UserApiUtil.deleteReview(review, UserActions.removeReview)
  },

  editReview: function (review) {
    UserApiUtil.editReview(review, UserActions.updateReview)
  },

  getReviews: function () {
    UserApiUtil.getReviews(UserActions.updateReviews)
  },

  createReservation: function(reservation) {
    UserApiUtil.createReservation(reservation, update)
  },

  updateReview: function(review) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.UPDATE_REVIEW,
      review: review
    });
  },

  updateReviews: function(userData) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.UPDATE_REVIEWS,
      userData: userData
    });
  },

  removeReview: function(reviewId) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.REMOVE_REVIEW,
      reviewId: reviewId
    });
  }
};

module.exports = UserActions;
