class CreateWineExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_experiences do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
