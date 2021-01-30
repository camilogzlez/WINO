class PagesController < ApplicationController
  layout "home"
  def home
    @few_wine_experience = WineExperience.last(8)
  end
end
