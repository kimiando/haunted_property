class BookingsController < ApplicationController
  def create
    @property = Property.find(params[:property_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.property = @property
    if @booking.save
      flash[:notice] = "Booking created!"
      redirect_to my_bookings_path(@my_bookings)
    else
      render "properties/show", status: :unprocessable_entity
    end
  end

  # bookings_controller.rb
  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      # redirect_to # up to you...
    else
      # render # where was the booking update form?
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
