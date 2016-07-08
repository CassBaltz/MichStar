const React = require("react");
const ReactDOM = require("react-dom");
const RestaurantActions = require("../actions/restaurant_actions");
const RestaurantStore = require('../stores/restaurant_store');
const Link = require('react-router').Link;
const ReactRouter = require('react-router');
const hashHistory = ReactRouter.hashHistory;

var marker, self, linkPath, currentRestaurant;

const RestaurantMap = React.createClass({
  getInitialState () {
    return ({mapHeader: "Click A Tag to Find A Restaurant", linkId: ""});
  },

  componentDidMount(){
    RestaurantStore.addListener(this.updateRestaurants);
    const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: {lat: 37.7758, lng: -122.435}, // this is SF
      zoom: 10,
      styles: [
        {"featureType":"landscape","stylers":[{"saturation":-100},{"lightness":65},{"visibility":"on"}]},{"featureType":"poi","stylers":[{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]},{"featureType":"road.highway","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"road.arterial","stylers":[{"saturation":-100},{"lightness":30},{"visibility":"on"}]},{"featureType":"road.local","stylers":[{"saturation":-100},{"lightness":40},{"visibility":"on"}]},{"featureType":"transit","stylers":[{"saturation":-100},{"visibility":"simplified"}]},{"featureType":"administrative.province","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":-25},{"saturation":-100}]},{"featureType":"water","elementType":"geometry","stylers":[{"hue":"#ffff00"},{"lightness":-25},{"saturation":-97}]}
      ]
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
  },

  updateHeader(marker){
    currentRestaurant = RestaurantStore.find(marker.id);
    this.setState({mapHeader: "Visit " + currentRestaurant.name, linkId: marker.id})
  },

  updateRestaurants() {
    const restaurants = RestaurantStore.allRestaurants();
    for (let i = 0; i < restaurants.length; i++) {
      linkPath = restaurants[i]['id'];
      marker = new google.maps.Marker({
        position: {lat: restaurants[i]['lat'], lng: restaurants[i]['lon']},
        map: this.map,
        id: restaurants[i]['id']
      });

      self = this;

      google.maps.event.addListener(marker, 'click', function() {
        self.updateHeader(this);
      });

      marker.setMap(this.map);
    };
  },

  changePage: function(e) {
    e.preventDefault
    hashHistory.push(`restaurants/${this.state.linkId}`)
  },

  render() {

    return (
      <div class="map-div">
        <h3 className="map-overlay" onClick={this.changePage}>{this.state.mapHeader}</h3>
        <div id="map" ref="map"></div>
      </div>
    );
  }
});

module.exports = RestaurantMap;
