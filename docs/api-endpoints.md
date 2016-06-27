# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

### Users

- `GET /users/new`
- `GET /users/:userId`
- `POST /users`
- `PATCH /users`

### Session

- `GET /session/new`
- `POST /session`
- `DELETE /session`

### About
- `GET /about`

### History (Michelin Star History)
- `GET /history`

### Contact
- `GET /contact`

## JSON API

### Restaurants (CURRENT VERSION HAS NO RESTAURANT CREATION)

- `GET /api/restaurants`
  - Notes index/search
  - Index autopopulates when search bar is clicked
  - accepts pagination params (if I get there)
  - can search by genre (if I get there)
- `GET /api/restaurants/:restaurantId`


### Reservations

- `GET /api/restaurants/:restaurantId/reservation_options`
  - sort through available vs unavailable depending on day.
- `POST /api/reservations`
- `GET /api/reservations`
  - sort through using reservation list and current user id
- `DELETE /api/reservations`
  - cancel a reservation

### Reviews

- A note's tags will be included in the note show template
- `GET /api/reviews`
  - filter in controller for only reviews pertaining to the restaurant in question
- `POST /api/reviews`
  - if note doesn't already exist, it will be created
- `DELETE /api/reviews`: remove tag from note by
  name
