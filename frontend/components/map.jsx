const React = require("react");
const ReactDOM = require("react-dom");
const RestaurantActions = require("../actions/restaurant_actions");
const RestaurantStore = require('../stores/restaurant_store');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;

var marker, self, linkPath, currentRestaurant, markerIcon, clicked, map;

clicked = false

const RestaurantMap = React.createClass({
  getInitialState () {
    return ({mapHeader: null});
  },

  componentDidMount(){
    RestaurantStore.addListener(this.updateRestaurants);
    const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: {lat: 37.867853, lng: -122.001649}, // this is SF
      zoom: 9,
      styles: [
        {"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}
      ]
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
    map = this.map;
    map.addListener('click', function(e) {
      map.panTo(e.latLng);
    });
  },

  updateHeader(marker){
    if (clicked) {
      map.panTo(marker.getPosition());
      if (map.getZoom() < 12) {
        map.setZoom(12)
      }
    }
    currentRestaurant = RestaurantStore.find(marker.id);
    this.setState({mapHeader: currentRestaurant})
  },

  updateRestaurants() {
    const restaurants = RestaurantStore.allRestaurants();
    for (let i = 0; i < restaurants.length; i++) {
      markerIcon = restaurants[i]['stars'] === 2 ? "assets/silver_star.png" : "assets/gold_star.png";
      linkPath = restaurants[i]['id'];
      marker = new google.maps.Marker({
        position: {lat: restaurants[i]['lat'], lng: restaurants[i]['lon']},
        map: this.map,
        id: restaurants[i]['id'],
        icon: markerIcon
      });

      self = this;

      google.maps.event.addListener(marker, 'click', function() {
        clicked = true;
        self.updateHeader(this);
      });

      google.maps.event.addListener(marker, 'mouseover', function() {
        if (!clicked) {
          self.updateHeader(this);
        }
      });

      marker.setMap(this.map);
    };
  },

  changePage: function(e) {
    e.preventDefault();
    hashHistory.push(`restaurants/${this.state.mapHeader.id}`)
  },

  resetMap: function(e) {
    e.preventDefault();
    map.panTo({lat: 37.867853, lng: -122.001649});
    map.setZoom(9);
    clicked = false;
  },

  render() {

    let mapHeader, restaurant, stars;

    if (this.state.mapHeader === null) {
      mapHeader = <div className="start-header">
                    <h3>Browse Restaurants</h3>
                  </div>
    } else {
      restaurant = this.state.mapHeader
      stars = "✩".repeat(restaurant.stars)
      mapHeader = <div className="map-overlay">
                    <h3 onClick={this.changePage} className="rest-head-name">{restaurant.name}</h3>
                    <div>
                      <h3 className="rest-head-stars">{stars}</h3>
                      <h3 className="rest-head-stars">{restaurant.cuisine}</h3>
                      <h3 className="rest-head-stars">{stars}</h3>
                    </div>
                    <div className="overlay-info">
                      <h5 id="address"><i className="material-icons md-18">phone</i> {restaurant.phone}</h5>
                      <h5><i className="material-icons md-18">location_searching</i> {restaurant.address}</h5>
                    </div>
                    <div className="overlay-action">
                      <h5 onClick={this.resetMap}>Reset Map</h5>
                      <h5 onClick={this.changePage}>Visit</h5>
                    </div>
                  </div>
    }

    return (
      <div class="map-div">
        {mapHeader}
        <div id="map" ref="map"></div>
      </div>
    );
  }
});

module.exports = RestaurantMap;
