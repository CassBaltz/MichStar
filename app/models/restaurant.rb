class Restaurant < ActiveRecord::Base
  validates :name, :mich_review, :head_chef, :stars, :cuisine, :website, :lat, :lon, :phone, :address, presence: true
end
