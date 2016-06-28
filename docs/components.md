## Component Hierarchy

**Bolded** components are associated with routes.

(:exclamation: Remember, the bolded components are created by their
associated routes, so the nesting of your bolded components must
_**exactly**_ match the nesting of your routes.)

* **App**
  * **RestaurantsIndex**
    * SearchComponent
    * BrowseComponent (maybe browse by genre or price; would need to add these features to the database if the feature is added)
    * MapSearchComponent
    * RestaurantIndexItem
    * **Restaurant**
      * ReservationsIndex
      * ShowItem
  * **Auth**
  * **UserProfile**
    * Settings
    * VisitedRestaurantsIndex
    * RestaurantReviewForm
    * UserReservationsItem
  * **About**
  * **Contact**
  * **MichelinStar**

## Routes

* **component:** `App` **path:** `/`
  * **component:** `RestaurantsIndex` **path:** index
  * **component:** `RestaurantsIndex` **path:** `restaurants`
    * **component:** `Restaurant` **path:** `restaurants/:restaurantId`
  * **component:** `UserProfile` **path:** `users/:userId`
  * **component:** `Auth` **path:** `/users/new`
  * **component:** `About` **path:** `/about`
  * **component:** `Contact` **path:** `/contact`
  * **component:** `MichelinStarComponent` **path:** `/michelin_star`
