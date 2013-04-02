class Admin::EstablishmentsController < ApplicationController
  layout 'admin'

  admin_assistant_for Establishment
end