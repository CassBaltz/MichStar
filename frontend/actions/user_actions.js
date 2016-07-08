const AppDispatcher = require('../dispatcher/dispatcher');
const RestaurantConstants = require('../constants/restaurant_constants');
const hashHistory = require('react-router').hashHistory;
const UserApiUtil = require('../util/UserApiUtil');
const UserConstants = require('../constants/user_constants');

const UserActions = {

  postReview: function (review) {
    UserApiUtil.postReview(review, UserActions.updateReviews)
  },

  deleteReview: function (reviewId) {
    UserApiUtil.deleteReview(review, UserActions.updateUser)
  },

  editReview: function (review) {
    UserApiUtil.editReview(review, UserActions.updateUser)
  },

  getUser: function () {
    UserApiUtil.getUser(UserActions.updateUser)
  },

  createReservation: function(reservation) {
    UserApiUtil.createReservation(reservation, UserActions.updateUser)
  },

  updateUser: function(user) {
    AppDispatcher.dispatch({
      actionType: UserConstants.UPDATE_USER,
      user: user
    });
  },

  updateReviews: function(reviewData) {
    AppDispatcher.dispatch({
      actionType: RestaurantConstants.UPDATE_REVIEWS,
      reviewData: reviewData
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
