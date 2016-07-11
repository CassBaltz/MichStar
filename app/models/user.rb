class User < ActiveRecord::Base

include BCrypt

DAYS = ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"]

  validates :name, :email, :password_digest, :session_token, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}
  validates_format_of :email, :with => /.+@.+\..+/i
  validates :email, uniqueness: true
  after_initialize :ensure_session_token
  before_validation :ensure_session_token_uniqueness

  attr_reader :password

  has_many :reservations,
  class_name: :Reservation,
  primary_key: :id,
  foreign_key: :user_id

  has_many :reviews

  has_many :reserved_restaurants, through: :reservations, source: :restaurant

  has_many :reviewed_restaurants, through: :reviews, source: :restaurant



  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil unless user && user.valid_password?(password)
    user
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def valid_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
  ensure_session_token_uniqueness
    self.save!
    self.session_token
  end

  def build_reviews
    reviews = self.reviews
    reviews_ary = []
    reviews.each do |review|
    review_obj = {
        rest_name: review.restaurant.name,
        rating: review.rating,
        content: review.content,
        date: review.created_at.strftime("%m.%d.%y")
      }
      reviews_ary.push(review_obj)
    end
    reviews_ary
  end

  def build_reservations
    reservations = self.reservations
    reservation_ary = []
    reservations.each do |reservation|
      restaurant = reservation.restaurant
      reservation_option = reservation.reservation_option
      reservationItem = {
        rest_name: restaurant.name,
        rest_id: restaurant.id,
        rest_website: restaurant.website,
        rest_address: restaurant.address,
        rest_phone: restaurant.phone,
        date: reservation_option.reservation_time.strftime("%m.%d.%y"),
        time: reservation_option.reservation_time.strftime("%I:%M"),
        day: DAYS[reservation_option.reservation_time.wday],
        res_table_size: reservation_option.table_size
      }
      reservationItem[:time] = reservationItem[:time][1..-1] if reservationItem[:time][0] == "0"
      reservationItem[:date] = reservationItem[:date][1..-1] if reservationItem[:date][0] == "0"
      reservation_ary.push(reservationItem)
    end
    reservation_ary
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

  def ensure_session_token_uniqueness
    while User.find_by(session_token: self.session_token)
			self.session_token = new_session_token
		end
  end

  def parse_time
    {

    }



  end
end
