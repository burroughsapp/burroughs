class ExistenceLocation < ActiveRecord::Base
  belongs_to :existence
  belongs_to :location
  attr_accessible :existence_id, :location_id
end
