# Phase 6: User Profile Components

## Rails
### Models
* Review
* Ratings

### Controllers
* Api::ReviewController (create, destroy, index, show, update)

### Views
* restaurants/:restaurantId
* users/:userId
* reviews/index.json.jbuilder
  * assume this will have different output with regards to whether it is called from restaurant or user component (will need two different fetch methods);

## Flux
### Views (React Components)
* RestaurantReviews
  - RestaurantReviewItem
* UserReviews
  - UserReviewItem

### Stores
* Reviews

### Actions
* ReviewActions.fetchAllReviews -> triggers ApiUtil
* ReviewActions.fetchSingleReview
* ReviewActions.createReview
* ReviewActions.updateReview
* ReviewActions.destroyReview

### ApiUtil
* ApiUtil::Reviews.fetchAllUserReviews
* ApiUtil::Reviews.fetchAllRestaurantReviews
* ApiUtil::Reviews.fetchSingleReview
* ApiUtil::Reviews.createReview
* ApiUtil::Reviews.updateReview
* ApiUtil::Reviews.destroyReview

## Gems/Libraries
