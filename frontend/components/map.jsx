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
    return ({mapHeader: "None Selected", linkId: ""});
  },

  componentDidMount(){
    RestaurantStore.addListener(this.updateRestaurants);
    const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: {lat: 37.7758, lng: -122.435}, // this is SF
      zoom: 8
    };
    this.map = new google.maps.Map(mapDOMNode, mapOptions);
  },

  updateHeader(marker){
    currentRestaurant = RestaurantStore.find(marker.id);
    this.setState({mapHeader: currentRestaurant.name, linkId: marker.id})
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
