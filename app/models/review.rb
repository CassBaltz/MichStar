class Review < ActiveRecord::Base
  validates :user_id, :rest_id, :content, :rating, presence: true

  belongs_to :user

  belongs_to :restaurant,
  class_name: :Restaurant,
  primary_key: :id,
  foreign_key: :rest_id

  def build_review
    reviewer_name = User.find(self.user_id).name
    {id: self.id, name: reviewer_name, content: self.content, rating: self.rating, rest_id: self.rest_id}
  end
end
