class BuildingLocation < ActiveRecord::Base
  attr_accessible :building_id, :location_id

  belongs_to :building
  belongs_to :location

  validates :building_id, presence: true
  validates :location_id, presence: true
end
