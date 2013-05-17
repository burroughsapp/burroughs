class Artifact < ActiveRecord::Base
  attr_accessible :description, :name, :file

  has_attached_file :file, styles: { medium: '300x300>', thumb: '100x100>' }
end
