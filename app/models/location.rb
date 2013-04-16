class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :building_id

  has_many :building_locations
  has_many :buildings, through: :building_locations
  has_many :existences
  has_many :establishments, through: :existences
  has_many :sources, as: :sourceable

  validates :address, presence: true

  alias_attribute :name, :address

  delegate :fullname, to: :building, prefix: true, allow_nil: true
end
