class Existence < ActiveRecord::Base
  attr_accessible :description, :end_year, :start_year, :location_id, :address

  belongs_to :establishment
  has_many :existence_locations
  has_many :locations, through: :existence_locations
  has_many :sources, as: :sourceable

  delegate :name, to: :establishment, prefix: true
  delegate :name, to: :location, prefix: true

  scope :by_existence_years, lambda { order("start_year, end_year") }
end
