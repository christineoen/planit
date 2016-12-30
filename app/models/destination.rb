class Destination < ApplicationRecord
  include Sluggable
  
  has_many :trip_destinations
  has_many :trips, through: :trip_destinations
end
