class TripDestination < ApplicationRecord
  belongs_to :trip
  belongs_to :destination

  validates :order, uniqueness: true

end
