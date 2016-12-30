class Trip < ApplicationRecord
  include Sluggable
  
  has_many :trip_destinations
  has_many :destinations, through: :trip_destinations

  has_many :trip_users
  has_many :users, through: :trip_users
end
