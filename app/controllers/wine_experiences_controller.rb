require 'date'

class WineExperiencesController < ApplicationController
  before_action :experience_by_params_id, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  

  def index
    # @wine_experiences = WineExperience.all

    if params[:query].present?
      # @wine_experiences = WineExperience.where("address ILIKE ? or date ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
      sql_query = " \
        wine_experiences.address @@ :query \
        OR wine_experiences.title @@ :query \ 
      "

      if current_user.owner
        @wine_experiences = policy_scope(WineExperience).where(user_id: current_user.id).where(sql_query, query: "%#{params[:query]}%")
      else
        @wine_experiences = policy_scope(WineExperience).where(sql_query, query: "%#{params[:query]}%")
      end

    else
      if current_user.owner
        @wine_experiences = policy_scope(WineExperience).where(user_id: current_user.id)
      else
        @wine_experiences = policy_scope(WineExperience)
      end
    end

    @markers = @wine_experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude
      }
    end
  end

  def show
    authorize @wine_experience
    @markers = [{
      lat: @wine_experience.latitude,
      lng: @wine_experience.longitude,
    }]

    if current_user.owner
      @collected = Booking.all.where(wine_experience_id: @wine_experience.id).count
      @collected *= @wine_experience.price
      
      # @users = @wine_experience.bookings.users
    end
  end

  def new
    @wine_experience = WineExperience.new()
    authorize @wine_experience
  end

  def create
    @wine_experience = WineExperience.new(wine_experience_params)
    @wine_experience.owner = current_user
    authorize @wine_experience
    if @wine_experience.save
      redirect_to wine_experience_path(@wine_experience)
    else
      render :new
    end
  end
  

  def update
    @wine_experience.update(wine_experience_params)
    @wine_experience.price = @wine_experience.price.to_i
    raise
    if @wine_experience.save!
      redirect_to wine_experience_index_path
    else
      render :edit
    end
  end

  def edit
    authorize @wine_experience
  end

  def destroy
    @wine_experience.destroy
    authorize @wine_experience
    redirect_to wine_experiences_path
  end

  def update
    @wine_experience.update(wine_experience_params)
    redirect_to wine_experiences_path
  end
  

  private

  def experience_by_params_id
    @wine_experience = WineExperience.find(params[:id])
  end
  

  def wine_experience_params
    params.require(:wine_experience).permit(:title, :description, :date, :price, :address, photos: [])
  end


end
