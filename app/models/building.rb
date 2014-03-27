class Building < ActiveRecord::Base
  attr_accessible :description, :end_year, :name, :start_year

  has_many :building_locations
  has_many :locations, through: :building_locations
  has_many :existences, through: :locations
  has_many :sources, as: :sourceable
  has_many :artifacts, as: :artifactable

  validates :name, presence: true

  scope :by_name, lambda { order('name') }
  scope :by_existence_years, lambda { order("start_year, end_year") }

  def fullname
    name + year_range
  end

  private

  def year_range
    range = ''
    if start_year or end_year
      range += ' ('
      if start_year
        range += start_year.to_s
      else
        range += '?'
      end

      if end_year
        range += "-#{end_year.to_s}"
      end
      range += ')'
    end
    range
  end
end
