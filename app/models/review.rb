class Review < ActiveRecord::Base
  validates :user_id, :rest_id, :content, :rating, presence: true

  belongs_to :user

  belongs_to :restaurant,
  class_name: :Restaurant,
  primary_key: :id,
  foreign_key: :rest_id

end
