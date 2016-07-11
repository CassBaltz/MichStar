json.extract! @user, :id, :name, :email
json.reviews do
  json.array! @reviews, :rest_name, :date, :rating, :content
end

json.reservations do
  json.array! @reservations, :rest_name, :rest_id, :rest_website, :rest_address, :rest_phone, :date, :time, :day, :res_table_size
end
