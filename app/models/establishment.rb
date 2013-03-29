class Establishment < ActiveRecord::Base
  attr_accessible :description, :end_year, :name, :start_year

  has_many :existences
  has_many :locations, through: :existences

  validates :name, presence: true
end
