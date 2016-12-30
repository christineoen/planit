class User < ApplicationRecord
  include Sluggable
  
  has_many :trip_users
  has_many :trips, through: :trip_users

end
