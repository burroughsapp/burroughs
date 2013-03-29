class Existence < ActiveRecord::Base
  belongs_to :location
  belongs_to :establishment
  attr_accessible :description, :end_year, :start_year, :location_id

  delegate :name, to: :establishment, prefix: true
  delegate :name, to: :location, prefix: true

  scope :by_existence_years, lambda { order("start_year, end_year") }
end
