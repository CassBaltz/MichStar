# Flux Cycles

Flux loops are organized by data type. Under each data type, there may
be sub-categories, and each action is listed with the sequence of events
that result from its invocation, ending with the API or store. Finally,
store listeners are listed at the end.

You should be able to use this document trace an **action** starting
with where it was invoked, through the **API**/**store** involved, and
finally to the **components** that update as a result. This is important
because once you start implementing your flux loops, that's precisely
what you'll need to do.


## Restaurant Cycles

### Restaurant API Request Actions

* `fetchAllRestaurants`
  0. invoked from `RestaurantsIndex` `didMount`/`willReceiveProps`
  0. `GET /api/restaurants` is called.
  0. `receiveAllRestaurants` is set as the callback.

* `fetchSingleRestaurant`
  0. invoked from `RestaurantIndexItem` `didMount`/`willReceiveProps`
  0. `GET /api/restaurants/:restaurantId` is called.
  0. `receiveSingleRestaurant` is set as the callback.

### Restaurant API Response Actions

* `receiveAllRestaurants`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants` and emits change.

* `receiveSingleRestaurant`
  0. invoked from an API callback.
  0. `Restaurant` store updates `_restaurants[id]` and emits change.

### Store Listeners

* `RestaurantsIndex` component listens to `Restaurant` store.
* `RestaurantsIndexItem` component listens to `Restaurant` store.


## Reservations Cycles

### User API Request Actions

* `fetchAllReservationOptions`
  0. invoked from `ReservationsIndex` based on restaurant showing `didMount`/`willReceiveProps`
  0. `GET /api/restaurants/:restaurantId/reservationOptions` is called.
  0. `receiveAllReservations` is set as the callback.

* `createReservation`
  0. invoked from new `reservation` button `onClick`
  0. `POST /api/restaurants/:restaurantId/reservationOptions` is called.
  0. `receiveSingleReservation` is set as the callback

* `destroyNotebook`
  0. invoked from delete notebook button `onClick`
  0. `DELETE /api/restaurants/:restaurantId/reservationOptions` is called.
  0. `removeReservation` is set as the callback.

### Notebooks API Response Actions

* `receiveAllReservationOptions`
  0. invoked from an API callback.
  0. `Reservations` store updates `_reservations` and `_reservationOptions` then emits change.

* `receiveSingleReservation`
  0. invoked from an API callback.
  0. `Reservation` store updates `_reservations` and emits change.

* `removeReservation`
  0. invoked from an API callback.
  0. `Reservation` store removes `_reservations[id]` then updates `reservationOptions` and emits change.

### Store Listeners

* `ReservationIndex` component listens to `Reservation` store.
* `ReservationOptionsIndex` component listens to `Reservation` store.

## Review Cycles

* `fetchRestaurantReviews`
  0. invoked from `RestaurantShowItem` `componentDidMount`
  0. `GET /api/restaurants/:restaurantId/reviews` is called
  0. `receiveReviews` is set as the callback.

* `receiveReviews`
  0. invoked from an API callback.
  0. `Reviews` store updates `_reviews` and emits change.

* `removeReviews`
  0. invoked from `userReviewsItem` `onClick` when review was actually written by the current user.

### Store Listeners

* `ReviewIndex` component listens to `Review` store.
