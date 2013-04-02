class Admin::LocationsController < ApplicationController
  layout 'admin'

  admin_assistant_for Location
end