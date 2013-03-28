class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude

  validates :address, presence: true
end
