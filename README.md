# MichStar

[Live MichStar](https://michstarapp.herokuapp.com)

MichStar is a web application inspired by OpenTable for all the Michelin star restaurants located around San Francisco (2016 awards). MichStar was built using Ruby on Rails for the backend data management and routing actions. The rest of the application uses the JavaScript React library to offer a responsive, single page application that uses Ajax for database correspondence and the flux architecture system for front-end component and data management.

## Reservation Filtering
Users are able to browse and choose restaurants from a google maps integration showing all "participating" restaurants. Selecting from the map then takes them to a restaurant page where they can learn more about the particular restaurant of interest or search through that restaurant's available reservations and filter by date and/or table size.

```Ruby
def show
  @restaurant = Restaurant.find(params[:id])
  @reviews = @restaurant.build_reviews

  @reservation_options = ReservationOption.where('reservation_time > ? AND reserved = ? AND rest_id = ?', Time.now, false, params[:id]).order("reservation_time ASC").limit(400)
  if (params[:date]) && (params[:date] != "")
    @reservation_options = @reservation_options.select{ |r_o| r_o.reservation_time.to_date.to_s == params[:date] }
  end

  if (params[:seats]) && (params[:seats] != "")
    @reservation_options = @reservation_options.select{ |r_o| r_o.table_size == params[:seats].to_i }
  end
end
```

Filtering happens in the rails controller which queries the database and then selects through relevant data. The front-end RestaurantStore then updates with the returned filtered ruby results which were previously converted to json objects with the jbuilder view template for that restaurant's show page. The store emits a change callback to the "RestaurantReservations" component that will then re-render due to a state reset, thus rendering only the ReservationOptions that fit the search parameters. A reservation can then be placed directly from the page and the user will be redirected to her or his profile page. If this was a production application, there would likely be an action mailer call to send a confirmation email to both the user and restaurant email accounts.

## Reviews
Additionally, a prospective diner can read reviews from each of the participating restaurants and submit his or her own opinions on his or her dining experience at a particular establishment. However, a browsing diner is not permitted to write a review on a restaurant unless he or she is signed into MichStar's platform.

## Front-end Authentication
This brings me to the next feature implemented in MichStar. Users are able to sign-in and register sessions with their browser using a combination of back-end ruby code (for setting/storing password digests and session tokens), while JavaScript maintains constant access to the current user, or lack thereof, through its session store, which is included in any relevant component that would need to know user status.

## General Usability
For the purposes of demonstration, reservation availability was mocked in the database using a bunch of loops and reviews were seeded from yelp to provide a more realistic experience.  

## Future Implementation
If I were to continue this project, I would likely want to implement a navigation search bar that could filter through large swaths of text related to each restaurant returning that restaurant and its associated data (e.g., customer review excerpt, that restaurant's Michelin review, or perhaps the restaurant category). This seems like the most interesting and useful feature for my project.
