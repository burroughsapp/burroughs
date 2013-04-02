class Admin::BuildingsController < ApplicationController
  layout 'admin'

  admin_assistant_for Building
end