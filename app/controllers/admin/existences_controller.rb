class Admin::ExistencesController < ApplicationController
  layout 'admin'

  admin_assistant_for Existence
end