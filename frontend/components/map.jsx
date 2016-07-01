const React = require("react");
const ReactDOM = require("react-dom");
const RestaurantActions = require("../actions/restaurant_actions");
const RestaurantStore = require('../stores/restaurant_store');

var marker;
const RestaurantMap = React.createClass({

  componentDidMount(){
    RestaurantStore.addListener(this.updateRestaurants);
    const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: {lat: 37.7758, lng: -122.435}, // this is SF
      zoom: 10
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
  },

  updateRestaurants() {
    const restaurants = RestaurantStore.allRestaurants();
    for (let i = 0; i < restaurants.length; i++) {
      marker = new google.maps.Marker({
        position: {lat: restaurants[i]['lat'], lng: restaurants[i]['lon']},
        map: this.map,
        title: restaurants[i]['name']
      });
      marker.setMap(this.map);
    };
  },

  render() {
    return ( <div id="map" ref="map">Map</div>);
  }
});

module.exports = RestaurantMap;
