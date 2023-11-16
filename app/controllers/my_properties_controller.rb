class MyPropertiesController < ApplicationController
  def index
    @bookings = current_user.booking_requests
  end
end
