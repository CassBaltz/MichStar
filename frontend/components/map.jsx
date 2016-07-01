const React = require("react");
const ReactDOM = require("react-dom");
const RestaurantActions = require("../actions/restaurant_actions");
const RestaurantStore = require('../stores/restaurant_store');


const RestaurantMap = React.createClass({

  componentDidMount(){
      const mapDOMNode = ReactDOM.findDOMNode(this.refs.map);
      const mapOptions = {
        center: {lat: 37.7758, lng: -122.435}, // this is SF
        zoom: 10
      };
      this.map = new google.maps.Map(mapDOMNode, mapOptions);
    },

  render() {
    return ( <div id="map" ref="map">Map</div>);
  }
});

module.exports = RestaurantMap;
