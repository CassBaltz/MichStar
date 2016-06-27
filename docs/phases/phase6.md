# Phase 6: User Profile Components

## Rails
### Models
* Review
* Ratings

### Controllers
* Api::ReviewController (create, destroy, index, show, update)

### Views
* restaurant/:restaurantId/reviews/index.json.jbuilder
* user/:userId/reviews/index.json.jbuilder
* reviews/show.json.jbuilder

## Flux
### Views (React Components)
* RestaurantReviews
  - RestaurantReviewItem
* UserReviews
  - UserReviewItem

### Stores
* Reviews

### Actions
* ApiActions.receiveAllReviews -> triggered by ApiUtil
* ApiActions.receiveSingleReview
* ApiActions.deleteReview
* ReviewActions.fetchAllReviews -> triggers ApiUtil
* ReviewActions.fetchSingleReview
* ReviewActions.createReview
* ReviewActions.updateReview
* ReviewActions.destroyReview

### ApiUtil
* ApiUtil.fetchAllReviews
* ApiUtil.fetchSingleReview
* ApiUtil.createReview
* ApiUtil.updateReview
* ApiUtil.destroyReview

## Gems/Libraries
