class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end
  
  def create
    @booking = Booking.new
    authorize @booking

    @wine_experience = WineExperience.find(params[:wine_experience_id])
    @booking.wine_experience = @wine_experience
    @booking.client = current_user
    if @booking.save
      redirect_to wine_experiences_path
    else
      render 'bookings/alert'
    end
  end

  def destroy
    @booking = Booking.find(params[:wine_experience_id])
    @booking.destroy
    authorize @booking
    redirect_to wine_experiences_path
  end

end
