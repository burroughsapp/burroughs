class Source < ActiveRecord::Base
  attr_accessible :content

  belongs_to :sourceable, polymorphic: true
end
