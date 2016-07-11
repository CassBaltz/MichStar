class Reservation < ActiveRecord::Base
  validates :reservation_option_id, :user_id, presence: true

  belongs_to :reservation_option,
  class_name: :ReservationOption,
  primary_key: :id,
  foreign_key: :reservation_option_id

  has_one :restaurant, through: :reservation_option, source: :restaurant

  belongs_to :user,
  class_name: :User,
  primary_key: :id,
  foreign_key: :user_id

end
