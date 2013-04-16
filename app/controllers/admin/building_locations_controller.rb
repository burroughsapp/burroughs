class Admin::BuildingLocationsController < ApplicationController
  layout 'admin'

  admin_assistant_for BuildingLocation
end