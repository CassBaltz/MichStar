json.extract! @user, :id, :name, :email
json.reviews do
  json.array! @reviews, :id, :content, :rating, :rest_id
end

json.reservations do
  json.array! @reservations, :id, :user_id, :reservation_option_id
end
