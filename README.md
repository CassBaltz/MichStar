# Michstar

[Heroku link](https://michstarapp.herokuapp.com)

## Minimum Viable Product

Michstar is a web application inspired by OpenTable for all the 2 and 3 Michelin star restaurants located in San Francisco (2016 awards).  By the end of Week 9, this app will, at a minimum, satisfy the following criteria:

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
- [ ] Restaurant Information (Ratings, Reviews, Description)
  - [ ] Smooth, bug-free navigation
  - [ ] Adequate seed data to demonstrate the site's features
  - [ ] Adequate CSS styling
- [ ] User History (Favorites, Restaurants Visited, Reviews)
  - [ ] Smooth, bug-free navigation
  - [ ] Adequate seed data to demonstrate the site's features
  - [ ] Adequate CSS styling

Bonus

- [ ] Custom URL
- [ ] Create Restaurant
  - [ ] Ability for a restaurant owner to enter information and assign reservation options on the site
- [ ] Michelin Star (viaMichelin) api integration
  - [ ] Use the api provided by the [michelin guide](http://dev.viamichelin.com/guides-michelin-js-en.html) to grab data for the about the guides section.
- [ ] User stars
 - [ ] Provide users with three stars they can award to any restaurant they have visited through the app and seems worthy. If the user wants to give a fourth star, he or she will be asked which restaurant to take a star from. In other words, create a top three for each user.

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
- [ ] get something to show on Heroku relating to my page before I start working
- [ ] set-up all necessary javascript files
- [ ] create `User` model
- [ ] create `Session` controller
- [ ] front end authentication
- [ ] user signup/signin pages
- [ ] build nav bar
- [ ] redirect to index after sign in
- [ ] preliminary styling for the auth form

### Phase 2: Restaurant Model and Database Seeding (1.5 days, W1 Th 12pm)

**Objective:** Build the Restaurant model and seed the database

- [ ] create `restaurant` model
- [ ] create `reservation_options` model
- [ ] seed the database with all 2 & 3 star restaurants in San Francisco (not sure if I will use the Michelin API or do it by hand yet)
- [ ] Read API for restaurant AJAX
- [ ] jBuilder views for Restaurants#show and Restaurant#index
- [ ] setup `APIUtil` to interact with the Restaurant API
- [ ] begin setup for flux loop
- [ ] figure out remote photo hosting for background and restaurant pictures.

### Phase 3: Restaurant Flux Architecture and Router (1.5 days, W1 F 6pm)

**Objective:** All restaurant related components other than submitting a reservation should be working by the end of today

- [ ] integrate the flux loop with skeleton files
- [ ] integrate React Router
- [ ] get preliminary google map integration working and filled with restaurants in DB using flux loop

### Phase 4: Start Styling (0.5 days, W2 M 12pm)

**Objective:** Existing pages will look good

- [ ] use the weekend to clean up code and get all existing components styled
- [ ] placeholder div styled for Restaurant reservation section
- [ ] create a basic style guide
- [ ] position elements on the page
- [ ] add basic colors & styles
- [ ] incorporate footer components (About, Contact, MichelinStar)

### Phase 5: Reservation Components (1 day, W2 Tu 12pm)

**Objective:** Allow only signed in customers to make a reservation at a restaurant. Update databases accordingly and have listeners in customer and restaurant components reflect these changes.

- [ ] build the reservation placement interface (customer submitting reservation)
- [ ] style the reservation placement interface (customer submitting reservation)
- [ ] customer reservations component interface (past reservations in one color, pending reservations in another color)
- [ ] email functionality when a reservation is placed (send to me if guest, send to user if signed in separately)

### Phase 6: User Profile Components (2 days, W2 Th 12pm)

**Objective:** Build out pages for customer -- this includes current reservations, visited restaurants, and a review/rating form for restaurants.

- [ ] new components for restaurants visited index
- [ ] new components for restaurant review form
- [ ] new components for restaurant review index
- [ ] style all user profile components and make them look good

### Phase 7: Touch-up (1.5 days, W2 Fr 6pm)

**objective:** Add Finishing Touches

- [ ] fix bugs and update styling
- [ ] add bonus features if time allows


[phase-one]: (docs/phases/phase1.md)
[phase-two]: (docs/phases/phase2.md)
[phase-three]: (docs/phases/phase3.md)
[phase-four]: (docs/phases/phase4.md)
[phase-five]: (docs/phases/phase5.md)
