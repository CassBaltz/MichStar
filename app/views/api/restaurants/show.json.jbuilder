json.id @restaurant.id
json.name @restaurant.name
json.mich_review @restaurant.mich_review
json.head_chef @restaurant.head_chef
json.stars @restaurant.stars
json.cuisine @restaurant.cuisine
json.website @restaurant.website
json.address @restaurant.address
json.phone  @restaurant.phone
json.lat @restaurant.lat
json.lon @restaurant.lon
json.photo @restaurant.photo


json.reviews do
    json.array! @reviews
end
