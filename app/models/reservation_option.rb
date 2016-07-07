class ReservationOption < ActiveRecord::Base

  belongs_to :restaurant,
  class_name: :Restaurant,
  primary_key: :id,
  foreign_key: :rest_id

  has_one :reservation,
  class_name: :Reservation,
  primary_key: :id,
  foreign_key: :reservation_option_id

end
