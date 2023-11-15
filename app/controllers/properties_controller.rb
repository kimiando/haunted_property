class PropertiesController < ApplicationController
  def index
    if params[:category]
      @properties = Property.select{ |property| property.category ==  params[:category] }
    else
      @properties = Property.all
    end
  end

  def show
    @property = Property.find(params[:id])
    @booking = Booking.new
  end
end
