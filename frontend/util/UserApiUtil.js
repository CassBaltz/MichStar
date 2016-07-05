const UserApiUtil = {
	postReview: function (review, callback) {
    $.ajax({
      url: 'api/reviews',
      method: 'POST',
      dataType: 'json',
      success: function(review) {
        callback(review);
      }
    });
  },

  deleteReview: function (id, callback) {
		$.ajax({
      url: `api/reviews/${id}`,
      method: 'DELETE',
      success: function (id) {
        callback(id);
      }
    });
  },

  getReviews: function (callback) {
		$.ajax({
      url: `api/user/profile`,
      method: 'GET',
      success: function(userData) {
				callback(userData);
      }
    });
  },

  editReview: function (review, callback) {
    $.ajax({
      url: `api/reviews/${id}`,
      method: 'UPDATE',
      success: function(review) {
        callback(review)
      }
    });
  },
};

module.exports = UserApiUtil;
