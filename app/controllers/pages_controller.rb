class PagesController < ApplicationController
  layout "home"
  def home
    @wine_experiences = WineExperience.all
    @few_wine_experience = @wine_experiences[0...6]

    @markers = @wine_experiences.geocoded.map do |we|
      {
        lat: we.latitude,
        lng: we.longitude
      }
    end
  end
end
