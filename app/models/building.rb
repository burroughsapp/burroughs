class Building < ActiveRecord::Base
  attr_accessible :description, :end_year, :name, :start_year

  has_many :locations
  has_many :existences, through: :locations

  validates :name, presence: true

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
