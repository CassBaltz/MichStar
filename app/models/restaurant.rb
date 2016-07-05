class Restaurant < ActiveRecord::Base
  validates :name, :mich_review, :head_chef, :stars, :cuisine, :website, :lat, :lon, :phone, :address, presence: true

  has_many :reviews,
  class_name: :Review,
  primary_key: :id,
  foreign_key: :rest_id

  has_many :reviewers, through: :reviews, source: :user

  def build_reviews
    reviews = []
    self.reviews.each do |review|
      reviewer_name = User.find(review.user_id).name
      reviews.push({id: review.id, name: reviewer_name, content: review.content, rating: review.rating})
    end
    reviews
  end

end
