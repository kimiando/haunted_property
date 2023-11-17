class PropertiesController < ApplicationController
  def index
    if params[:category]
      @properties = Property.select { |property| property.category ==  params[:category] }
    else
      @properties = Property.all
    end
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user

    if @property.save
      flash[:notice] = "Property created!"
      redirect_to my_properties_path
    else
      flash[:alert] = "Property creation failed."
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @property = Property.find(params[:id])
    @booking = Booking.new
  end

  private

  def property_params
    params.require(:property).permit(:name, :description, :category, :location, :price, :photo)
  end
end
