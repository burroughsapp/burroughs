class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :building_id

  belongs_to :building
  has_many :existences
  has_many :establishments, through: :existences

  validates :address, presence: true

  alias_attribute :name, :address
end
