# Phase 2: Flux Architecture and Note CRUD (2 days)

## Rails
### Models
Restaurant
Reservation Options

### Controllers
Restaurant Controller (index, show)

### Views

## Flux
### Views (React Components)

### Stores
* Restaurant
* ReservationOptions

### Actions
* ApiRestaurantActions.receiveAllRestaurants -> triggered by ApiUtil
* ApiRestaurantActions.receiveSingleRestaurant
* ApiReservationOptionsActions.fetchReservationOptions
* RestaurantActions.fetchAllRestaurants -> triggers ApiUtil
* RestaurantActions.fetchSingleRestaurant
* RestaurantActions.fetchReservationOptions

### ApiUtil
* ApiUtil.fetchAllRestaurants
* ApiUtil.fetchSingleRestaurant
* ApiUtil.fetchReservationOptions

## Gems/Libraries
* Remote photo hosting via CDN
