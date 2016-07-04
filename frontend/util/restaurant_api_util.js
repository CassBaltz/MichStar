const RestaurantApiUtil = {
	fetchRestaurants: function (callback) {
    $.ajax({
      url: 'api/restaurants',
      method: 'GET',
      dataType: 'json',
      success: function(restaurants) {
        callback(restaurants);
      }
    });
  },

  getRestaurant: function (id, callback) {
		$.ajax({
      url: `api/restaurants/${id}`,
      method: 'GET',
      success: function (restaurant) {
        callback(restaurant);
      }
    });
  }
};

module.exports = RestaurantApiUtil;
