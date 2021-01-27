class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.new
    @wine_experience = WineExperience.find(params[:wine_experience_id])
    @booking.wine_experience = @wine_experience
    @booking.client = current_user
    if @booking.save
      redirect_to wine_experiences_path
    else
      render 'bookings/show'
    end
  end

   private

  def review_params
    # params.require(:booking).permit(,)
  end
end
