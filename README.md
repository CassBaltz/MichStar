# Michstar

[Heroku link][https://michstar.herokuapp.com] **Note:** This should be a link to your production site

[heroku]: http://www.herokuapp.com

## Minimum Viable Product

Michstar is a web application inspired by OpenTable for all the 2 and 3 Michelin star restaurants located in San Fancisco (2016 awards).  By the end of Week 9, this app will, at a minimum, satisfy the following criteria:

- [ ] Hosting on Heroku
- [ ] New account creation, login, and guest/demo login
- [ ] A production README, replacing this README
- [ ] Restaurants Directory
  - [ ] Smooth, bug-free navigation
  - [ ] Adequate seed data to demonstrate the site's features
  - [ ] Adequate CSS styling
- [ ] Reservation System
  - [ ] Smooth, bug-free navigation
  - [ ] Adequate seed data to demonstrate the site's features
  - [ ] Adequate CSS styling
- [ ] Restaurant Information (Ratings/Reviews/Description)
  - [ ] Smooth, bug-free navigation
  - [ ] Adequate seed data to demonstrate the site's features
  - [ ] Adequate CSS styling
- [ ] User History (Favorites, Restaurants Visited)
  - [ ] Smooth, bug-free navigation
  - [ ] Adequate seed data to demonstrate the site's features
  - [ ] Adequate CSS styling

## Design Docs
* [View Wireframes][views]
* [React Components][components]
* [Flux Cycles][flux-cycles]
* [API endpoints][api-endpoints]
* [DB schema][schema]

[views]: docs/views.md
[components]: docs/components.md
[flux-cycles]: docs/flux-cycles.md
[api-endpoints]: docs/api-endpoints.md
[schema]: docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (1 day, W1 Tu 6pm)

**Objective:** Functioning rails project with Authentication

- [ ] create new project
- [ ] create `User` model
- [ ] authentication
- [ ] user signup/signin pages
- [ ] blank landing page after signin

### Phase 2: Restaurant Model and Database Seeding (1.5 days, W1 Th 12pm)

**Objective:** Build the Restaurant model and seed the database

- [ ] create `restaurant` model
- [ ] create `reservation_options` model
- [ ] seed the database with all 2 & 3 star restaurants in San Francisco
- [ ] CRUD API for restaurant
- [ ] jBuilder views for restaurant
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.
- [ ] get preliminary google map integration working

### Phase 3: Restaurant Flux Architecture and Router (1.5 days, W1 F 6pm)

**Objective:** All restaurant related components other than submitting a reservation should be working by the end of today

- [ ] setup the flux loop with skeleton files
- [ ] setup React Router

### Phase 4: Start Styling (0.5 days, W2 M 12pm)

**Objective:** Existing pages (including signup/signin) will look good.

- [ ] use the weekend to clean up code and get all existing components styled
- [ ] create a basic style guide
- [ ] position elements on the page
- [ ] add basic colors & styles

### Phase 5: Reservation Components (1 day, W2 Tu 12pm)

**Objective:** Allow only signed in customers to make a reservation at a restaurant. Update databases accordingly and have listeners in customer and restaurant components reflect these changes.

- [ ] build the reservation system interface
- [ ] style the reservation system interface

### Phase 6: User Profile Components (2 days, W2 Th 12pm)

**Objective:** Build out pages for customer -- this includes current reservations, visited restaurants, and a review/rating form for restaurants.

- [ ] new components for review form
- [ ] new components for restaurantsVisitedIndex
- [ ] new components for restaurant reviews

### Phase 7: Touch-up (1.5 days, W2 Fr 6pm)

**objective:** Add Finishing Touches

- [ ] fix bugs and update styling


[phase-one]: docs/phases/phase1.md
[phase-two]: docs/phases/phase2.md
[phase-three]: docs/phases/phase3.md
[phase-four]: docs/phases/phase4.md
[phase-five]: docs/phases/phase5.md
