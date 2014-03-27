class Establishment < ActiveRecord::Base
  attr_accessible :description, :end_year, :name, :start_year

  has_many :existences
  has_many :locations, through: :existences
  has_many :sources, as: :sourceable
  has_many :artifacts, as: :artifactable

  validates :name, presence: true

  scope :by_name, lambda { order("name") }
end
