class MyPropertiesController < ApplicationController
  def index
    @bookings_pending = current_user.booking_requests.pending
    @bookings_accepted = current_user.booking_requests.accepted.future

    @past_bookings = current_user.booking_requests.past
  end
end
