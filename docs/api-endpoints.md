# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Restaurants (CURRENT VERSION HAS NO RESTAURANT CREATION)

- `GET /api/restaurants.json.jbuilder`
- `GET /api/restaurants/show.json.jbuilder`

### Reservations

- `GET /api/reservations/restaurant_index.json.jbuilder`
- `GET /api/restaurants/user_index.json.jbuilder`
- `POST /api/reservations/create(controller only)`
- `DELETE /api/reservations/:id delete(controller only)`

### Reservation Options

- `GET /api/reservation_options.json.jbuilder`

### Users

- `GET /api/users/show.json.jbuilder`

### Reviews

- `GET /api/reviews.json.jbuilder` (need one in restaurant and one in user context, not sure if I should do two endpoints or controller actions or one and filter by request)
- `POST /api/reviews.json.jbuilder`
- `UPDATE /api/reviews.json.jbuilder`
- `DELETE /api/reviews/:id json.jbuilder delete(controller only)`
