# Phase 3: Restaurant flux-cycles

## Rails
### Models

### Controllers
* Api::RestaurantsController (show, index)

### Views
* restaurants/index.json.jbuilder
* restaurants/show.json.jbuilder

## Flux
### Stores
* Restaurant

### Components
* RestaurantIndex
* RestaurantIndexItem
* RestaurantShow

### Actions
* ApiActions.receiveAllRestaurants -> triggered by ApiUtil
* ApiActions.receiveSingleRestaurant
* RestaurantActions.fetchAllRestaurants -> triggers ApiUtil
* RestaurantActions.fetchSingleRestaurant

### ApiUtil
* ApiUtil.fetchAllRestaurants
* ApiUtil.fetchSingleRestaurant

## Gems/Libraries
