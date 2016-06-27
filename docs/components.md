## Component Hierarchy

**Bolded** components are associated with routes.

(:exclamation: Remember, the bolded components are created by their
associated routes, so the nesting of your bolded components must
_**exactly**_ match the nesting of your routes.)

* **App**
  * RestaurantsIndex
    * SearchComponent
    * MapSearchComponent
    * RestaurantIndexItem
  * **Restaurant**
    * ReservationItem
    * DescriptionItem
    * **NoteDetail**
  * UserProfile
    * VisitedRestaurantsIndex
    * RestaurantReviewForm
    * UserReservationsItem




## Routes

* **component:** `App` **path:** `/`
  * **component:** `RestaurantsIndex` **path:** index
  * **component:** `RestaurantsIndex` **path:** `restaurants`
    * **component:** `RestaurantIndexItem` **path:** `restaurants/:restaurantId`
  * **component:** `UserProfile` **path:** `users/:userId`
    * **component:** `Visited Restaurants` **path:** `users/:userId/restaurants`
    * **component:** `UserReservationsItem` **path:** `users/:userId/reservations`
