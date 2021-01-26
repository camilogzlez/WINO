require 'date'

class WineExperiencesController < ApplicationController
  before_action :experience_by_params_id, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @wine_experiences = WineExperience.all
  end

  def show
  end

  def new
    @wine_experience = WineExperience.new()
  end

  def create
    @wine_experience = WineExperience.new(wine_experience_params)
    @wine_experience.owner = current_user
    @wine_experience.date = DateTime.now
    if @wine_experience.save
      redirect_to wine_experience_path(@wine_experience)
    else
      render :new
    end
  end
  

  def update
    @wine_experience.update(wine_experience_params)
    @wine_experience.price = @wine_experience.price.to_i
    # raise
    if @wine_experience.save!
      redirect_to wine_experience_index_path
    else
      render :edit
    end
  end

  def edit

  end
  

  private

  def experience_by_params_id
    @wine_experience = WineExperience.find(params[:id])
  end
  

  def wine_experience_params
    params.require(:wine_experience).permit(:title, :description, :date, :price, :user)
  end

end
