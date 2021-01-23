class WineExperienceController < ApplicationController
  before_action :experience_by_params_id, only: [:show, :edit]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @wine_experiences = WineExperience.all
  end

  def show
  end

  def new
    @wine_experience = Experience.new()
  end

  def create
    wine_experience = Experience.new(wine_experience_params)
  end

  def edit

  end

  private

  def experience_by_params_id
    @wine_experience = WineExperience.find(params[:id])
  end
  

  def wine_experience_params
    params.require(:experience).permit(:title, :description, :date, :price, :user)
  end

end
