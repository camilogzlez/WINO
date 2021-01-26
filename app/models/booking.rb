class Booking < ApplicationRecord
  belongs_to :client, foreign_key: "user_id", class_name: "User"
  belongs_to :wine_experience

end
