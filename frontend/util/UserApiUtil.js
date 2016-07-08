const UserApiUtil = {
	postReview: function (review, callback) {
    $.ajax({
      url: 'api/reviews',
      method: 'POST',
      dataType: 'json',
			data: {review},
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

  getUser: function (callback) {
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
      url: `api/reviews/${review.id}`,
      method: 'UPDATE',
      success: function(review) {
        callback(review)
      }
    });
  },

	createReservation: function(reservation, callback) {
		$.ajax({
			url: `api/reservations`,
			method: 'POST',
			data: {reservation: reservation},
			success: function(user) {
				callback(user);
			}
		});
	}
};

module.exports = UserApiUtil;
