class PropertiesController < ApplicationController
  def show
    @property = Property.find(params[:id])
    @booking = Booking.new
  end
end
