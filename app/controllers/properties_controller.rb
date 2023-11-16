class PropertiesController < ApplicationController
  def index
    if params[:category]
      @properties = Property.select{ |property| property.category ==  params[:category] }
    else
      @properties = Property.all
    end
  end

  def new
    @bookings = Boooking.find(params[:booking_id])
    @property = Property.new
  end

  def create
    @bookings = Boooking.find(params[:booking_id])
    @property = Property.new(list_params)
    @bookings.list = @property
    if @property.save
      # redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @property = Property.find(params[:id])
    @booking = Booking.new
  end
end
