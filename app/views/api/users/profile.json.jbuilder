json.extract! @user, :id, :name, :email
json.reviews do
  json.array! @reviews, :id, :content, :rating, :rest_id
end
