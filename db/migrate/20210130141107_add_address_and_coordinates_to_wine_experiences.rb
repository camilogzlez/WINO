class AddAddressAndCoordinatesToWineExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :wine_experiences, :address, :string
    add_column :wine_experiences, :latitude, :float
    add_column :wine_experiences, :longitude, :float
  end
end
